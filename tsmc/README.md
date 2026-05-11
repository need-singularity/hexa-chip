# tsmc — Meta-Domain (Pure-Play-Foundry-Leader Envelope)

> **Outer envelope wrapping the 6 hexa-chip groups under the TSMC
> pure-play foundry leadership pattern; not a verb;
> 29-verb / 6-group counts unchanged.**

[![Type: meta-domain](https://img.shields.io/badge/type-meta--domain-purple.svg)](tsmc.md)
[![Wraps: 6 groups](https://img.shields.io/badge/wraps-6%20groups-blue.svg)](#cross-link)
[![Falsifiers: 7](https://img.shields.io/badge/falsifiers-7-orange.svg)](#falsifier-register-summary)
[![Sources: public (no NDA)](https://img.shields.io/badge/sources-public%20%28no%20NDA%29-brightgreen.svg)](tsmc.md#15-references)
[![Closure: SPEC_PLUS_RUNNABLE](https://img.shields.io/badge/closure-SPEC__PLUS__RUNNABLE-brightgreen.svg)](CLOSURE.md)
[![Sisters: terafab · exynos · intel](https://img.shields.io/badge/sisters-terafab%20%C2%B7%20exynos%20%C2%B7%20intel-purple.svg)](../terafab/README.md)

> **Status (2026-05-12, Wave I)**: meta-domain at
> **`SPEC_PLUS_RUNNABLE` closure** (see [`CLOSURE.md`](CLOSURE.md)).
> 5 files in `tsmc/` + cross-doc audit shared with `terafab/`,
> `exynos/`, and `intel/`. Verb surface (29-verb / 6-group) and
> v1.0.0 closure verdict unchanged — TSMC is an *outer envelope*,
> not a new verb.

---

## Why this directory exists

TSMC is the **third meta-domain** in `hexa-chip` (sister to Wave 6's
`terafab/`, Wave 7's `exynos/`, and Wave I's `intel/`). It anchors
hexa-chip to the **pure-play-foundry-leader topology**: TSMC, the
single largest counterparty in the global semiconductor industry —
the foundry through which Apple, NVIDIA, AMD, Qualcomm, Broadcom,
MediaTek, and (historically) Intel ship leading-edge silicon.

Zero NDA / proprietary content; every claim traces to the
`tsmc.md` §15 source list and `sources.md` citation database
(TSMC IR + Annual Report public filings, TSMC Technology Symposium
2024/2025 public keynotes, Arizona Commerce Authority, SEC 6-K,
EU / Japan JV announcements, public industry trackers, IEEE/IEDM
proceedings, competitor public commentary).

The four envelopes are **complementary**, not redundant:

- **Terafab** (Wave 6) = greenfield vertical megafab (Musk/Intel
  announce 2026, $55–119 B prototype, zero-yield baseline at Mk.I).
- **Exynos**  (Wave 7) = brownfield IDM heritage (Samsung 40 yr,
  ≈ ₩50 T 2024 capex, ≈ 11 % global foundry share).
- **TSMC**    (Wave I, this envelope) = pure-play foundry leader
  (TSMC 39 yr, ≈ $30 B 2024 capex, ≈ 61 % global foundry share,
  AZ Fab 21 / JASM / ESMC global expansion).
- **Intel**   (Wave I, sister) = IDM-foundry-pivot (Intel 18A /
  14A / IFS external-customer pivot 2021+ / Ohio One campus).

All four wrap the same 6 hexa-chip groups; all four ship with a
stdlib-only Python verify harness; all four register a falsifier
preregister. **hexa-chip's 29-verb spec surface is currently ≈ 3
maturity tiers below TSMC's real engineering surface — the largest
gap of any envelope (TSMC is the upper bound).**

---

## Files in this directory

Wave I landed. 5 files; aggregate ≈ 1,400 lines.

| File | Lines | Scope | Wave |
|---|---:|---|---|
| `tsmc.md`         | ~620 | Main 15-section meta-domain document (WHY · COMPARE · REQUIRES · STRUCT · FLOW · VERIFY · EVOLVE · IDEAS · METRICS · RISKS · DEPENDENCIES · TIMELINE · TOOLS · TEAM · REFERENCES) | I |
| `verify_tsmc.py`  | ~240 | Runnable falsifier checker — 8/8 HARD PASS + 6 DEFERRED, stdlib-only | I |
| `sources.md`      | ~390 | 18-source public citation database (SRC-TSMC-001..018) with key-claims + falsifier links | I |
| `CLOSURE.md`      | ~205 | Closure declaration — verdict `SPEC_PLUS_RUNNABLE`, 7-section honesty audit | I |
| `README.md`       | this | This navigation index | I |

**Out-of-directory cross-link artifacts**:

| File | Role |
|---|---|
| `../terafab/cross_doc_audit.py` | Extended at Wave I to also audit `[meta_domains.tsmc]` + `[meta_domains.intel]` (all four envelopes share one harness) |
| `../hexa.toml`                  | `[meta_domains.tsmc]` (Wave I) + `[meta_domain_closure]` (Wave I, envelopes 2→4 / falsifiers 17→31) |
| `../CATALOG.md`                 | T2 ENVELOPE table: tsmc row added at `SPEC_PLUS_RUNNABLE` |

---

## Quick-recall facts

Condensed from `tsmc.md` §1 "Headline anchors (sourced)" — public
TSMC disclosures only.

| key fact | value |
|---|---|
| TSMC founding              | 1987 (Morris Chang, Hsinchu) |
| Current leading-edge HVM   | N3 (2022-Q3, Apple A17 Pro lead customer) |
| TSMC global foundry rank   | #1 worldwide (TrendForce 2024-Q4, ≈ 61 %) |
| 2024 TSMC revenue          | ≈ $90 B USD (NT$2.9 T) |
| 2024 TSMC capex            | ≈ $30 B USD |
| N2 GAA HVM target          | 2025-Q4 → 2026-H1 |
| A16 (BSPDL) HVM target     | 2026-H2 → 2027 |
| A14 HVM target             | 2028 |
| Arizona Fab 21 cumulative  | ≈ $65 B USD (3 phases) + CHIPS Act $6.6 B + $5 B loans |
| AZ Phase 1 (N4) HVM        | 2025-Q1 announced milestone |
| AZ Phase 2 (N3 / N2) HVM target | 2027-Q4 → 2028 |
| JASM Kumamoto Phase 1 HVM  | 2024-Q4 (N28 / N22) |
| ESMC Dresden HVM target    | 2027-Q4 → 2028 |
| CoWoS capacity 2024 / 2026 | 35–40 kWPM → 70–80 kWPM target |
| Terminal claim (Mk.VI)     | Pure-play charter intact through 2033 |

---

## Falsifier register summary

7 falsifiers total — F-TSMC-1..7 (in `tsmc.md` §7).

▶ See `tsmc.md` §7 for the full register and stdlib-only honesty
check; see `verify_tsmc.py` for the dispatcher.

| ID | one-line claim | tier |
|---|---|---|
| F-TSMC-1 | TSMC retains ≥ 55 % global foundry share through 2027 | Mk.I (TrendForce / IDC / Counterpoint) |
| F-TSMC-2 | TSMC N2 reaches HVM by 2026-H1 with ≥ 4 lead customers | Mk.I (IR / Symposium 2026) |
| F-TSMC-3 | TSMC Arizona Fab 21 N2 HVM by 2027-Q4 per Symposium 2024 | Mk.II (Arizona Commerce + IR) — cross-link F-INTEL-6 |
| F-TSMC-4 | CoWoS capacity reaches 70 kWPM by 2026-Q4 per IR | Mk.I (DigiTimes / IR tracker) |
| F-TSMC-5 | TSMC remains pure-play (no captive-branded silicon) through 2030 | Mk.III (long-horizon charter) |
| F-TSMC-6 | A14 HVM by 2028 per public roadmap | Mk.III (long-horizon) |
| F-TSMC-7 | Arizona Phase-2 ramp ≥ 30 kWPM by 2028 (else hedge thesis) | Mk.II (politically loaded) |

**Cross-envelope link**: F-TSMC-3 (AZ Fab 21 N2 HVM) and F-INTEL-6
(Ohio One HVM) jointly test the US-sovereign-fab schedule signal.

---

## Runnable verification

Re-verify the meta-domain at any time (all stdlib-only, ~< 1 s each):

```
python3 tsmc/verify_tsmc.py                           # 8/8 HARD PASS, 6 DEFERRED
python3 terafab/cross_doc_audit.py                    # extended to also assert [meta_domains.tsmc] + [meta_domains.intel]
python3 verify_catalog.py                             # CATALOG.md ↔ hexa.toml ↔ filesystem agreement
```

`verify_tsmc.py` reproduces:

- **Master identity** `σ·φ = n·τ = J₂ = 24` (n=6 perfectness).
- **Egyptian split** `1/2 + 1/3 + 1/6 = 1` (Fraction equality).
- **TSMC capex didactic** `$30 B = $15 + $10 + $5` (Egyptian split
  applied to public 2024 capex).
- **AZ Fab 21 capex didactic** `$65 B = $12 + $25 + $28` (3-phase
  Arizona cumulative).
- **N3 → N2 cadence honesty** — observed ≈ 39 mo (vs J₂ = 24 mo);
  registers the stretch honestly.
- **N2 nm = φ** coincidence (exact-by-coincidence registration).
- **F-TSMC-1..7** register with documented numeric triggers
  (Mk.I → DEFERRED; F-TSMC-7 reports χ² ≈ 0.15 / p ≈ 0.87).

---

## Cross-link

- **Parent**: [`../README.md`](../README.md) — hexa-chip 29-verb /
  6-group baseline. The meta-domain does **not** add a verb; it wraps
  the 6 groups as an outer envelope.
- **Sisters**:
  - [`../terafab/README.md`](../terafab/README.md) — greenfield
    vertical-megafab envelope (Wave 6.x).
  - [`../exynos/README.md`](../exynos/README.md) — brownfield
    IDM-heritage envelope (Wave 7).
  - [`../intel/README.md`](../intel/README.md) — IDM-foundry-pivot
    envelope (Wave I, this wave).
- **Manifest**: `../hexa.toml` `[meta_domains.tsmc]` (envelope) +
  `[meta_domain_closure]` (verdict `SPEC_PLUS_RUNNABLE`,
  envelopes 2→4, falsifiers 17→31) — meta-domain registration
  (no verb addition; 29-verb / 6-group counts preserved).
- **Closure declaration**: [`CLOSURE.md`](CLOSURE.md) — full inventory,
  invariants asserted, honest caveats, what-not-claimed.
- **SSCB outreach dossier**: `~/core/ticket-out/07_outreach/_projects/hexa-chip-tsmc.{en,ko}.md`
  — D-option full-source-coverage outreach dossier
  (built at Wave I via `build/tools/build_full_repo_en.sh` +
  `build_full_repo.sh`; forbidden-token redaction PASS; Korean residue
  in `.en.md` = 0). Target recipient: TSMC Technology Symposium /
  TSMC R&D / OIP partner ecosystem (Cadence/Synopsys/Siemens) /
  Hsinchu academia (NTU / NCKU / NCTU device labs) / IEEE EDS
  Taiwan Chapter.

---

## License

MIT — see [`../LICENSE`](../LICENSE).

Copyright (c) 2026 dancinlab (박민우 <nerve011235@gmail.com>).

---

## Provenance

Public-source absorption 2026-05-12. Wave I single commit:
- Wave I meta-domain absorption (TSMC half): tsmc.md (15-section) +
  verify_tsmc.py + sources.md + README.md + CLOSURE.md +
  `[meta_domains.tsmc]` + `[meta_domain_closure]` envelopes 2→4 +
  extended `terafab/cross_doc_audit.py` + CATALOG.md T2 row.

**Zero NDA / proprietary / TSMC-internal content.** Every numeric /
date traces to the `tsmc.md` §15 reference list (TSMC IR + Annual
Report public filings, TSMC Technology Symposium 2024/2025 public
keynotes, Arizona Commerce Authority, SEC EDGAR 6-K, EU / Japan JV
announcements, public industry trackers — TrendForce / Counterpoint
/ IDC / DigiTimes / Nikkei Asia, IEEE IEDM / VLSI Symposium / ISSCC
proceedings, Samsung / Intel competitor public commentary).
Structured citation database in [`sources.md`](sources.md)
(18 entries, `SRC-TSMC-001..018`). Korean editorial tone is
heritage framing only — **no TSMC partnership, no NDA, no
proprietary PDK content, no SOW-protected partnership detail**.
