<!-- @absorbed: 2026-05-12 -->
<!-- @sources: terafab/falsifier-mk2-scaffold.md (locked thresholds); terafab/sources.md (URL set) -->
<!-- @scope: data-arrival log; one row per (falsifier, quarter); pending until 2026-Q3 -->
---
type: mk2-observation-log
parent: terafab/falsifier-mk2-scaffold.md
target_window: 2026-Q3 ~ 2027-Q4
status: pending — SCAFFOLD (no data yet; all verdicts DEFERRED)
populated_by: terafab/poll_mk2.py (append-only)
consumed_by: terafab/verify_terafab.py (read_mk2_observations)
entries_per_falsifier: 1 SCAFFOLD row + 0..N polled rows
---

# Terafab — Mk.II Observations Log

> **Purpose**: append-only record of public-source observations against the
> Mk.II falsifier register (`falsifier-mk2-scaffold.md` §2 + §3). Every
> trigger value here is **read** from the scaffold — no values are invented
> in this file. Until 2026-Q3 data lands, every row is `pending —
> SCAFFOLD — DEFERRED` and `verify_terafab.py` continues to report each
> falsifier as DEFERRED.
>
> **Goalpost-move protection**: rows are append-only. When a poll
> produces a new observation, `poll_mk2.py` appends a row beneath the
> SCAFFOLD row — it never deletes or rewrites history. The audit script
> (`cross_doc_audit.py`) checks that the full set {F-TERAFAB-1, ...,
> F-TERAFAB-10} appears here and that every URL in §Source registry also
> lives in `terafab/sources.md`.

## Observations table

Columns:

- `Falsifier` — F-TERAFAB-N (1..10).
- `Quarter` — calendar quarter the observation belongs to (or `Mk.I` for
  the SCAFFOLD baseline row).
- `Public source URL` — the URL polled. `n/a (scaffold)` for the baseline.
- `Observation` — the extracted value (`pending` if no poll has landed).
- `Trigger value` — the locked threshold copied from
  `falsifier-mk2-scaffold.md` §2/§3. **Do not edit in this file.**
- `Verdict` — `DEFERRED` | `WEAK_FAIL` | `HARD_FAIL` | `PASS`.
- `Date logged` — ISO-8601 date the row was appended.

| Falsifier | Quarter | Public source URL | Observation | Trigger value | Verdict | Date logged |
|---|---|---|---|---|---|---|
| F-TERAFAB-1  | Mk.I | n/a (scaffold) | pending | cum. 2027 filed capex > $80B → WEAK_FAIL; > 2× by 2028 → HARD_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-2  | Mk.I | n/a (scaffold) | pending | any external HBM PO > $500M aggregate before 2028 → HARD_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-3  | Mk.I | n/a (scaffold) | pending | phase-2 filing > $200B with no $5T floor by 2028-Q4 → WEAK_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-4  | Mk.I | n/a (scaffold) | pending | marginal launch cost > $400/kg by 2027 → WEAK_FAIL; > $200/kg by 2032 → HARD_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-5  | Mk.I | n/a (scaffold) | pending | < 100 GW audited delivered by 2035 → HARD_FAIL (Mk.VI terminal) | DEFERRED | 2026-05-12 |
| F-TERAFAB-6  | Mk.I | n/a (scaffold) | pending | Intel 14A slip > 6 mo or "14A-class" wording → WEAK_FAIL; > 2031 slip → HARD_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-7  | Mk.I | n/a (scaffold) | χ²=0.200 p=0.8551 (Mk.I weak) | reformulated p < 0.05 → PASS; p ≥ 0.5 → HARD_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-8  | Mk.I | n/a (scaffold) | pending | groundbreak→tool-install > 30 mo → WEAK_FAIL; > 36 mo → HARD_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-9  | Mk.I | n/a (scaffold) | pending | filed peak < 200 MW or water < 4 ML/day by 2027 → WEAK_FAIL | DEFERRED | 2026-05-12 |
| F-TERAFAB-10 | Mk.I | n/a (scaffold) | pending | < 250 net engineering hires/quarter through 2027 → WEAK_FAIL | DEFERRED | 2026-05-12 |

<!-- POLL-APPEND-MARKER: rows below this line are added by poll_mk2.py --><!-- never delete -->

## Polling schedule

Verbatim from `falsifier-mk2-scaffold.md` §5 (data-collection rubric).
Do not edit this section directly; if the scaffold rubric changes, copy
the updated table here in a *new* commit so history shows the move.

```
quarter  | falsifiers newly testable        | sources to monitor
---------+----------------------------------+----------------------------------------------
2026-Q3  | F-TERAFAB-9 (utility filings)    | Texas TCEQ filings, ERCOT interconnection
         | F-TERAFAB-10 (workforce ramp)    |   queue, Austin Energy / LCRA agendas;
         |                                  |   Tesla / xAI / SpaceX career pages
2026-Q4  | F-TERAFAB-1 (capex actual deltas)| SpaceX Texas filings, Tesla 10-K capex
         | F-TERAFAB-8 (groundbreaking)     |   line, TCEQ permits, Wikipedia Terafab
         | F-TERAFAB-9 (utility, refresh)   |   page (semi-curated mirror)
2027-Q1  | F-TERAFAB-6 (Intel 14A schedule) | Intel Foundry Direct Connect, Intel 10-Q
         | F-TERAFAB-10 (workforce, refresh)|   risk-factors, ASML shipment disclosures
2027-Q2  | F-TERAFAB-1 (capex, refresh)     | quarterly poll of all Mk.II sources;
         | F-TERAFAB-8 (tool-install latency)|  begin populating MK2_OBSERVED slots 1..7
2027-Q3  | F-TERAFAB-7 (chi^2 first run)    | once ≥ 7 slots filled, run §4 chi^2;
         | F-TERAFAB-2 (in-fab memory line) |   Tesla 10-K cost-of-revenue HBM/DRAM line
2027-Q4  | F-TERAFAB-7 (chi^2 full run)     | populate slots 8..11; full Mk.II verdict;
         | F-TERAFAB-4 (Starship cost)      |   SpaceX annual launch-cost statement
         | (early indicator)                |   + FCC re-flight count
```

## Source registry

Every URL the Mk.II poller knows about, tagged with which falsifier(s)
it informs. URLs are mirrored from `terafab/sources.md`
(`SRC-TERAFAB-001..016` `falsifier_links` field). New utility / SEC /
ERCOT / TCEQ targets land here as `SRC-TERAFAB-017+` once a Terafab-
specific document is publicly filed against them (see `sources.md` §5).

```
src_id           | falsifiers informed              | url
-----------------+----------------------------------+--------------------------------------------------------------------------------
SRC-TERAFAB-001  | F1, F2, F3, F6, F7               | https://en.wikipedia.org/wiki/Terafab
SRC-TERAFAB-002  | F1, F7                           | https://www.tomshardware.com/tech-industry/elon-musk-formally-launches-20-billion-terafab-chip-project
SRC-TERAFAB-003  | F6                               | https://www.tomshardware.com/tech-industry/semiconductors/elon-musk-says-terafab-will-use-intels-14a-process-technology-to-make-ai-chips-spacex-will-be-responsible-for-high-volume-chip-manufacturing-in-liekly-intel-tech-licensing-deal
SRC-TERAFAB-004  | F1, F3                           | https://www.cnbc.com/2026/05/06/elon-musks-spacex-chip-fab-in-texas-to-cost-up-to-119-billion.html
SRC-TERAFAB-005  | F4, F5                           | https://www.datacenterdynamics.com/en/news/elon-musk-announces-terafab-20bn-factory-will-make-chips-for-spacex-orbital-data-centers-and-tesla-vehicles/
SRC-TERAFAB-006  | F6                               | https://techcrunch.com/2026/04/07/intel-signs-on-to-elon-musks-terafab-chips-project/
SRC-TERAFAB-007  | F6                               | https://www.technology.org/2026/04/23/tesla-picks-intels-14a-process-for-musks-austin-terafab-project/
SRC-TERAFAB-008  | F6                               | https://www.tweaktown.com/news/111231/tesla-plans-to-use-intels-next-gen-14a-process-for-its-terafab-project/index.html
SRC-TERAFAB-009  | F1, F3                           | https://finance.yahoo.com/markets/stocks/article/elon-musks-spacex-files-initial-55-billion-spend-for-terafab-chip-factory-in-texas-120356588.html
SRC-TERAFAB-010  | F1                               | https://www.cbsnews.com/news/terafab-elon-musk-chips-semiconductors-what-to-know/
SRC-TERAFAB-011  | F1, F3, F4, F5                   | https://www.theregister.com/systems/2026/05/06/spacex-plots-119b-wafer-fab-to-make-elons-orbital-ai-dream-come-true/5231202
SRC-TERAFAB-012  | F1                               | https://electrek.co/2026/03/22/tesla-spacex-terafab-chip-factory-ai-desperation/
SRC-TERAFAB-013  | F2, F10                          | https://cloudnews.tech/terafab-musks-plan-that-worries-the-industry-before-manufacturing-a-chip/
SRC-TERAFAB-014  | F3, F6                           | https://www.trefis.com/stock/klac/articles/598668/intel-lam-kla-will-musks-120b-terafab-boost-these-stocks/2026-05-07
SRC-TERAFAB-015  | F3, F9                           | https://gearmusk.com/2026/05/06/terafab-bring-119b/
SRC-TERAFAB-016  | F6                               | https://www.eenewseurope.com/en/musk-teams-with-intel-for-terafab-plans/
```

## Extraction regex registry

Per scaffold §1: "All extraction regexes must be sourced from
`falsifier-mk2-scaffold.md` — do not invent extraction logic." The
following regex set is derived directly from the scaffold §2/§3 trigger
text. Falsifiers without a scaffold-given regex (e.g., F-TERAFAB-5,
which is Mk.VI terminal-only) stay DEFERRED indefinitely.

The columns are separated by `::` (not `|`) because Python regex bodies
contain `|` (alternation) characters; using `::` keeps the table
machine-parseable without escape gymnastics.

```
falsifier    :: regex (Python re; case-insensitive)                      :: extracts
F-TERAFAB-1  :: r"\$\s*(\d{2,4}(?:\.\d+)?)\s*(?:B|billion)"              :: cumulative filed capex ($B)
F-TERAFAB-2  :: r"(HBM|DRAM|LPDDR)[^.]{0,80}(\$\s*\d+\s*(?:M|million))"  :: external memory PO ($M)
F-TERAFAB-3  :: r"phase[\s-]*2[^.]{0,80}\$\s*(\d{2,4})\s*B"              :: phase-2 filed capex ($B)
F-TERAFAB-4  :: r"\$\s*(\d{2,4})\s*/\s*kg"                               :: marginal launch cost ($/kg)
F-TERAFAB-5  :: n/a (Mk.VI terminal; no Mk.II regex)                     :: DEFERRED until 2035
F-TERAFAB-6  :: r"(14A|14A-class|18A.{0,20}extension)"                   :: Intel 14A slip / pivot wording
F-TERAFAB-7  :: n/a (chi^2 in poll_mk2.py against scaffold §4 slots)     :: residual array
F-TERAFAB-8  :: r"groundbreak[a-z]*[^.]{0,60}(\d{4}-\d{2}-\d{2})"        :: groundbreaking date
F-TERAFAB-9  :: r"(\d+(?:\.\d+)?)\s*(MW|GW)\b|(\d+(?:\.\d+)?)\s*ML/day"  :: filed peak draw / water
F-TERAFAB-10 :: r"(\d{2,5})\s+(net\s+hires|engineering\s+hires)"         :: net hires/quarter
```

## Honest caveats

- **Data may never arrive for some falsifiers**. F-TERAFAB-9 (utility
  envelope) only becomes testable if Terafab actually files a TCEQ /
  ERCOT permit under the *announced* one-roof scope. If Musk pivots
  venue (e.g., to a non-Texas site or to a non-public utility vehicle),
  F-TERAFAB-9 becomes untestable in its current form. The honest
  response in that case is to *retire the falsifier as
  scope-undefined*, **not** to invent a substitute trigger.
- **Mk.IV/V/VI falsifiers (F-TERAFAB-3 terminal, F-TERAFAB-4 2032,
  F-TERAFAB-5 2035) cannot resolve inside the Mk.II window**. The Mk.II
  poller only records *trajectory* (slope) signals for these — never a
  terminal verdict.
- **Wikipedia (SRC-TERAFAB-001) is community-edited**. The Mk.II
  poller treats Wikipedia as a *semi-curated mirror*, not a primary
  source. Capex revisions in Wikipedia must be corroborated by at least
  one primary filing source (CNBC, Yahoo Finance, SEC EDGAR) before
  flipping a verdict.
- **Goalpost-move ratchet**: if a future commit attempts to *raise* a
  trigger threshold (e.g., move F-TERAFAB-1's HARD_FAIL from `>2×` to
  `>3×`) without a corresponding scaffold edit, the audit script
  (`cross_doc_audit.py`) MUST FAIL. Trigger text in this file is
  intended to be byte-identical to scaffold §2/§3.

---

**Provenance**: scaffold-locked; URLs mirrored from `sources.md`; no
new external claims. The Mk.II window opens 2026-Q3; until then every
verdict reads DEFERRED through `read_mk2_observations()` in
`verify_terafab.py`.
