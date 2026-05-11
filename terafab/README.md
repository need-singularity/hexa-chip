# 🏭 terafab — Meta-Domain (Musk Vertically-Integrated Megafab)

> **Outer envelope wrapping the 6 hexa-chip groups; not a verb;
> 28-verb / 6-group counts unchanged.**

[![Type: meta-domain](https://img.shields.io/badge/type-meta--domain-purple.svg)](terafab.md)
[![Wraps: 6 groups](https://img.shields.io/badge/wraps-6%20groups-blue.svg)](#cross-link)
[![Falsifiers: 7+3](https://img.shields.io/badge/falsifiers-7%2B3-orange.svg)](#falsifier-register-summary)
[![Sources: external (no NDA)](https://img.shields.io/badge/sources-external%20%28no%20NDA%29-brightgreen.svg)](terafab.md#15-references)
[![Closure: SPEC_FIRST](https://img.shields.io/badge/closure-SPEC__FIRST-informational.svg)](#status)

> **Status (2026-05-11)**: Wave A landed — `terafab.md` (15-section
> meta-domain) + `falsifier-mk2-scaffold.md` (Mk.II reformulation).
> Wave B/C will add per-group integration files, the 28-verb mapping
> table, and a runnable `verify_terafab.hexa` sandbox. The 28-verb /
> 6-group baseline of `hexa-chip` is unchanged — Terafab is an *outer
> envelope*, not a new verb.

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

| File | Lines | Scope | Wave |
|---|---:|---|---|
| `terafab.md`                  | 665 | Main 15-section meta-domain document (WHY · COMPARE · REQUIRES · STRUCT · FLOW · EVOLVE · VERIFY · IDEAS · METRICS · RISKS · DEPENDENCIES · TIMELINE · TOOLS · TEAM · REFERENCES) | A (landed) |
| `falsifier-mk2-scaffold.md`   | 309 | Mk.II falsifier reformulation scaffold (per-falsifier table, F-TERAFAB-8/9/10, χ² recipe, data-collection rubric) | A (landed) |
| `mapping-28verbs.md`          | —   | Per-verb mapping of the 28 hexa-chip verbs onto the Terafab T0/T1/T2/T3 tiers | B (pending) |
| `group-architecture.md`       | —   | Group-A integration sheet (architecture · isa_n6 · hexa1 ↔ Terafab T0 design loop) | B (pending) |
| `group-design.md`             | —   | Group-B integration sheet (design · dse_pipeline · rtl_gen · eda · verify_test) | B (pending) |
| `group-process.md`            | —   | Group-C integration sheet (process · materials · wafer · yield · thermal_power ↔ Intel 14A) | B (pending) |
| `group-packaging.md`          | —   | Group-D integration sheet (packaging · advanced_packaging · chip_3d · hbm · interconnect · sc) | B (pending) |
| `group-accelerator.md`        | —   | Group-E integration sheet (npu_n6 · pim · photonic · accel · asic · hexa_pim · hexa_3d · hexa_wafer) | B (pending) |
| `group-consciousness.md`      | —   | Group-F integration sheet (conscious_chip · conscious_soc) | B (pending) |
| `verify_terafab.hexa`         | —   | Runnable sandbox — n=6 lattice projection check + F-TERAFAB-1..10 register dump | C (pending) |
| `falsifier-mk2-log.md`        | —   | Quarterly observations populating `MK2_OBSERVED` per the §5 data-collection rubric | C (pending) |

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

## Cross-link

- **Parent**: [`../README.md`](../README.md) — hexa-chip 28-verb /
  6-group baseline. The meta-domain does **not** add a verb; it wraps
  the 6 groups as an outer envelope.
- **Sister**: [`../exynos/exynos.md`](../exynos/exynos.md) — Korean-fab
  heritage comparator (15-section template that this meta-domain mirrors).
- **Counter-strategy**: [`../proposals/samsung-foundry-hexa-6stage.md`](../proposals/samsung-foundry-hexa-6stage.md)
  §8 — Samsung counter-offer that this meta-domain reframes as
  strategically valuable iff Terafab succeeds.
- **Manifest**: `../hexa.toml` `[meta_domains.terafab]` —
  meta-domain registration (no verb addition; 28-verb / 6-group counts
  preserved).

---

## License

MIT — see [`../LICENSE`](../LICENSE).

Copyright (c) 2026 need-singularity (박민우 <nerve011235@gmail.com>).

---

## Provenance

External-source absorption 2026-05-11. Wave A landed at commit
`f44982f`. Zero NDA / proprietary content; every numeric / date traces
to the `terafab.md` §15 reference list (Wikipedia, Tom's Hardware,
The Register, CNBC, DCD, Electrek, TechCrunch, Yahoo Finance, CBS,
TweakTown, Trefis, Gear Musk, eeNews Europe, The Next Web, Teslarati,
Cloud News). Korean editorial tone is framing only — Samsung / SK·Hynix
heritage references invoke organising vocabulary, not proprietary data.
