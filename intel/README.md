# intel — Meta-Domain (IDM-Foundry-Pivot Envelope)

> **Outer envelope wrapping the 6 hexa-chip groups under the Intel
> IDM 2.0 / Intel Foundry pivot pattern; not a verb;
> 29-verb / 6-group counts unchanged.**

[![Type: meta-domain](https://img.shields.io/badge/type-meta--domain-purple.svg)](intel.md)
[![Wraps: 6 groups](https://img.shields.io/badge/wraps-6%20groups-blue.svg)](#cross-link)
[![Falsifiers: 7](https://img.shields.io/badge/falsifiers-7-orange.svg)](#falsifier-register-summary)
[![Sources: public (no NDA)](https://img.shields.io/badge/sources-public%20%28no%20NDA%29-brightgreen.svg)](intel.md#15-references)
[![Closure: SPEC_PLUS_RUNNABLE](https://img.shields.io/badge/closure-SPEC__PLUS__RUNNABLE-brightgreen.svg)](CLOSURE.md)
[![Sisters: terafab · exynos · tsmc](https://img.shields.io/badge/sisters-terafab%20%C2%B7%20exynos%20%C2%B7%20tsmc-purple.svg)](../terafab/README.md)

> **Status (2026-05-12, Wave I)**: meta-domain at
> **`SPEC_PLUS_RUNNABLE` closure** (see [`CLOSURE.md`](CLOSURE.md)).
> 5 files in `intel/` + cross-doc audit shared with `terafab/`,
> `exynos/`, and `tsmc/`. Verb surface (29-verb / 6-group) and
> v1.0.0 closure verdict unchanged — Intel is an *outer envelope*,
> not a new verb.

---

## Why this directory exists

Intel is the **fourth meta-domain** in `hexa-chip` (sister to Wave 6's
`terafab/`, Wave 7's `exynos/`, and Wave I's `tsmc/`). It anchors
hexa-chip to the **IDM-foundry-pivot topology**: an incumbent IDM
(≈ 57 yr old) reinventing itself as a foundry-for-external-customers
while simultaneously catching up on process leadership (Intel 18A,
then 14A). Intel is the only envelope mid-pivot at absorption date —
the structural bridge between Exynos (full IDM) and TSMC (pure-play
foundry).

Zero NDA / proprietary content; every claim traces to the
`intel.md` §15 source list and `sources.md` citation database
(Intel 10-K SEC EDGAR public filings, Intel Foundry Direct Connect
2024-2025 public keynotes, Ohio One Campus public state filings,
EU Chips Act filings, Magdeburg paused-project public announcements,
public industry trackers and analysis — TrendForce / Counterpoint /
Mercury / The Register / Tom's Hardware / SemiAnalysis public-side /
AnandTech archive, IEEE/IEDM proceedings).

The four envelopes are **complementary**, not redundant:

- **Terafab** (Wave 6) = greenfield vertical megafab (Musk/Intel
  announce 2026, $55–119 B prototype, zero-yield baseline at Mk.I).
- **Exynos**  (Wave 7) = brownfield IDM heritage (Samsung 40 yr,
  ≈ ₩50 T 2024 capex, ≈ 11 % global foundry share).
- **TSMC**    (Wave I, sister) = pure-play foundry leader (TSMC 39 yr,
  ≈ $30 B 2024 capex, ≈ 61 % global foundry share).
- **Intel**   (Wave I, this envelope) = IDM-foundry-pivot (Intel 58 yr,
  IDM 2.0 announce 2021-03, IFS rebrand 2024-Q1, Ohio One slipped,
  Magdeburg paused, Tower terminated, CEO transitions, ≈ $25 B 2024
  capex revised down, < 5 % foundry share — mid-pivot).

All four wrap the same 6 hexa-chip groups; all four ship with a
stdlib-only Python verify harness; all four register a falsifier
preregister. **hexa-chip's 29-verb spec surface is currently ≈ 2
maturity tiers below Intel's real engineering surface — the smallest
gap of any envelope (Intel is the most accessible reference).**

---

## Files in this directory

Wave I landed. 5 files; aggregate ≈ 1,400 lines.

| File | Lines | Scope | Wave |
|---|---:|---|---|
| `intel.md`         | ~620 | Main 15-section meta-domain document (WHY · COMPARE · REQUIRES · STRUCT · FLOW · VERIFY · EVOLVE · IDEAS · METRICS · RISKS · DEPENDENCIES · TIMELINE · TOOLS · TEAM · REFERENCES) | I |
| `verify_intel.py`  | ~240 | Runnable falsifier checker — 8/8 HARD PASS + 6 DEFERRED, stdlib-only | I |
| `sources.md`       | ~390 | 18-source public citation database (SRC-INTEL-001..018) with key-claims + falsifier links | I |
| `CLOSURE.md`       | ~205 | Closure declaration — verdict `SPEC_PLUS_RUNNABLE`, 7-section honesty audit | I |
| `README.md`        | this | This navigation index | I |

**Out-of-directory cross-link artifacts**:

| File | Role |
|---|---|
| `../terafab/cross_doc_audit.py` | Extended at Wave I to also audit `[meta_domains.tsmc]` + `[meta_domains.intel]` (all four envelopes share one harness) |
| `../hexa.toml`                  | `[meta_domains.intel]` (Wave I) + `[meta_domain_closure]` (Wave I, envelopes 2→4 / falsifiers 17→31) |
| `../CATALOG.md`                 | T2 ENVELOPE table: intel row added at `SPEC_PLUS_RUNNABLE` |

---

## Quick-recall facts

Condensed from `intel.md` §1 "Headline anchors (sourced)" — public
Intel disclosures only.

| key fact | value |
|---|---|
| Intel founding            | 1968 (Noyce / Moore / Grove) |
| IDM 2.0 announcement      | 2021-03-23 (Pat Gelsinger) |
| Intel Foundry rebrand     | 2024-Q1 (IFS → Intel Foundry; Direct Connect launch) |
| Current leading-edge HVM  | Intel 3 (Granite Rapids, 2024-Q4) |
| Intel 18A HVM target      | 2025-H2 → 2026-H1 (Panther Lake lead) |
| Intel 14A HVM target      | 2027-Q4 → 2028 (High-NA EUV introduction) |
| Intel 2024 revenue        | ≈ $53 B USD |
| Intel 2024 capex          | ≈ $25 B USD (revised down from $30 B) |
| Intel Foundry share 2024  | < 5 % global (TrendForce 2024-Q4) |
| Ohio One announced capex  | $20 B initial → $100 B cumulative ambition |
| Ohio One Phase 1 HVM      | 2027 target (slipped from 2025; risk of 3rd slip) |
| Magdeburg Fab 29          | announced 2022-03, PAUSED 2024-09 |
| Tower Semi acquisition    | announced 2022-02, terminated 2023-08 |
| CHIPS Act Intel award     | $8.5 B direct + $11 B loans (2024-03) |
| CEO transitions           | Gelsinger 2024-12-01 out → Tan 2025-03-12 in |
| 18A external customers    | ≥ 3 LOI (Microsoft, AWS, US DoD RAMP-C) |
| Terminal claim (Mk.VI)    | Intel survives the pivot through 2033 |

---

## Falsifier register summary

7 falsifiers total — F-INTEL-1..7 (in `intel.md` §7).

▶ See `intel.md` §7 for the full register and stdlib-only honesty
check; see `verify_intel.py` for the dispatcher.

| ID | one-line claim | tier |
|---|---|---|
| F-INTEL-1 | Intel 18A ships with ≥ 3 named external customers by 2027-Q4 | Mk.I (IFDC / 10-K) |
| F-INTEL-2 | Intel 18A reaches HVM by 2026-H1 with Panther Lake lead | Mk.I (10-K) |
| F-INTEL-3 | Intel 14A first-customer volume = Tesla via Terafab (cross-link F-TERAFAB-6) | Mk.II (Terafab Mk.III window) |
| F-INTEL-4 | Magdeburg unpaused OR permanently cancelled by 2028-Q4 (no open-ended pause) | Mk.II (10-K commentary) |
| F-INTEL-5 | IFS external revenue ≥ $5 B/yr by 2030 per IFDC 2024 guidance | Mk.III (long-horizon 10-K segment) |
| F-INTEL-6 | Ohio One Phase 1 HVM by 2027-Q4 per current commitment (cross-link F-TSMC-3) | Mk.II (10-K + Ohio state) |
| F-INTEL-7 | Intel survives as corporate entity through 2033 (no break-up / acquisition / chapter-11) | Mk.III (terminal, long-horizon) |

**Cross-envelope links**:
- F-INTEL-3 ↔ F-TERAFAB-6: same physical fact (Tesla on Intel 14A
  volume via Terafab). Joint slip-or-hit.
- F-INTEL-6 ↔ F-TSMC-3: joint US-sovereign-fab schedule signal
  (Ohio One Phase 1 vs Arizona Fab 21 Phase 2). Cleanest 2027-2028
  data signal.

---

## Runnable verification

Re-verify the meta-domain at any time (all stdlib-only, ~< 1 s each):

```
python3 intel/verify_intel.py                         # 8/8 HARD PASS, 6 DEFERRED
python3 terafab/cross_doc_audit.py                    # extended to also assert [meta_domains.tsmc] + [meta_domains.intel]
python3 verify_catalog.py                             # CATALOG.md ↔ hexa.toml ↔ filesystem agreement
```

`verify_intel.py` reproduces:

- **Master identity** `σ·φ = n·τ = J₂ = 24` (n=6 perfectness).
- **Egyptian split** `1/2 + 1/3 + 1/6 = 1` (Fraction equality).
- **Intel capex didactic** `$25 B = $12.5 + $8.33 + $4.17`
  (Egyptian split applied to public 2024 capex).
- **5-nodes-4-years honesty** — i7+i4+i3+20A(cancelled)+18A: 4 real
  + 1 cancelled = 5 promised; honest registration of 20A cancellation.
- **18A → 14A cadence** — target 2026-H1 → 2027-Q4 = ≈ 18 mo (vs
  J₂ = 24 mo, aggressive compression registered honestly).
- **Ohio One slip honesty** — original 2025 → current 2027, 2 yr
  slip acknowledged.
- **F-INTEL-1..7** register with documented numeric triggers
  (Mk.I → DEFERRED; F-INTEL-7 reports χ² ≈ 0.10 / p ≈ 0.90).

---

## Cross-link

- **Parent**: [`../README.md`](../README.md) — hexa-chip 29-verb /
  6-group baseline. The meta-domain does **not** add a verb; it wraps
  the 6 groups as an outer envelope.
- **Sisters**:
  - [`../terafab/README.md`](../terafab/README.md) — greenfield
    vertical-megafab envelope (Wave 6.x; F-TERAFAB-6 ↔ F-INTEL-3
    cross-link).
  - [`../exynos/README.md`](../exynos/README.md) — brownfield
    IDM-heritage envelope (Wave 7).
  - [`../tsmc/README.md`](../tsmc/README.md) — pure-play
    foundry-leader envelope (Wave I, same wave; F-TSMC-3 ↔
    F-INTEL-6 cross-link).
- **Manifest**: `../hexa.toml` `[meta_domains.intel]` (envelope) +
  `[meta_domain_closure]` (verdict `SPEC_PLUS_RUNNABLE`,
  envelopes 2→4, falsifiers 17→31) — meta-domain registration
  (no verb addition; 29-verb / 6-group counts preserved).
- **Closure declaration**: [`CLOSURE.md`](CLOSURE.md) — full inventory,
  invariants asserted, honest caveats, what-not-claimed.
- **SSCB outreach dossier**: `~/core/ticket-out/07_outreach/_projects/hexa-chip-intel.{en,ko}.md`
  — D-option full-source-coverage outreach dossier
  (built at Wave I via `build/tools/build_full_repo_en.sh` +
  `build_full_repo.sh`; forbidden-token redaction PASS; Korean residue
  in `.en.md` = 0). Target recipient: Intel Foundry Direct Connect /
  Intel R&D Hillsboro / IFS external-customer team / Ohio One
  campus communications / US Commerce CHIPS Act program office /
  IEEE EDS US chapters.

---

## License

MIT — see [`../LICENSE`](../LICENSE).

Copyright (c) 2026 dancinlab (박민우 <nerve011235@gmail.com>).

---

## Provenance

Public-source absorption 2026-05-12. Wave I single commit:
- Wave I meta-domain absorption (Intel half): intel.md (15-section) +
  verify_intel.py + sources.md + README.md + CLOSURE.md +
  `[meta_domains.intel]` + `[meta_domain_closure]` envelopes 2→4 +
  extended `terafab/cross_doc_audit.py` + CATALOG.md T2 row.

**Zero NDA / proprietary / Intel-internal content.** Every numeric /
date traces to the `intel.md` §15 reference list (Intel 10-K SEC
EDGAR public filings, Intel Foundry Direct Connect 2024-2025 public
keynotes, Ohio One Campus / Licking County / Ohio state public
filings, EU Chips Act filings, Magdeburg paused-project public
announcements, public industry trackers and analysis, IEEE IEDM /
VLSI Symposium / ISSCC proceedings). Structured citation database
in [`sources.md`](sources.md) (18 entries, `SRC-INTEL-001..018`).
Korean editorial tone is heritage framing only — **no Intel
partnership, no NDA, no proprietary process kits, no SOW-protected
partnership detail**. SemiAnalysis paid-tier content explicitly
excluded; only publicly-readable portion used.
