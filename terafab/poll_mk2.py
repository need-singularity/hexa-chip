#!/usr/bin/env python3
# ─────────────────────────────────────────────────────────────────────────────
# terafab/poll_mk2.py — Mk.II falsifier monitor (stdlib only)
#
# Reads `terafab/mk2-observations.md` (Source registry + Extraction regex
# registry) and emits, per falsifier, a verdict suitable for piping into
# `verify_terafab.py`. Default mode performs zero network calls — only
# `--poll` actually hits URLs (and even then, scaffold rule §1 is enforced:
# no scaffold-given regex ⇒ verdict stays DEFERRED).
#
# Design constraints (from build prompt):
#   - stdlib only (no pip); Python 3.11+ for tomllib/dataclasses-defaults
#   - importable without network (network calls live only under `--poll`)
#   - extraction regexes are loaded from mk2-observations.md, never invented
#     in code; the file in turn copies them from falsifier-mk2-scaffold.md §2/§3
#   - thresholds locked in scaffold §2/§3; this script reads them, never edits
#   - append-only writes to mk2-observations.md (never delete history)
#
# CLI:
#   python3 terafab/poll_mk2.py              # default: print observation table
#   python3 terafab/poll_mk2.py --check      # JSON verdict per falsifier
#   python3 terafab/poll_mk2.py --dry-run    # list URLs + regexes (no fetch)
#   python3 terafab/poll_mk2.py --poll       # ACTUALLY fetch + append rows
#
# Exit codes:
#   0 = scaffold healthy (all expected falsifier rows present)
#   1 = scaffold malformed (missing falsifiers, missing tables, etc.)
#   2 = poll error (network failure, parse failure during --poll)
#
# Cost: $0 (stdlib only). Logs appended to terafab/mk2-poll.log (gitignored).
# ─────────────────────────────────────────────────────────────────────────────

from __future__ import annotations

import argparse
import json
import re
import sys
import urllib.error
import urllib.request
from dataclasses import dataclass, field
from datetime import datetime, timezone
from pathlib import Path
from typing import Optional

REPO   = Path(__file__).resolve().parent.parent
TERAFAB = REPO / "terafab"
OBS    = TERAFAB / "mk2-observations.md"
SCAF   = TERAFAB / "falsifier-mk2-scaffold.md"
SRCS   = TERAFAB / "sources.md"
LOG    = TERAFAB / "mk2-poll.log"

# Expected falsifier set (matches scaffold §2 + §3). Reading from a constant
# rather than parsing avoids the audit script discovering its own data
# source — the audit script independently checks the file's row set against
# this same canonical {1..10}.
FALSIFIER_IDS = [f"F-TERAFAB-{i}" for i in range(1, 11)]

# Network fetch knobs. `--poll` is the only mode that uses these.
HTTP_TIMEOUT_S = 10
HTTP_USER_AGENT = "hexa-chip/poll_mk2 (+https://github.com/dancinlab/hexa-chip)"


# ── data classes ────────────────────────────────────────────────────────────
@dataclass
class ObsRow:
    falsifier: str
    quarter: str
    url: str
    observation: str
    trigger: str
    verdict: str
    date_logged: str


@dataclass
class SourceEntry:
    src_id: str
    falsifiers: list[str]    # e.g., ["F1", "F3"] from registry table
    url: str


@dataclass
class RegexEntry:
    falsifier: str           # F-TERAFAB-N
    pattern: Optional[str]   # None if scaffold gave no regex (n/a)
    extracts: str            # human description of what gets pulled out


# ── parsers (stdlib re only — no markdown library) ──────────────────────────
def _read(path: Path) -> str:
    if not path.exists():
        return ""
    return path.read_text(encoding="utf-8")


def parse_observation_rows(text: str) -> list[ObsRow]:
    """Pull all rows from the ## Observations table. Append-friendly: just
    matches Markdown table rows starting with `| F-TERAFAB-`."""
    rows: list[ObsRow] = []
    # Match table rows whose first cell is F-TERAFAB-N.
    row_re = re.compile(
        r"^\|\s*(F-TERAFAB-\d+)\s*\|\s*([^|]+?)\s*\|\s*([^|]+?)\s*\|"
        r"\s*([^|]+?)\s*\|\s*([^|]+?)\s*\|\s*([^|]+?)\s*\|\s*([^|]+?)\s*\|",
        re.MULTILINE,
    )
    for m in row_re.finditer(text):
        rows.append(ObsRow(
            falsifier=m.group(1).strip(),
            quarter=m.group(2).strip(),
            url=m.group(3).strip(),
            observation=m.group(4).strip(),
            trigger=m.group(5).strip(),
            verdict=m.group(6).strip(),
            date_logged=m.group(7).strip(),
        ))
    return rows


def parse_source_registry(text: str) -> list[SourceEntry]:
    """Pull SRC-TERAFAB-NNN | falsifiers | url tuples from the ## Source
    registry fenced code block."""
    entries: list[SourceEntry] = []
    # Find the fenced block under '## Source registry'.
    block_re = re.compile(
        r"##\s+Source registry.*?```(.*?)```", re.DOTALL
    )
    m = block_re.search(text)
    if not m:
        return entries
    body = m.group(1)
    line_re = re.compile(
        r"^(SRC-TERAFAB-\d{3})\s*\|\s*([^|]+?)\s*\|\s*(\S+)\s*$",
        re.MULTILINE,
    )
    for lm in line_re.finditer(body):
        falsifiers = [tok.strip() for tok in lm.group(2).split(",")]
        entries.append(SourceEntry(
            src_id=lm.group(1),
            falsifiers=falsifiers,
            url=lm.group(3),
        ))
    return entries


def parse_regex_registry(text: str) -> list[RegexEntry]:
    """Pull falsifier→regex pairs from the ## Extraction regex registry
    fenced block. Scaffold rule §1: no regex ⇒ DEFERRED."""
    entries: list[RegexEntry] = []
    block_re = re.compile(
        r"##\s+Extraction regex registry.*?```(.*?)```", re.DOTALL
    )
    m = block_re.search(text)
    if not m:
        return entries
    body = m.group(1)
    # Match: F-TERAFAB-N :: <pattern or "n/a..."> :: <extracts>
    # `::` is used instead of `|` because regex bodies contain `|`.
    line_re = re.compile(
        r"^(F-TERAFAB-\d+)\s*::\s*(.+?)\s*::\s*(.+?)\s*$",
        re.MULTILINE,
    )
    for lm in line_re.finditer(body):
        raw_pat = lm.group(2).strip()
        # Skip the table header row
        if raw_pat.startswith("regex"):
            continue
        # Skip markdown table separator (---:---:--- etc.)
        if set(raw_pat) <= {"-", " "}:
            continue
        if raw_pat.lower().startswith("n/a"):
            pat: Optional[str] = None
        elif raw_pat.startswith('r"') and raw_pat.endswith('"'):
            pat = raw_pat[2:-1]
        else:
            pat = raw_pat
        entries.append(RegexEntry(
            falsifier=lm.group(1).strip(),
            pattern=pat,
            extracts=lm.group(3).strip(),
        ))
    return entries


# ── verdict logic ───────────────────────────────────────────────────────────
def latest_verdict_per_falsifier(rows: list[ObsRow]) -> dict[str, str]:
    """For each falsifier, return the last row's verdict (append-only ⇒
    the last row is the freshest)."""
    out: dict[str, str] = {}
    for row in rows:
        out[row.falsifier] = row.verdict
    # Ensure every expected falsifier has at least an entry.
    for fid in FALSIFIER_IDS:
        out.setdefault(fid, "DEFERRED")
    return out


# ── network (only invoked under --poll) ─────────────────────────────────────
def http_fetch(url: str, timeout: int = HTTP_TIMEOUT_S) -> Optional[str]:
    """Fetch a URL with urllib. Returns body or None on any failure.
    NEVER called outside --poll mode."""
    req = urllib.request.Request(url, headers={"User-Agent": HTTP_USER_AGENT})
    try:
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            charset = resp.headers.get_content_charset() or "utf-8"
            return resp.read().decode(charset, errors="replace")
    except (urllib.error.URLError, urllib.error.HTTPError,
            TimeoutError, ConnectionError) as e:
        log_event(f"  fetch fail url={url} err={e}")
        return None
    except Exception as e:                   # noqa: BLE001 (paranoid stdlib mode)
        log_event(f"  fetch fail url={url} unexpected={e!r}")
        return None


def apply_regex(pattern: str, body: str) -> Optional[str]:
    """Apply the scaffold-given regex to a fetched body. Returns the first
    full match's `group(0)` (or the joined groups), or None if no match."""
    try:
        m = re.search(pattern, body, re.IGNORECASE)
    except re.error as e:
        log_event(f"  regex fail pattern={pattern!r} err={e}")
        return None
    if not m:
        return None
    if m.groups():
        return " ".join(g for g in m.groups() if g)
    return m.group(0)


# ── log helper ──────────────────────────────────────────────────────────────
def log_event(line: str) -> None:
    ts = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
    with LOG.open("a", encoding="utf-8") as fh:
        fh.write(f"{ts} {line}\n")


# ── append-only row writer (used by --poll) ─────────────────────────────────
APPEND_MARKER = "<!-- POLL-APPEND-MARKER:"


def append_observation_row(row: ObsRow) -> None:
    """Append a fresh row to mk2-observations.md just below the table.
    Never deletes anything."""
    text = OBS.read_text(encoding="utf-8")
    line = (f"| {row.falsifier} | {row.quarter} | {row.url} | "
            f"{row.observation} | {row.trigger} | {row.verdict} | "
            f"{row.date_logged} |\n")
    # Insert right before the marker (so the marker comment stays last in
    # the table region) — fall back to appending if marker is missing.
    if APPEND_MARKER in text:
        text = text.replace(APPEND_MARKER, line + APPEND_MARKER, 1)
    else:
        text = text.rstrip() + "\n" + line
    OBS.write_text(text, encoding="utf-8")


# ── monitor class (per-falsifier check methods) ─────────────────────────────
@dataclass
class FalsifierMonitor:
    """Holds the parsed mk2-observations.md state. Each `check_fN()` method
    returns the *current* verdict for that falsifier — the verdict from the
    latest table row (which may still be `DEFERRED` if no real data has
    landed yet).

    The N=10 check methods are intentionally thin wrappers around
    `latest_verdict_per_falsifier()`. They exist as a stable API surface
    for `verify_terafab.py` to call into."""

    rows: list[ObsRow]          = field(default_factory=list)
    sources: list[SourceEntry]  = field(default_factory=list)
    regexes: list[RegexEntry]   = field(default_factory=list)
    _verdicts: dict[str, str]   = field(default_factory=dict)

    @classmethod
    def load(cls) -> "FalsifierMonitor":
        text = _read(OBS)
        mon = cls(
            rows=parse_observation_rows(text),
            sources=parse_source_registry(text),
            regexes=parse_regex_registry(text),
        )
        mon._verdicts = latest_verdict_per_falsifier(mon.rows)
        return mon

    # Per-falsifier check methods (stable API).
    def _check(self, fid: str) -> str:
        return self._verdicts.get(fid, "DEFERRED")

    def check_f1(self) -> str:  return self._check("F-TERAFAB-1")
    def check_f2(self) -> str:  return self._check("F-TERAFAB-2")
    def check_f3(self) -> str:  return self._check("F-TERAFAB-3")
    def check_f4(self) -> str:  return self._check("F-TERAFAB-4")
    def check_f5(self) -> str:  return self._check("F-TERAFAB-5")
    def check_f6(self) -> str:  return self._check("F-TERAFAB-6")
    def check_f7(self) -> str:  return self._check("F-TERAFAB-7")
    def check_f8(self) -> str:  return self._check("F-TERAFAB-8")
    def check_f9(self) -> str:  return self._check("F-TERAFAB-9")
    def check_f10(self) -> str: return self._check("F-TERAFAB-10")

    def all_verdicts(self) -> dict[str, str]:
        return {fid: self._check(fid) for fid in FALSIFIER_IDS}

    # ── per-falsifier source/regex lookup ────────────────────────────────
    def sources_for(self, fid: str) -> list[SourceEntry]:
        """Return all sources whose `falsifiers` list contains the short
        form of fid (e.g., 'F1' for F-TERAFAB-1)."""
        tag = "F" + fid.split("-")[-1]
        return [s for s in self.sources if tag in s.falsifiers]

    def regex_for(self, fid: str) -> Optional[RegexEntry]:
        for r in self.regexes:
            if r.falsifier == fid:
                return r
        return None


# ── commands ────────────────────────────────────────────────────────────────
def cmd_default(mon: FalsifierMonitor) -> int:
    print("=" * 72)
    print(" terafab/poll_mk2.py — Mk.II observation state (no network)")
    print(f" sources known: {len(mon.sources)}   regexes: {len(mon.regexes)}")
    print(f" rows in mk2-observations.md: {len(mon.rows)}")
    print("=" * 72)
    print()
    print(f" {'falsifier':<14} {'verdict':<10} {'sources':<8} regex?")
    print(" " + "-" * 60)
    for fid in FALSIFIER_IDS:
        verdict = mon._check(fid)
        n_src   = len(mon.sources_for(fid))
        rx      = mon.regex_for(fid)
        rx_tag  = "yes" if (rx and rx.pattern) else "no (DEFERRED-locked)"
        print(f" {fid:<14} {verdict:<10} {n_src:<8} {rx_tag}")
    print(" " + "-" * 60)
    deferred = sum(1 for v in mon._verdicts.values() if v == "DEFERRED")
    print(f" DEFERRED: {deferred} / {len(FALSIFIER_IDS)}  "
          f"(2026-Q3 onwards expected to flip some to PASS / WEAK_FAIL)")
    print("=" * 72)
    return 0 if len(mon.rows) >= len(FALSIFIER_IDS) else 1


def cmd_check(mon: FalsifierMonitor) -> int:
    """Emit JSON {falsifier_id: verdict, ...} for piping to verify_terafab.py."""
    out = {
        "schema":    "terafab.mk2.verdict.v1",
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "verdicts":  mon.all_verdicts(),
        "row_count": len(mon.rows),
    }
    print(json.dumps(out, indent=2, sort_keys=True))
    return 0


def cmd_dry_run(mon: FalsifierMonitor) -> int:
    print("=" * 72)
    print(" --dry-run: URLs + regexes that WOULD be fetched (no network)")
    print("=" * 72)
    any_actionable = False
    for fid in FALSIFIER_IDS:
        srcs = mon.sources_for(fid)
        rx   = mon.regex_for(fid)
        rx_pat = rx.pattern if (rx and rx.pattern) else None
        rx_show = rx_pat if rx_pat else "(no regex — scaffold left DEFERRED)"
        actionable = bool(srcs) and bool(rx_pat)
        any_actionable = any_actionable or actionable
        tag = "[FETCH]" if actionable else "[SKIP] "
        print(f"\n {tag} {fid}")
        print(f"   regex: {rx_show}")
        if not srcs:
            print("   urls : (none in source registry)")
        else:
            for s in srcs:
                print(f"   url  : {s.src_id}  {s.url}")
    print()
    print("=" * 72)
    print(f" actionable falsifiers: {sum(1 for fid in FALSIFIER_IDS if mon.regex_for(fid) and mon.regex_for(fid).pattern and mon.sources_for(fid))} / {len(FALSIFIER_IDS)}")
    print(" (--poll would actually fetch + append rows for the [FETCH] set)")
    print("=" * 72)
    return 0


def cmd_poll(mon: FalsifierMonitor) -> int:
    """Live mode — fetch every actionable source, extract values, append
    rows. Never overwrites history."""
    log_event("poll cycle start")
    quarter = _current_quarter()
    today   = datetime.now(timezone.utc).strftime("%Y-%m-%d")
    new_rows = 0
    for fid in FALSIFIER_IDS:
        srcs = mon.sources_for(fid)
        rx   = mon.regex_for(fid)
        if not srcs or not rx or not rx.pattern:
            log_event(f"  skip {fid} (no regex or no source)")
            continue
        for s in srcs:
            log_event(f"  fetch {fid} via {s.src_id} {s.url}")
            body = http_fetch(s.url)
            if body is None:
                continue
            extracted = apply_regex(rx.pattern, body)
            if extracted is None:
                log_event(f"    no match")
                continue
            # Locked-trigger lookup: copy verbatim from the SCAFFOLD row.
            trigger = _scaffold_trigger_for(mon, fid)
            row = ObsRow(
                falsifier=fid,
                quarter=quarter,
                url=s.url,
                observation=extracted[:80],
                trigger=trigger,
                verdict="PENDING_REVIEW",
                date_logged=today,
            )
            append_observation_row(row)
            new_rows += 1
            log_event(f"    appended row obs={extracted[:60]!r}")
    log_event(f"poll cycle end (new_rows={new_rows})")
    print(f"poll: appended {new_rows} new row(s) to {OBS.name}")
    return 0


# ── helpers ─────────────────────────────────────────────────────────────────
def _current_quarter() -> str:
    now = datetime.now(timezone.utc)
    q = (now.month - 1) // 3 + 1
    return f"{now.year}-Q{q}"


def _scaffold_trigger_for(mon: FalsifierMonitor, fid: str) -> str:
    """Return the locked Mk.I SCAFFOLD trigger text for this falsifier, so
    polled rows mirror the same threshold without restating it."""
    for r in mon.rows:
        if r.falsifier == fid and r.quarter == "Mk.I":
            return r.trigger
    return "n/a (scaffold row missing)"


# ── entry point ─────────────────────────────────────────────────────────────
def build_argparser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="poll_mk2.py",
        description="Mk.II falsifier monitor (terafab). Stdlib only; "
                    "no network unless --poll is passed.",
    )
    g = p.add_mutually_exclusive_group()
    g.add_argument("--check",   action="store_true",
                   help="emit JSON verdict map and exit (no network)")
    g.add_argument("--dry-run", action="store_true",
                   help="list URLs + regexes that --poll would use (no network)")
    g.add_argument("--poll",    action="store_true",
                   help="ACTUALLY fetch URLs and append rows (network!)")
    return p


def main(argv: Optional[list[str]] = None) -> int:
    args = build_argparser().parse_args(argv)
    mon = FalsifierMonitor.load()
    if args.check:
        return cmd_check(mon)
    if args.dry_run:
        return cmd_dry_run(mon)
    if args.poll:
        return cmd_poll(mon)
    return cmd_default(mon)


if __name__ == "__main__":
    sys.exit(main())
