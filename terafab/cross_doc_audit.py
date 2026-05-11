#!/usr/bin/env python3
# ─────────────────────────────────────────────────────────────────────────────
# terafab/cross_doc_audit.py — cross-document Terafab fact agreement audit.
#
# Mirrors `verify/cross_doc_audit.hexa` in stdlib Python: extracts the same
# headline facts from each source document and asserts they agree.  No
# markdown parser is used (regex only); facts come from `terafab/terafab.md`
# §1 + §6 + §7, `terafab/falsifier-mk2-scaffold.md`, `hexa.toml`, and
# `terafab/README.md` (Wave A).
#
# Exit codes:
#   0 = every fact agrees across every available document
#   1 = at least one disagreement (printed as a diff)
#
# Cost: $0 (stdlib only — re, sys, pathlib, tomllib).
# ─────────────────────────────────────────────────────────────────────────────

from __future__ import annotations

import re
import sys
import tomllib
from pathlib import Path

REPO   = Path(__file__).resolve().parent.parent
TFAB   = REPO / "terafab" / "terafab.md"
SCAF   = REPO / "terafab" / "falsifier-mk2-scaffold.md"
TOML   = REPO / "hexa.toml"
README = REPO / "terafab" / "README.md"

EXPECTED_GROUPS = [
    "architecture", "design", "process",
    "packaging", "accelerator", "consciousness",
]


def read(path: Path) -> str:
    if not path.exists():
        return ""
    return path.read_text(encoding="utf-8")


# ── Fact extractors (regex, no markdown parser) ─────────────────────────────
def find_dates(text: str) -> set[str]:
    return set(re.findall(r"2026-0[3-5]-\d{2}", text))


def find_capex(text: str) -> set[str]:
    out = set()
    for m in re.finditer(r"\$?(\d+)\s*B\b", text):
        v = int(m.group(1))
        if v in (55, 119):
            out.add(f"${v}B")
    return out


def find_process(text: str) -> set[str]:
    out = set()
    if re.search(r"Intel\s*14A", text, re.IGNORECASE):
        out.add("Intel 14A")
    if re.search(r"\b1\.4\s*nm\b", text):
        out.add("1.4nm")
    if re.search(r"\b2\s*nm\b", text):
        out.add("2nm")
    return out


def find_allocation(text: str) -> set[str]:
    out = set()
    if re.search(r"\b80\s*%\s*(orbital|orbit)", text, re.IGNORECASE):
        out.add("80-orbital")
    if re.search(r"\b20\s*%\s*ground", text, re.IGNORECASE):
        out.add("20-ground")
    return out


def count_falsifiers(text: str) -> int:
    return len(set(re.findall(r"F-TERAFAB-\d+", text)))


# ── Audit ───────────────────────────────────────────────────────────────────
def audit() -> tuple[int, list[str]]:
    """Return (fail_count, log_lines)."""
    log: list[str] = []
    fails = 0

    log.append("=" * 72)
    log.append("  terafab/cross_doc_audit.py — Terafab fact agreement audit")
    log.append("=" * 72)

    tfab_txt = read(TFAB)
    scaf_txt = read(SCAF)
    toml_txt = read(TOML)
    readme_txt = read(README)

    # --- 1. terafab.md must exist ------------------------------------------
    if not tfab_txt:
        log.append("  [FAIL] terafab/terafab.md not readable")
        return (1, log)
    log.append(f"  [OK]   terafab.md          ({len(tfab_txt):>6} bytes)")

    # --- 2. falsifier-mk2-scaffold.md must exist ---------------------------
    if not scaf_txt:
        log.append("  [FAIL] terafab/falsifier-mk2-scaffold.md missing")
        fails += 1
    else:
        log.append(f"  [OK]   falsifier-mk2-scaffold.md  ({len(scaf_txt):>6} bytes)")

    # --- 3. hexa.toml must exist + parse -----------------------------------
    if not toml_txt:
        log.append("  [FAIL] hexa.toml missing")
        return (fails + 1, log)
    log.append(f"  [OK]   hexa.toml           ({len(toml_txt):>6} bytes)")

    try:
        toml_data = tomllib.loads(toml_txt)
    except Exception as e:
        log.append(f"  [FAIL] hexa.toml parse error: {e}")
        return (fails + 1, log)

    # --- 4. terafab/README.md (Wave A) — DEFER if missing -----------------
    if not readme_txt:
        log.append("  [DEFERRED] terafab/README.md not yet present (Wave A pending)")
    else:
        log.append(f"  [OK]   terafab/README.md   ({len(readme_txt):>6} bytes)")

    log.append("  " + "-" * 68)

    # --- 5. Date agreement (announce / Intel-join / filing) ----------------
    REQUIRED_DATES = {"2026-03-21", "2026-04-07", "2026-05-06"}
    for label, txt in [("terafab.md", tfab_txt),
                       ("README.md",  readme_txt)]:
        if not txt:
            continue
        present = find_dates(txt)
        missing = REQUIRED_DATES - present
        if missing:
            log.append(f"  [FAIL] {label}: missing dates {sorted(missing)}")
            fails += 1
        else:
            log.append(f"  [OK]   {label}: dates {sorted(REQUIRED_DATES)} all present")

    # --- 6. Capex agreement ($55 B initial / $119 B total) -----------------
    REQUIRED_CAPEX = {"$55B", "$119B"}
    for label, txt in [("terafab.md", tfab_txt),
                       ("README.md",  readme_txt)]:
        if not txt:
            continue
        present = find_capex(txt)
        missing = REQUIRED_CAPEX - present
        if missing:
            log.append(f"  [FAIL] {label}: missing capex {sorted(missing)}")
            fails += 1
        else:
            log.append(f"  [OK]   {label}: capex {sorted(REQUIRED_CAPEX)} both present")

    # --- 7. Process agreement (Intel 14A + 2 nm prototype) ----------------
    for label, txt in [("terafab.md", tfab_txt),
                       ("README.md",  readme_txt)]:
        if not txt:
            continue
        proc = find_process(txt)
        if "Intel 14A" not in proc:
            log.append(f"  [FAIL] {label}: 'Intel 14A' not found")
            fails += 1
        else:
            log.append(f"  [OK]   {label}: process tags {sorted(proc)}")

    # --- 8. Orbital/ground 80/20 split ------------------------------------
    for label, txt in [("terafab.md", tfab_txt),
                       ("README.md",  readme_txt)]:
        if not txt:
            continue
        alloc = find_allocation(txt)
        if alloc != {"80-orbital", "20-ground"}:
            log.append(f"  [FAIL] {label}: 80/20 allocation incomplete (got {alloc})")
            fails += 1
        else:
            log.append(f"  [OK]   {label}: 80% orbital · 20% ground both present")

    # --- 9. F-TERAFAB falsifier counts -----------------------------------
    tfab_count = count_falsifiers(tfab_txt)
    scaf_count = count_falsifiers(scaf_txt) if scaf_txt else 0
    toml_count = (
        toml_data.get("meta_domains", {})
                 .get("terafab", {})
                 .get("falsifier_count", -1)
    )
    log.append(f"  [INFO] F-TERAFAB unique IDs — terafab.md: {tfab_count}, "
               f"scaffold: {scaf_count}, hexa.toml: {toml_count}")
    # terafab.md §7 registers F-TERAFAB-1..7 (count=7) — must equal
    # hexa.toml [meta_domains.terafab].falsifier_count.
    if tfab_count != toml_count:
        log.append(f"  [FAIL] F-TERAFAB count mismatch: "
                   f"terafab.md={tfab_count} vs hexa.toml={toml_count}")
        fails += 1
    else:
        log.append(f"  [OK]   F-TERAFAB count matches: {tfab_count} (terafab.md ≡ hexa.toml)")
    # Scaffold extends to F-TERAFAB-10 — must be a superset of terafab.md set.
    if scaf_txt and scaf_count < tfab_count:
        log.append(f"  [FAIL] scaffold has fewer F-TERAFAB IDs ({scaf_count}) "
                   f"than terafab.md ({tfab_count})")
        fails += 1
    elif scaf_txt:
        log.append(f"  [OK]   scaffold extends register: {scaf_count} ≥ {tfab_count}")

    # --- 10. hexa.toml [meta_domains.terafab].absorbs invariant ----------
    absorbs = (
        toml_data.get("meta_domains", {})
                 .get("terafab", {})
                 .get("absorbs", [])
    )
    if len(absorbs) != 6:
        log.append(f"  [FAIL] [meta_domains.terafab].absorbs len={len(absorbs)} (expected 6)")
        fails += 1
    elif sorted(absorbs) != sorted(EXPECTED_GROUPS):
        log.append(f"  [FAIL] [meta_domains.terafab].absorbs != expected groups "
                   f"(got {absorbs})")
        fails += 1
    else:
        log.append(f"  [OK]   [meta_domains.terafab].absorbs = {absorbs}")

    # --- 11. closure totals unchanged -------------------------------------
    closure = toml_data.get("closure", {})
    verbs_total = closure.get("verbs_total")
    groups_total = closure.get("groups_total")
    if verbs_total != 29:
        log.append(f"  [FAIL] [closure].verbs_total = {verbs_total} (expected 29)")
        fails += 1
    else:
        log.append(f"  [OK]   [closure].verbs_total = 29")
    if groups_total != 6:
        log.append(f"  [FAIL] [closure].groups_total = {groups_total} (expected 6)")
        fails += 1
    else:
        log.append(f"  [OK]   [closure].groups_total = 6")

    log.append("=" * 72)
    if fails == 0:
        log.append("  ALL FACTS AGREE — Terafab cross-doc audit PASS")
    else:
        log.append(f"  {fails} disagreement(s) — see [FAIL] lines above")
    log.append("=" * 72)
    return (fails, log)


def main() -> int:
    fails, log = audit()
    for line in log:
        print(line)
    return 0 if fails == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
