# 🏭 terafab — Meta-Domain (Musk Vertically-Integrated Megafab)

> **Outer envelope wrapping the 6 hexa-chip groups; not a verb;
> 28-verb / 6-group counts unchanged.**

[![Type: meta-domain](https://img.shields.io/badge/type-meta--domain-purple.svg)](terafab.md)
[![Wraps: 6 groups](https://img.shields.io/badge/wraps-6%20groups-blue.svg)](#cross-link)
[![Falsifiers: 7+3](https://img.shields.io/badge/falsifiers-7%2B3-orange.svg)](#falsifier-register-summary)
[![Sources: external (no NDA)](https://img.shields.io/badge/sources-external%20%28no%20NDA%29-brightgreen.svg)](terafab.md#15-references)
[![Closure: SPEC_PLUS_RUNNABLE](https://img.shields.io/badge/closure-SPEC__PLUS__RUNNABLE-brightgreen.svg)](CLOSURE.md)
[![Verify: 6/6 + 8/8](https://img.shields.io/badge/verify-6%2F6%20%2B%208%2F8-brightgreen.svg)](#runnable-verification)
[![Cross-doc audit](https://img.shields.io/badge/cross--doc-PASS-brightgreen.svg)](cross_doc_audit.py)

> **Status (2026-05-11, commits `f44982f` + `61d2115`)**: Wave A/B/C/D/E
> all landed — meta-domain at **`SPEC_PLUS_RUNNABLE` closure** (see
> [`CLOSURE.md`](CLOSURE.md)). 17 files in `terafab/` + runnable verify
> harness in `tests/test_terafab_meta.py` + CLI subcommand. Verb surface
> (29-verb / 6-group) and v1.0.0 closure verdict unchanged — Terafab is
> an *outer envelope*, not a new verb.

---

## Why this directory exists

Terafab is the first **meta-domain** in `hexa-chip` — an outer envelope,
not a verb. It absorbs Musk's vertically-integrated megafab announcement
(2026-03-21, Intel-joined 2026-04-07, $55 B / $119 B Texas-filed
2026-05-06) and projects it onto the 6-group structure
(architecture · design · process · packaging · accelerator ·
consciousness). The meta-domain is required because Terafab is not a
*better* foundry — it is a *different topology*: vertical, captive,
single-roof, single-owner. The 28-verb framework needs an outer wrapper
to register that topology before any of the 28 verbs can be honestly
re-evaluated against it. Zero NDA / proprietary content; every claim
traces to the `terafab.md` §15 source list.

---

## Files in this directory

All Wave A/B/C/D/E landed. 17 files; aggregate ≈ 5,800 lines.

| File | Lines | Scope | Wave |
|---|---:|---|---|
| `terafab.md`                  | 665 | Main 15-section meta-domain document (WHY · COMPARE · REQUIRES · STRUCT · FLOW · VERIFY · EVOLVE · IDEAS · METRICS · RISKS · DEPENDENCIES · TIMELINE · TOOLS · TEAM · REFERENCES) | A |
| `falsifier-mk2-scaffold.md`   | 309 | Mk.II falsifier reformulation scaffold (per-falsifier table, F-TERAFAB-8/9/10, χ² recipe, data-collection rubric) | A |
| `README.md`                   | —   | This navigation index | A |
| `mapping-28verbs.md`          | 230 | Per-verb mapping of all 29 hexa-chip verbs onto Terafab T0/T1/T2/T3 tiers (13 primary / 5 secondary / 11 spec / 0 unmapped) | A |
| `group-architecture.md`       | 126 | Group-A integration sheet — `architecture · isa_n6 · hexa1` ↔ Terafab T0 design loop (gap +2) | B |
| `group-design.md`             | 125 | Group-B integration sheet — `design · dse_pipeline · rtl_gen · eda · verify_test` ↔ T0 (gap +2; `eda` honestly external) | B |
| `group-process.md`            | 141 | Group-C integration sheet — `process · materials · wafer · yield · thermal_power` ↔ Intel 14A (gap +3; `yield` is bottleneck) | B |
| `group-packaging.md`          | 140 | Group-D integration sheet — `packaging · advanced_packaging · chip_3d · hbm · interconnect · sc` ↔ T2 one-roof (gap +3; `hbm` direct test of F-TERAFAB-2) | B |
| `group-accelerator.md`        | 149 | Group-E integration sheet — `npu_n6 · pim · photonic · accel · asic · hexa_pim · hexa_3d · hexa_wafer` ↔ T3 product (gap +2) | B |
| `group-consciousness.md`      | 133 | Group-F integration sheet — `conscious_chip · conscious_soc` ↔ T3 (lightest coupling; gap +2) | B |
| `verify_terafab.py`           | 249 | Runnable falsifier checker — 6/6 HARD PASS + 9 DEFERRED, stdlib-only | C |
| `cross_doc_audit.py`          | 255 | Cross-doc agreement auditor — `terafab.md` ↔ `hexa.toml` ↔ `scaffold` ↔ `README.md` (ALL FACTS AGREE) | C |
| `CLOSURE.md`                  | 205 | Closure declaration — verdict `SPEC_PLUS_RUNNABLE`, 7-section honesty audit | D |
| `sources.md`                  | 390 | 16-source citation database (`SRC-TERAFAB-001..016`) with key-claims + falsifier links | D |
| `risks-deep.md`               | 353 | Quantitative P×I risk scoring (8 risks, top-3: R5 zero-fab 5.60 / R1 capex 4.80 / R6 thermal 4.50; agg 32.6/80) | D |
| `diff-vs-tsmc.md`             | 308 | 4-way comparison — Terafab vs TSMC AZ Fab 21 / Samsung Taylor / Intel AZ across 10 dimensions | D |
| `orbital-physics-deep.md`     | 409 | Stefan-Boltzmann / Carnot / mass-budget physics deep dive (radiator floor 297-3,110 km²; Starship 9.5k-48k flights raw) | E |
| `glossary.md`                 | 177 | 63-entry terminology dictionary (process / packaging / memory / orbital / companies / falsifier-related / n=6) | E |
| `scenarios.md`                | 500 | 5 future scenarios with falsifier-branch outcomes (S1..S5 Σp=1.00; joint novelty-landing ≤ 25%) | E |
| `competitive-landscape.md`    | 310 | Global megafab landscape (USA / East Asia / EU / India) + scarce-resource competition | E |
| `pipeline-stages.md`          | 208 | Reverse view — Terafab-as-frame, decomposed by manufacturing pipeline (T0..T5 + auxiliary); 26 sub-stage honesty matrix → **30.8% truly in-house** | F |

**Out-of-directory cross-link artifacts**:

| File | Role |
|---|---|
| `../tests/test_terafab_meta.py` | 8/8 unittest invariants (envelope claim, verb-count preservation, absorbs ≡ modules) |
| `../cli/hexa-chip-terafab.py`   | Python CLI mirror (the `.hexa` runtime is bespoke; this exposes `terafab` subcommand standalone) |
| `../cli/hexa-chip.hexa`         | Adds `terafab` dispatch to the canonical CLI |
| `../hexa.toml`                  | `[meta_domains.terafab]` (Wave 6) + `[meta_domain_closure]` (Wave 6.x) blocks |

---

## Quick-recall facts

Condensed from `terafab.md` §1 "Headline claims" (sourced).

| key fact | value |
|---|---|
| announce date              | 2026-03-21 (Musk) |
| Intel join                 | 2026-04-07 (14A licensing partner) |
| Texas filing               | 2026-05-06 ($55 B initial / $119 B total prototype) |
| process                    | 2 nm prototype → Intel 14A (1.4 nm RibbonFET + PowerVia) full-scale |
| capacity                   | "few thousand" wafers/mo prototype → 1 M wafer-starts/mo full-scale |
| allocation                 | 80% orbital · 20% ground (per DCD / Wikipedia) |
| first product              | Tesla AI5 (5th-gen Autopilot) — small batch 2026, volume 2027 |
| terminal claim             | > 1 TW AI-compute / yr (Mk.VI 2035+) |

---

## Falsifier register summary

10 falsifiers total — 7 Mk.I (in `terafab.md` §7) + 3 Mk.II (added in
`falsifier-mk2-scaffold.md` §3).

▶ See `terafab.md` §7 for the full Mk.I register and stdlib-only honesty
check; see `falsifier-mk2-scaffold.md` §2 for the Mk.II reformulation
table (watch-source · numeric trigger · sharper test).

| ID | one-line claim | tier |
|---|---|---|
| F-TERAFAB-1  | Prototype capex stays at $55 B initial / $119 B total | Mk.I (filing) |
| F-TERAFAB-2  | DRAM/HBM produced under same roof as logic (no shipping) | Mk.I (supply-chain) |
| F-TERAFAB-3  | Full-scale capex falls within $5–13 T analyst envelope | Mk.I (long-horizon) |
| F-TERAFAB-4  | Orbital share viable iff Starship reusable launch ≤ $200/kg by 2032 | Mk.I |
| F-TERAFAB-5  | 1 TW AI-compute/yr delivered (audited by 2035) | Mk.I (terminal) |
| F-TERAFAB-6  | Intel 14A volume by 2030 (no slip past 2031) | Mk.I (Intel-roadmap) |
| F-TERAFAB-7  | n=6 lattice projection beats chance (currently p ≈ 0.86 → reformulate Mk.II) | Mk.I → Mk.II |
| F-TERAFAB-8  | Groundbreaking → first-tool-install latency ≤ J₂ = 24 mo (TSMC AZ benchmark) | Mk.II (new) |
| F-TERAFAB-9  | Austin utility envelope ≥ 500 MW & ≥ 10 ML/day (one-roof load) | Mk.II (new) |
| F-TERAFAB-10 | Workforce ramp ≥ 500 net engineering hires/quarter through 2027 | Mk.II (new) |

---

## Runnable verification

Re-verify the meta-domain at any time (all stdlib-only, ~< 1 s each):

```
python3 terafab/verify_terafab.py        # 6/6 HARD PASS, 9 DEFERRED Mk.II/III/V/VI
python3 terafab/cross_doc_audit.py       # ALL FACTS AGREE
python3 -m unittest tests/test_terafab_meta.py -v   # 8/8 OK
python3 cli/hexa-chip-terafab.py         # CLI subcommand mirror — JSON / text modes
```

`verify_terafab.py` reproduces:

- Master identity `σ·φ = n·τ = J₂ = 24` (n=6 perfectness).
- Egyptian split `1/2 + 1/3 + 1/6 = 1` (Fraction equality).
- Capex didactic projection `J₂ × 5 = $120 B` vs filed `$119 B` (drift 0.84%).
- Stefan-Boltzmann floor for 1 TW orbital ≈ 1,306 km² @ (350 K, ε=0.9).
- F-TERAFAB-1..10 register with documented triggers (Mk.I → DEFERRED; F-TERAFAB-7 reports χ²=0.20, p=0.86).

---

## Cross-link

- **Parent**: [`../README.md`](../README.md) — hexa-chip 29-verb /
  6-group baseline. The meta-domain does **not** add a verb; it wraps
  the 6 groups as an outer envelope.
- **Sister**: [`../exynos/exynos.md`](../exynos/exynos.md) — Korean-fab
  heritage comparator (15-section template that this meta-domain mirrors).
- **Counter-strategy**: [`../proposals/samsung-foundry-hexa-6stage.md`](../proposals/samsung-foundry-hexa-6stage.md)
  §8 — Samsung counter-offer that this meta-domain reframes as
  strategically valuable iff Terafab succeeds.
- **Manifest**: `../hexa.toml` `[meta_domains.terafab]` (envelope) +
  `[meta_domain_closure]` (verdict `SPEC_PLUS_RUNNABLE`) — meta-domain
  registration (no verb addition; 29-verb / 6-group counts preserved).
- **Closure declaration**: [`CLOSURE.md`](CLOSURE.md) — full inventory,
  invariants asserted, honest caveats, what-not-claimed.

---

## License

MIT — see [`../LICENSE`](../LICENSE).

Copyright (c) 2026 dancinlab (박민우 <nerve011235@gmail.com>).

---

## Provenance

External-source absorption 2026-05-11. Two commits:
- Wave 6 absorption: `f44982f` (4 files, +1,117 lines)
- Wave 6.x closure deepening: `61d2115` (25 files, +4,708 lines)

Zero NDA / proprietary content; every numeric / date traces to the
`terafab.md` §15 reference list (Wikipedia, Tom's Hardware, The Register,
CNBC, DCD, Electrek, TechCrunch, Yahoo Finance, CBS, TweakTown, Trefis,
Gear Musk, eeNews Europe, The Next Web, Teslarati, Cloud News).
Structured citation database in [`sources.md`](sources.md) (16 entries,
`SRC-TERAFAB-001..016`). Korean editorial tone is framing only —
Samsung / SK·Hynix heritage references invoke organising vocabulary,
not proprietary data.
