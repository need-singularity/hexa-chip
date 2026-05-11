<!-- @absorbed: 2026-05-12 -->
<!-- @sources: terafab/falsifier-mk2-scaffold.md, terafab/mk2-observations.md -->
<!-- @scope: operator's manual — how to use the Mk.II monitoring stack -->
---
type: operator-manual
parent: terafab/falsifier-mk2-scaffold.md
window: 2026-Q3 → 2027-Q4
status: scaffold-ready (no Mk.II data yet)
runtime_files:
  - terafab/poll_mk2.py
  - terafab/mk2-observations.md
  - terafab/mk2-poll.log     # gitignored
---

# Terafab — Mk.II Monitoring Operator's Manual

> One-page operator manual for the Mk.II falsifier monitoring stack. If
> you only read one paragraph: run `python3 terafab/poll_mk2.py` to see
> the current state; run with `--check` for JSON; run with `--dry-run`
> to see what `--poll` would fetch; run with `--poll` once per quarter
> at quarter end. Everything is append-only — observations never get
> deleted or rewritten, only added beneath the SCAFFOLD baseline rows.

## §1 What this stack is for

Until 2026-Q3, the 10 Terafab falsifiers (`F-TERAFAB-1..10`, registered
in [`falsifier-mk2-scaffold.md`](./falsifier-mk2-scaffold.md)) are
*bench-only* — they are well-formed propositions, but the public-source
data needed to evaluate them does not yet exist. The Mk.II stack is the
data-arrival pipeline that turns these propositions into evaluable
verdicts once the data does land.

The three files in this stack:

- **`falsifier-mk2-scaffold.md`** — source-of-truth: the 10 falsifiers,
  their numeric triggers, the χ² recipe, the polling schedule. Locked.
- **`mk2-observations.md`** — append-only log: SCAFFOLD baseline rows
  + every polled observation. Read by `verify_terafab.py`.
- **`poll_mk2.py`** — the runner: parses the observation log, optionally
  hits URLs, writes new rows. Logs cycle events to `mk2-poll.log`.

## §2 When to run

### Every commit / CI

```
python3 terafab/verify_terafab.py        # 6 HARD + per-falsifier read
python3 terafab/cross_doc_audit.py       # scaffold ↔ obs ↔ sources cross-check
python3 terafab/poll_mk2.py              # default no-network summary
```

These three should run on every CI cycle. They make no network calls
and should never fail under normal scaffold conditions. If
`cross_doc_audit.py` fails with "mk2-observations.md falsifier set
mismatch", someone has edited the observation table by hand in a way
that broke the {F-TERAFAB-1..10} invariant — fix the table before
committing.

### Once per quarter (operator action)

At the end of each calendar quarter beginning **2026-Q3**, run:

```
python3 terafab/poll_mk2.py --dry-run     # sanity-check URLs + regexes
python3 terafab/poll_mk2.py --poll        # actually fetch + append rows
```

The `--poll` mode appends a new row per (falsifier, source) pair where
the scaffold-given regex matches the fetched page. Polled rows always
arrive with verdict `PENDING_REVIEW` — a human must read the appended
row, decide whether the extracted value crosses the trigger, and add a
follow-up row with the final verdict (`PASS` / `WEAK_FAIL` /
`HARD_FAIL`). **The poller does not flip verdicts by itself.**

### Never (do not do this)

- Do not edit `mk2-observations.md` to delete a SCAFFOLD baseline row.
- Do not edit the `Trigger value` column — those are locked from the
  scaffold; changing them is goalpost-moving.
- Do not commit `terafab/mk2-poll.log` (it is gitignored).
- Do not invent observation rows for falsifiers without scaffold-given
  regexes (F-TERAFAB-5 and F-TERAFAB-7 stay DEFERRED-locked at Mk.II).

## §3 Reading the output

### Default mode

```
 falsifier      verdict    sources  regex?
 ------------------------------------------------------------
 F-TERAFAB-1    DEFERRED   7        yes
 F-TERAFAB-2    DEFERRED   2        yes
 ...
 F-TERAFAB-5    DEFERRED   2        no (DEFERRED-locked)
```

- `verdict` — the latest verdict for this falsifier (last row wins).
  Mk.I state: all `DEFERRED`.
- `sources` — how many URLs in the registry inform this falsifier.
- `regex?` — `yes` if the scaffold provided an extraction regex;
  `no (DEFERRED-locked)` if not (e.g., F-TERAFAB-5 is Mk.VI terminal,
  F-TERAFAB-7 is the χ² aggregate evaluated in `verify_terafab.py`).

### `--check` mode (JSON)

Emits `{schema, generated, verdicts, row_count}`. Use this for piping
into other tools (eg, dashboards, alerting). Schema version is
`terafab.mk2.verdict.v1`.

### `--dry-run` mode

Lists every URL + regex that `--poll` would use, grouped by falsifier.
Marked `[FETCH]` if both URL and regex exist; `[SKIP]` otherwise. Run
this **before** every quarterly `--poll` to catch typos / dead URLs.

### `--poll` mode (live)

Fetches each `[FETCH]` URL with `urllib.request`, applies the
scaffold-given regex, and appends a row to `mk2-observations.md` for
every match. Failures are logged to `mk2-poll.log` (timestamped). Does
not raise on network errors — the next quarter's poll will retry.

## §4 Per-falsifier interpretation cheat-sheet

| ID | What "PASS" means | What "FAIL" means | Earliest testable | Goalpost-move guard |
|---|---|---|---|---|
| F-TERAFAB-1 | filed capex stays ≤ $80B cumulative through 2027 | filed capex > 2× initial by 2028 (HARD) | 2026-Q4 | trigger must read `>2×`; any softer threshold breaks the audit |
| F-TERAFAB-2 | no external HBM PO > $500M by 2028 | any single external HBM PO > $500M aggregate | 2027-Q3 | trigger must include `external HBM` text |
| F-TERAFAB-3 | phase-2 filing arrives with $5T floor language | phase-2 > $200B with no $5T floor by 2028-Q4 | 2027-Q2 | early-indicator only, not terminal |
| F-TERAFAB-4 | marginal launch cost ≤ $200/kg by 2032 | marginal launch cost > $400/kg by 2027 (WEAK) / > $200/kg by 2032 (HARD) | 2027-Q4 | accounting choice (marginal vs amortised) must be flagged |
| F-TERAFAB-5 | ≥ 100 GW audited compute delivered by 2035 | < 100 GW audited by 2035 | Mk.VI (2035) | Mk.II only logs orbital radiator area disclosure |
| F-TERAFAB-6 | Intel 14A volume production by 2030 | slip > 6 mo (WEAK) / past 2031 (HARD) / "14A-class" pivot wording | 2027-Q1 | regex must match `14A-class` exactly — no synonyms |
| F-TERAFAB-7 | χ² p < 0.05 (lattice beats chance) | χ² p ≥ 0.5 (retire lattice as coincidence) | 2027-Q3 | run via `verify_terafab.py` against scaffold §4 slots only |
| F-TERAFAB-8 | groundbreak→first-tool-install ≤ 24 mo | > 30 mo (WEAK) / > 36 mo (HARD) | 2026-Q4 | TCEQ + ASML filings; both required |
| F-TERAFAB-9 | filed peak draw ≥ 500 MW AND water ≥ 10 ML/day | filed < 200 MW OR water < 4 ML/day by 2027 | 2026-Q3 | utility filings only; SEC disclosures don't count |
| F-TERAFAB-10 | ≥ 500 net engineering hires/quarter | < 250 net hires/quarter through 2027 | 2026-Q3 | hires must be *engineering* (not GA/admin) |

## §5 Failure modes + recovery

- **Wikipedia takedown / replacement** — SRC-TERAFAB-001 disappears.
  Recovery: poll the SpaceX Texas filing repo directly via Wayback
  Machine archive URL embedded in `sources.md`. F-TERAFAB-1 and
  F-TERAFAB-3 lose their fastest mirror but stay testable.
- **Texas filing process changes** (capex moved to non-public vehicle)
  — F-TERAFAB-1/3/9 lose their cleanest signal source. Recovery:
  redesign against SEC-only signals; this requires a Mk.II.1 scaffold
  amendment, NOT a silent regex swap.
- **Terafab project cancelled or paused** — all 10 falsifiers go
  dormant. The Mk.II stack continues to run but yields permanent
  `DEFERRED` for everything. The `terafab.md` meta-domain becomes a
  historical artefact (documented in scaffold §6 "honesty caveats").
- **`mk2-poll.log` lost** — recoverable; future `--poll` runs append
  to a fresh log. The observation rows in `mk2-observations.md` are
  the durable record, not the log.
- **Network unavailable during `--poll`** — non-fatal; logged as
  `fetch fail` per URL. Run again at next quarter end.

## §6 PASS vs FAIL vs goalpost-move

| signal | what it looks like | how the stack treats it |
|---|---|---|
| **PASS** | observation falls clearly inside the scaffold-given trigger | operator appends row with verdict `PASS`; `verify_terafab.py` surfaces as `OK` |
| **WEAK_FAIL** | observation crosses the weak threshold but not the hard | operator appends row with verdict `WEAK_FAIL`; surfaces as `DEFERRED` (not yet decisive) |
| **HARD_FAIL** | observation crosses the hard threshold | operator appends row with verdict `HARD_FAIL`; surfaces as `FAIL` and breaks CI |
| **goalpost-move (NOT ALLOWED)** | someone edits the `Trigger value` column in `mk2-observations.md` after data has landed | `cross_doc_audit.py` MUST detect via the byte-level scaffold comparison; if it doesn't, that's an audit bug to fix |

## §7 Cross-references

- [`falsifier-mk2-scaffold.md`](./falsifier-mk2-scaffold.md) — locked
  trigger thresholds + χ² recipe + polling schedule.
- [`mk2-observations.md`](./mk2-observations.md) — the append-only log
  this manual operates on.
- [`sources.md`](./sources.md) — `SRC-TERAFAB-001..016` URL registry.
- [`verify_terafab.py`](./verify_terafab.py) — reads
  `mk2-observations.md` via `read_mk2_observations()`.
- [`cross_doc_audit.py`](./cross_doc_audit.py) — enforces scaffold ↔
  observations ↔ sources agreement.
- [`risks-deep.md`](./risks-deep.md) — P×I scoring; each risk row is
  linked to a Mk.II falsifier.

---

**Provenance**: operator's manual; zero new external claims. All
thresholds, regexes, and source URLs in this document mirror their
locked counterparts in `falsifier-mk2-scaffold.md` and `sources.md`.
