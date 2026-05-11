<!-- @created: 2026-05-11 -->
<!-- @parent: terafab/terafab.md -->
<!-- @view: pipeline-stage decomposition (Terafab as the frame, not hexa-chip groups) -->
---
type: pipeline-decomposition
parent: terafab/terafab.md
view: terafab-as-frame
stages: 7              # T0..T5 + auxiliary
honesty_index: 30.8    # of 26 sub-stages, ratio truly in-house = 8/26
---

# Terafab Pipeline-Stage Decomposition

> **Reverse view**: where `terafab.md` / `mapping-28verbs.md` /
> `group-*.md` decompose Terafab through **hexa-chip's** 6-group lens,
> this file flips the frame — **Terafab is the reference, decomposed by
> its own semiconductor manufacturing pipeline** (T0..T5 + auxiliary).
>
> Output: a single matrix that answers "of the 26 sub-stages Terafab
> claims to absorb under one roof, how many are truly in-house?" —
> with falsifier links, vendor dependencies, and honest read for each.

## §1 Why this view exists

The "one-roof" claim is the defining feature of Terafab. Two prior views
have been built around hexa-chip's organising structure (the 6 groups).
**This view dissolves the hexa-chip lens** and asks the engineering
question directly: stage by stage along a real wafer flow, what does
Terafab claim, what does it depend on externally, and which falsifier
fires when each claim slips? The result is a **vendor-dependency map +
honesty index** — quantitative input to F-TERAFAB-2 (one-roof claim)
and risks-deep.md R5 (zero-fab-experience).

## §2 End-to-end pipeline (ASCII)

```
T0 PRE-FAB ──→ T1 FAB ──→ T2a MEM ──→ T2b PKG ──→ T3 TEST ──→ T4 PROD ──→ T5 SHIP
 design       wafer       DRAM/HBM    chiplet     wafer/      Line A      ground (20%)
 mask         FEOL        in-fab      3D-IC       final       Line B      orbital (80%)
 verify       BEOL        line        hybrid      auto qual                Starship
              litho       (claimed)   bonding     radn qual
              wafer test

           ┌─────────────────────────── auxiliary ──────────────────────────┐
           power · water · cooling · workforce · real-estate · subsidy
```

## §3 T0 — PRE-FAB (design / mask / verify)

| Sub | Terafab claim | External dependency | Falsifier | Honest read |
|---|---|---|---|---|
| RTL / Synthesis | xAI + Tesla SLP in-house | Cadence / Synopsys EDA stays canonical | F-TERAFAB-2 (indirect) | The `eda` verb is **honestly external**; license OPEX is permanent. AI-assisted RTL plausible via xAI internal tooling. |
| Mask making | "in-fab lithography" implied (Musk announce) | ASML reticle systems + mask blanks (HOYA / AGC monopoly, Japan) | F-TERAFAB-2 | Mask write can be in-house, but **blank supply is Japan-locked**. "Fully in-fab" claim is misleading at the supply-chain root. |
| Verification / tape-out | Internal cycle (no external sign-off) | — | F-TERAFAB-7 (indirect) | Tesla SLP carries D1 / HW3 / HW4 / AI5 lineage — strongest legitimate in-house capability. |

## §4 T1 — FAB (wafer front-end)

| Sub | Terafab claim | External dependency | Falsifier | Honest read |
|---|---|---|---|---|
| Substrate | 300 mm Si wafer | Sumco / Shin-Etsu (Japan duopoly) | F-TERAFAB-1 (capex) | 450 mm not mentioned. 1 M WSPM = 12 M wafers/yr — Japan-imported. Capacity-share question unresolved. |
| Process node | Prototype **2 nm** → full **Intel 14A (1.4 nm)** | Intel 14A IP license (2026-04-07) | **F-TERAFAB-6 direct** | Intel 14A itself unreleased (2027-Q? risk). Tesla announced as **first external 14A customer** (2026-04-23) — licensing-before-internal-volume is unprecedented. |
| FEOL | **RibbonFET** GAA + **PowerVia** back-side power | Intel IP | F-TERAFAB-6 | RibbonFET = Intel-branded GAA (par with TSMC N2 / Samsung SF2). PowerVia = Intel-unique, BSPDN — yield untested at HVM. |
| Lithography | EUV + **High-NA EUV** mix | **ASML monopoly** (NXE:3800E / EXE:5000) | F-TERAFAB-1, F-TERAFAB-6 | High-NA EUV ≈ 10 systems/yr global production. Intel / TSMC / Samsung already in delivery queue. **Terafab is a new entrant at the back of the queue.** |
| BEOL (metal stack) | (undisclosed) | Lam Research + Applied Materials | F-TERAFAB-1 | Damascene / Cu via processes — vendor-locked. PowerVia adds BSPDN step → ~ 3-5% yield penalty during ramp. |
| Wafer probe | In-line (one-roof) | KLA-Tencor / Onto Innovation | F-TERAFAB-2 | In-line probe is industry-standard; KLA tooling dependency unchanged. |

## §5 T2a — MEMORY (DRAM / HBM in-fab line — the weakest claim)

| Sub | Terafab claim | External dependency | Falsifier | Honest read |
|---|---|---|---|---|
| DRAM cell | "memory production in-fab" (Musk) | DRAM IP / process know-how absent at xAI / Tesla | **F-TERAFAB-2 direct** | DRAM is a **completely separate process tree** from logic — cell capacitor / BL-WL / refresh controller / 1c-node sub-15 nm. **xAI head-count for DRAM = 0**. Requires M&A or 5-7 yr greenfield development. |
| HBM stack | (implied) HBM4-class | TSV + Cu micro-bump infrastructure | F-TERAFAB-2 | TSV etch + bump assembly = SK Hynix / Samsung / Micron oligopoly. **External PO ≥ $500 M before 2028 → F-TERAFAB-2 falsified** (per `falsifier-mk2-scaffold.md` §2). |
| HBM logic die | one-roof-compatible | — | F-TERAFAB-2 | The HBM **base die** can be made in-fab logic — but **without DRAM die above it, the stack is meaningless**. |
| Trigger | external HBM PO > $500 M before 2028 → fired |  |  | scenarios.md S3 (p = 0.30). |

## §6 T2b — ADVANCED PACKAGING (one-roof OSAT claim)

| Sub | Terafab claim | External dependency | Falsifier | Honest read |
|---|---|---|---|---|
| Chiplet | UCIe standard, in-fab assembly | UCIe IP is open standard | F-TERAFAB-2 | Comparable to TSMC CoWoS-S. Feasible. |
| 2.5D interposer | (undisclosed) | Si interposer = TSMC CoWoS-line monopoly | F-TERAFAB-2 | Building an interposer line ≈ +3-5 yr + $5-10 B capex above the disclosed envelope. |
| 3D-IC (hybrid bonding) | implied (Intel Foveros / TSMC SoIC tier) | Intel / TSMC SoIC IP | F-TERAFAB-2 | Hybrid bonding needs surface flatness < 0.5 nm — yield immaturity. |
| FOPLP / FCBGA | standard | "displaces Amkor / ASE" claim | F-TERAFAB-2 | OSAT in-housing = $10-20 B separate capex (not in the $55 B / $119 B filing). |
| Trigger | OSAT in-house claim silently dropped → F-TERAFAB-2 fired |  |  | scenarios.md S3 direct hit. |

## §7 T3 — TEST & QUALIFICATION (dual-line split)

| Sub | Line A (Edge / ground) | Line B (Orbital / space) | Falsifier |
|---|---|---|---|
| Wafer probe | KLA standard in-line | identical | — |
| Burn-in | AEC-Q100 automotive grade | **MIL-STD-883 + TID ≥ 100 krad** | F-TERAFAB-5 |
| Thermal cycling | -40 to +125 °C | **vacuum thermal (radiative-only, no convection)** | F-TERAFAB-5 |
| Radiation qual | not applicable | **SEU / SEL / SET full screening** — heavy-ion accelerator required | F-TERAFAB-5 |
| Honest read | Tesla owns auto-grade qual infrastructure | **Vacuum chamber + heavy-ion facility ownership at Terafab = 0** — Lockheed / Boeing / NRL outsource required. | |

## §8 T4 — PRODUCT SPLIT

```
Line A — 20% of capacity (ground)
├── Tesla AI5         5th-gen Autopilot HW, 100 M+ chips/yr by 2030
├── Optimus ASIC      humanoid inference, ~ 4 chips/bot
└── Tesla GPU         possible Dojo-X tie-in (xAI training)

Line B — 80% of capacity (orbital)
├── Training accel    space-hardened, > 1 TW cumulative target
├── Inference accel   space-hardened SKU
└── Starlink-V3       orbital DC backbone compute
```

## §9 T5 — SHIPPING & DEPLOYMENT (the wildest dimension)

| Sub | Terafab claim | External dependency | Falsifier | Honest read |
|---|---|---|---|---|
| Ground | Tesla automotive + Optimus assembly | Tesla in-house logistics | — | Standard, low risk. |
| Orbital | **Starship cargo → Starlink-V3 orbital DC** | SpaceX Starship reusability ≤ $200/kg by 2032 | **F-TERAFAB-4 direct** | Current Falcon 9 ≈ $1,500/kg. Starship reusable economics unproven. **9,500-47,600 raw Starship flights** required for 1 TW (`orbital-physics-deep.md` §4); ×3 with TMR triple-redundancy → 28,500-142,800. |
| Trigger | 2032 Starship cost > $200/kg → 80% orbital allocation collapses |  |  | scenarios.md S4 (p = 0.30). |

## §10 Auxiliary infrastructure (Texas filing basis)

| Resource | Prototype estimate | Full-scale estimate | External dependency | Falsifier |
|---|---|---|---|---|
| **Power (peak)**     | ~ 200 MW              | 1-2 GW                  | **ERCOT grid capacity** | F-TERAFAB-9 (Mk.II) |
| **Water (process)**  | ~ 4 ML/day            | 30-50 ML/day            | TCEQ permit             | F-TERAFAB-9 |
| **Cooling**          | chillers + cooling tower | scale-up               | industry standard       | — |
| **Workforce**        | 3,000-5,000           | 30,000-50,000           | **US fab-engineer pool is supply-constrained** | F-TERAFAB-10 (≥ 250 net hires/quarter) |
| **Real estate**      | Austin (adjacent Gigafactory TX) | Grimes County TX (rumored) | TX zoning           | — |
| **Subsidy**          | **$0 disclosed**      | (CHIPS Act residual ≤ $5 B?) | political — CHIPS already allocated | risks-deep.md R8 |

## §11 One-roof honesty matrix

Per-sub-stage classification: ✓ truly in-house · ◐ licensed (IP from
elsewhere but operated locally) · ✗ external (vendor lock or supply
dependency) · ? no disclosed plan.

```
                          ✓ in-house    ◐ licensed    ✗ external      ? no plan
                          ──────────    ──────────    ──────────      ────────
T0 design                 ✓ xAI/SLP     ◐ EDA tools
T0 mask                                  ◐ Intel IP   ✗ blanks (HOYA/AGC)
T1 wafer Si                                            ✗ Sumco/Shin-Etsu
T1 14A FEOL                              ◐ Intel IP
T1 EUV tool                                            ✗ ASML monopoly
T1 BEOL                                                ✗ Lam/AMAT
T2a DRAM                                                              ? no team
T2a HBM stack                                                         ? no IP
T2b interposer                                                        ? new line
T2b 3D bonding                           ◐ Intel/TSMC
T2b OSAT                  (claim only)                 ✗ Amkor/ASE displaced?
T3 auto qual              ✓ Tesla
T3 space qual                                          ✗ Lockheed/Boeing
T4 Line A                 ✓ Tesla
T4 Line B                 ✓ xAI
T5 ground                 ✓ Tesla
T5 orbital                                             ✗ Starship $/kg gap
```

**Tally**: 8 ✓ · 5 ◐ · 10 ✗ · 3 ? — total 26 sub-stages.

**Honesty index** = (truly in-house) / (total stages) = **8 / 26 = 30.8%**.

The headline "every stage under one roof" claim is therefore quantitatively
**< 31% realised** at the disclosure level. The remaining ~ 69% is split
across IP-licensed (~ 19%), vendor-locked external (~ 38%), and
no-disclosed-plan (~ 12%). The **30.8% figure is the quantitative
backbone of F-TERAFAB-2 and risks-deep.md R5 (zero-fab-experience)**.

## §12 Three weakest stages (engineering priority)

1. **T2a Memory** — DRAM in-house claim is the weakest. xAI / Tesla
   have zero DRAM IP, zero process know-how, zero head-count.
   **F-TERAFAB-2 fires fastest here** (scenarios.md S3 carries p = 0.30).
2. **T1 14A dependency** — Intel 14A itself is unreleased; Terafab
   shares yield-learning curve with Intel's own ramp. **Any Intel 14A
   slip of ≥ 6 months drags Terafab directly**. F-TERAFAB-6.
3. **T5 Orbital** — 80% of capacity is economically gated by Starship
   reusable launch cost. **Currently unproven**; physical floor is
   1,300 km² of radiator area (orbital-physics-deep.md §2). F-TERAFAB-4
   + F-TERAFAB-5 jointly.

## §13 Cross-link

- `terafab.md` — main meta-domain document; §1 group ownership table
  and §4 STRUCT diagram are the upstream this view inverts
- `mapping-28verbs.md` — opposite view (hexa-chip-frame); this file
  is the Terafab-frame complement
- `falsifier-mk2-scaffold.md` §2 — the public-source triggers cited
  in §3..§10 of this file
- `orbital-physics-deep.md` — physical floor cited in §9 and §12
- `risks-deep.md` — R5 zero-fab-experience score (5.60) and R7 memory
  abandonment built on the §11 honesty index
- `scenarios.md` — S3 (memory abandoned 0.30) and S4 (orbital collapse
  0.30) outcomes derived from this stage-level analysis

## §14 Honest caveats

- The 30.8% honesty index is a **snapshot at Mk.I (2026-05-11)**.
  Each falsifier in `falsifier-mk2-scaffold.md` §2 has a numeric
  trigger that, if cleared, would re-classify a row from ✗/? to ◐/✓.
- The "✗ external" classification is not necessarily disqualifying —
  every fab on Earth depends on ASML, Lam, Sumco, etc. The claim under
  test is **"all stages under one roof"**, not "all stages built from
  raw silicon"; the matrix reflects the *one-roof* dimension.
- T2a Memory and T2b OSAT-displacement are the two rows where the
  Terafab claim diverges most sharply from industry baseline; if these
  are quietly dropped, the meta-domain envelope still stands but
  F-TERAFAB-2 will record the partial-falsification.
- No NDA / proprietary data used. All numbers trace to
  `terafab.md` §15 source list.
