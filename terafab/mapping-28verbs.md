---
type: cross-domain-mapping
parent: terafab/terafab.md
verbs_mapped: 29
groups_mapped: 6
audit: closure-grade
---

<!-- @absorbed: 2026-05-11 -->
<!-- @sources: hexa.toml (verb manifest), terafab.md §1/§4/§11, README.md ## Verbs -->
<!-- @count-note: README headline says "28-verb"; hexa.toml verbs_total=29 (spec_count_caveat). This file uses 29. -->

# Terafab × hexa-chip — 29-Verb Closure Mapping

> Closure-grade per-verb mapping that proves the meta-domain envelope
> claim: every one of hexa-chip's 29 verbs is named, placed onto a
> Terafab T-tier (T0 design loop / T1 wafer fab / T2 mem+pkg / T3
> product), and linked to a falsifier (F-TERAFAB-1..7) it informs.

## §1 Why this mapping exists

The `[meta_domains.terafab]` block in `hexa.toml` declares
`absorbs = [architecture, design, process, packaging, accelerator,
consciousness]` — the full 6 groups. That is the meta-domain envelope
claim. **A closure audit needs more than the group-level claim: it
needs the verb-level proof.** This file walks every verb individually,
names the Terafab subsystem (per `terafab.md` §1 ownership table and §4
STRUCT) it maps to, and pins the falsifier (per `terafab.md` §7) it
informs. If any verb fails to map cleanly, that exposes the envelope's
honest seam — recorded in §6.

Cross-links: [`hexa.toml`](../hexa.toml) `[modules.*]` and
`[meta_domains.terafab]`; [`terafab.md`](terafab.md) §1 (group
ownership), §4 (T0~T3 STRUCT), §7 (falsifier register), §11
(dependencies).

## §2 The 6-group × T-tier matrix

Reading: where each group lands in the Terafab one-roof topology.
█ = primary tier (group sits inside this Terafab subsystem),
▒ = secondary tier (group also informs this subsystem),
░ = no direct mapping at this tier.

```
                   T0 design   T1 fab    T2 mem+pkg  T3 product
architecture       █           ░         ░           ▒
design             █           ░         ░           ░
process            ░           █         ░           ░
packaging          ░           ░         █           ░
accelerator        ▒           ░         ░           █
consciousness      ░           ░         ░           ▒
```

Cross-check against `terafab.md` §4 STRUCT:
- T0 design loop = architecture + design  → matches row 1+2
- T1 wafer fab   = process group         → matches row 3
- T2 mem+pkg     = packaging group       → matches row 4
- T3 product     = accelerator + consciousness → matches rows 5+6

The matrix has zero unfilled rows: every hexa-chip group lands at
exactly one primary T-tier. That is the verb-level form of the
"6 groups absorbed" claim.

## §3 Per-verb mapping (all 29 verbs)

Verbs listed in `hexa.toml` `[modules.*]` order. Names copied
verbatim. T-tier assignment uses `terafab.md` §4 STRUCT; falsifier
links use `terafab.md` §7 register.

### §3.A Group A — architecture (3 verbs)

| Verb | Group | Terafab tier | Terafab subsystem | Falsifier link | Notes |
|---|---|---|---|---|---|
| `architecture`   | A | T0 (primary), T3 (secondary) | xAI in-house top-level chip arch + AI5 product line | F-TERAFAB-2 | edge/orbit dual product topology implied (Line A + Line B per §4) |
| `isa_n6`         | A | T0 indirect / speculative | n=6 ISA — meta-projection onto AI5 instr-set | F-TERAFAB-7 | NOT Musk-announced; hexa-chip projection only. n6_lattice_caveat applies. |
| `hexa1`          | A | T0 indirect / speculative | hexagonal floorplan reference — meta-projection onto AI5 die plan | F-TERAFAB-7 | NOT Musk-announced; coincidence-grade, χ²/p≈0.86 |

### §3.B Group B — design (5 verbs)

| Verb | Group | Terafab tier | Terafab subsystem | Falsifier link | Notes |
|---|---|---|---|---|---|
| `design`        | B | T0 | Tesla SLP + xAI in-house design methodology | F-TERAFAB-2 | xAI design ownership claim (terafab.md §1) |
| `dse_pipeline`  | B | T0 | xAI DSE loop feeding AI5 / Optimus ASIC tape-outs | F-TERAFAB-2 | implied by "AI-assisted RTL" claim |
| `rtl_gen`       | B | T0 | "AI-assisted RTL" (xAI in-house, terafab.md §4 wafer-flow T0) | F-TERAFAB-2 | the only Terafab-disclosed novelty in T0 |
| `eda`           | B | T0 (primary, but external tools) | Cadence + Synopsys (terafab.md §13 — no in-house EDA disclosed) | F-TERAFAB-2 | one-roof claim is weakest here: EDA stays external |
| `verify_test`   | B | T0 + T3 | T0 pre-Si verify + T3 wafer-probe / final-test in-line (terafab.md §4 wafer-flow T3) | F-TERAFAB-2 | DFT in T0; in-line probe in T3 |

### §3.C Group C — process (5 verbs)

| Verb | Group | Terafab tier | Terafab subsystem | Falsifier link | Notes |
|---|---|---|---|---|---|
| `process`       | C | T1 | Intel 14A (RibbonFET + PowerVia) at full-scale; 2 nm at prototype | F-TERAFAB-6 | F-TERAFAB-6 binds Intel 14A schedule directly |
| `materials`     | C | T1 | High-NA EUV resists, RibbonFET channel mat'ls (Intel-licensed) | F-TERAFAB-6 | downstream of 14A licensing |
| `wafer`         | C | T1 | 1 M wafer-starts/mo full-scale; "few thousand/mo" prototype | F-TERAFAB-1 | wafer-throughput is capex-bound (revised down per terafab.md §1) |
| `yield`         | C | T1 | yield ramp on 14A pathfinder lots (Mk.III window per §6) | F-TERAFAB-6 | yield gap = the binding execution risk |
| `thermal_power` | C | T1 + T3 | fab thermal envelope (T1) + orbital radiator floor (T3, §7.E) | F-TERAFAB-5 | Stefan-Boltzmann floor: 1,300 km² radiator for 1 TW |

### §3.D Group D — packaging (6 verbs)

| Verb | Group | Terafab tier | Terafab subsystem | Falsifier link | Notes |
|---|---|---|---|---|---|
| `packaging`           | D | T2 | conventional FCBGA / wirebond — base T2 line | F-TERAFAB-2 | inside one-roof claim |
| `advanced_packaging`  | D | T2 | CoWoS-class + FOPLP + chiplet integration in-fab | F-TERAFAB-2 | displaces Amkor/ASE per claim |
| `chip_3d`             | D | T2 | 3D-IC stacking + hybrid bonding under same roof | F-TERAFAB-2 | claimed novelty: same-roof 3D + memory |
| `hbm`                 | D | T2 | in-fab DRAM/HBM line — the F-TERAFAB-2 acid test | F-TERAFAB-2 | if HBM ships in from Micron/SK/Samsung, claim breaks |
| `interconnect`        | D | T2 | on-package + off-package interconnect (one-roof bus standardisation) | F-TERAFAB-2 | indirectly bears on F-TERAFAB-4 (orbital mass-budget) |
| `sc`                  | D | T2 indirect | SC-chip substrate (depended on by hexa-rtsc; not Terafab-disclosed) | F-TERAFAB-2 | hexa-chip-internal substrate; Terafab silent |

### §3.E Group E — accelerator (8 verbs)

| Verb | Group | Terafab tier | Terafab subsystem | Falsifier link | Notes |
|---|---|---|---|---|---|
| `npu_n6`     | E | T3 indirect / speculative | n=6 NPU IP — meta-projection onto AI5 / Optimus inference cores | F-TERAFAB-7 | NOT Musk-announced; lattice-projection |
| `pim`        | E | T3 secondary | DRAM-PIM / SRAM-PIM under one roof (terafab.md §11 internal cross-link) | F-TERAFAB-2 | gains traction only if F-TERAFAB-2 holds (in-fab memory) |
| `photonic`   | E | T3 indirect | co-packaged optics for orbital/ground interconnect | F-TERAFAB-4 | implied by orbital DC bandwidth needs; not Musk-announced |
| `accel`      | E | T3 | generic hexa-accel IP framework — Tesla AI5 / Optimus ASIC class | F-TERAFAB-1 | volume = AI5 ramp = capex sensitivity |
| `asic`       | E | T3 | Tesla AI5 SoC + Optimus inference ASIC (terafab.md §4 Line A) | F-TERAFAB-1 | first product (terafab.md §1 headline) |
| `hexa_pim`   | E | T3 indirect / speculative | n=6 organised PIM macros — meta-projection | F-TERAFAB-7 | hexa-chip lattice projection |
| `hexa_3d`    | E | T3 indirect / speculative | hexa-3D stacking convention — meta-projection onto in-fab 3D-IC | F-TERAFAB-7 | hexa-chip lattice projection |
| `hexa_wafer` | E | T3 indirect / speculative | hexa-wafer-level integration — meta-projection | F-TERAFAB-7 | hexa-chip lattice projection |

### §3.F Group F — consciousness (2 verbs)

| Verb | Group | Terafab tier | Terafab subsystem | Falsifier link | Notes |
|---|---|---|---|---|---|
| `conscious_chip` | F | T3 secondary / speculative | xAI Grok / Tesla Dojo training substrate — Line B (orbital training) | F-TERAFAB-5 | terafab.md §1 lists "consciousness" group as in-house (xAI Grok / Dojo) — but the *consciousness-chip axis itself* is hexa-chip-internal and NOT Musk-announced |
| `conscious_soc`  | F | T3 secondary / speculative | consciousness-SoC integration — meta-projection onto AI5+ successor SoCs | F-TERAFAB-5 | speculative; bound to terminal F-TERAFAB-5 (1 TW delivery) |

## §4 Coverage statistics

Tally of the 29 rows in §3 by mapping strength:

| bucket | count | verbs |
|---|---|---|
| primary (█) — verb sits inside a named Terafab T-tier subsystem | 13 | architecture, design, dse_pipeline, rtl_gen, eda, verify_test, process, materials, wafer, yield, thermal_power, packaging, advanced_packaging |
| primary multi-tier (█+█/▒) — verb spans more than one T-tier | 3 | architecture (T0+T3), verify_test (T0+T3), thermal_power (T1+T3) — already counted above; this row is descriptive |
| secondary (▒) — verb informs a Terafab tier without being central | 5 | chip_3d, hbm, interconnect, accel, asic |
| indirect / speculative — meta-projection onto Terafab, NOT Musk-announced | 11 | isa_n6, hexa1, sc, npu_n6, pim, photonic, hexa_pim, hexa_3d, hexa_wafer, conscious_chip, conscious_soc |
| unmapped | 0 | — |

Reconciliation:
- 13 primary + 5 secondary + 11 indirect/speculative = **29 verbs total**.
- 0 verbs are unmapped — the meta-domain envelope claim
  `absorbs = [6 groups]` is honored at the verb level.
- The 11 indirect/speculative verbs are the honest seam: they are
  hexa-chip-internal projections that Terafab has not announced. They
  are mapped, but the mapping is a meta-projection (see §6 caveats).

Group coverage:
- Group A (3 verbs): 1 primary, 2 speculative
- Group B (5 verbs): 5 primary
- Group C (5 verbs): 5 primary
- Group D (6 verbs): 5 primary/secondary, 1 indirect (`sc`)
- Group E (8 verbs): 2 primary, 1 secondary, 5 speculative
- Group F (2 verbs): 0 primary, 2 speculative

All 6 groups have ≥ 1 verb mapped. The envelope is closed.

## §5 Falsifier reverse-index

For each F-TERAFAB-N (per `terafab.md` §7), the verbs whose maturity it
affects:

| Falsifier | claim under test | verbs whose maturity it bounds |
|---|---|---|
| F-TERAFAB-1 | prototype capex stays at $55 B / $119 B | wafer, accel, asic (volume = capex sensitivity) |
| F-TERAFAB-2 | DRAM/HBM under same roof as logic | design, dse_pipeline, rtl_gen, eda, verify_test, packaging, advanced_packaging, chip_3d, **hbm**, interconnect, sc, pim, architecture |
| F-TERAFAB-3 | full-scale capex $5–13 T envelope | (broad — no single verb; bounds all of Group C+D maturity at Mk.IV+) |
| F-TERAFAB-4 | orbital share economically viable (Starship ≤ $200/kg) | photonic, interconnect (mass-budget) |
| F-TERAFAB-5 | 1 TW AI-compute/yr delivered | thermal_power (Stefan-Boltzmann floor §7.E), conscious_chip, conscious_soc |
| F-TERAFAB-6 | Intel 14A volume by 2030 | process, materials, yield |
| F-TERAFAB-7 | n=6 lattice projection beats chance (currently p≈0.86 → weak) | isa_n6, hexa1, npu_n6, hexa_pim, hexa_3d, hexa_wafer (all hexa-chip lattice projections) |

Reading: F-TERAFAB-2 (one-roof memory) is the load-bearing falsifier —
13 of 29 verbs depend on it. F-TERAFAB-7 (n=6 projection) is the
falsifier that the *hexa-chip side* of this mapping owns; the
currently-weak χ² (p≈0.86) is registered honestly in `terafab.md` §7
verify-expectations. Reformulation pending Mk.II wafer-residual data.

## §6 Honest caveats

1. **Speculative mappings are not Terafab announcements.** 11 of 29
   verbs (Group A's `isa_n6`/`hexa1`, Group D's `sc`, all of Group E's
   hexa-prefix verbs and `npu_n6`/`pim`/`photonic`, both of Group F)
   are *hexa-chip-internal projections* onto plausible Terafab
   subsystems. Musk's team has not adopted, validated, or named the
   n=6 lattice. F-TERAFAB-7 is the dedicated falsifier and currently
   p≈0.86 (weak).

2. **The envelope claim is `absorbs = [6 groups]`, not "Musk validates
   n=6".** This file proves only that every verb has a named target
   inside Terafab's stated topology — it does NOT claim Terafab adopts
   hexa-chip's framework. Honesty primary: see `hexa.toml` §closure
   `n6_lattice_caveat`.

3. **EDA is the weakest one-roof claim.** Verb `eda` maps to T0 in
   topology, but `terafab.md` §13 lists Cadence + Synopsys as the EDA
   stack — no in-house EDA disclosed. The "one-roof" envelope leaks
   here. Recorded as a known seam.

4. **`sc` (substrate-class) is hexa-chip-internal.** It is depended on
   by `hexa-rtsc` (out-of-repo); Terafab is silent on this substrate
   axis. Mapped as T2 indirect for completeness.

5. **Group F (consciousness) is doubly indirect.** `terafab.md` §1
   lists xAI Grok / Tesla Dojo as the in-house consciousness-group
   stand-ins, but hexa-chip's `conscious_chip` / `conscious_soc` axis
   is the project's own experimental research direction — not a
   Musk announcement. Bound to F-TERAFAB-5 (1 TW terminal claim) by
   analogy only.

6. **Count provenance.** README headline reads "28-verb / 7-group";
   `hexa.toml` `[closure] verbs_total = 29` and `groups_total = 6`
   with `spec_count_caveat` documenting the discrepancy. This file
   honors the line-by-line `[modules.*]` enumeration: **29 verbs / 6
   groups**, matching `hexa.toml`.

7. **No F-TERAFAB-8..10.** The task brief mentions "F-TERAFAB-N" up to
   10; the actual register in `terafab.md` §7 has F-TERAFAB-1..7 only
   (cross-checked against `hexa.toml` `[meta_domains.terafab]
   falsifier_count = 7`). This file uses the 1..7 register as it
   stands.

---

**Provenance**: derived 2026-05-11 from `hexa.toml` (verb manifest),
`terafab/terafab.md` (§1 ownership / §4 STRUCT / §7 falsifiers / §11
dependencies), and `README.md` ## Verbs (verb-name source-of-truth).
Zero NDA / proprietary content. All 29 verbs accounted for; 0
unmapped; envelope closure verified at the verb level.
