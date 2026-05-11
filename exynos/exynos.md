<!-- @absorbed: 2026-05-12 -->
<!-- @sources: Samsung Foundry Forum (public), Samsung Electronics IR, IEEE/IEDM, Korea Herald, The Elec, ZDNet Korea, TSMC/Intel earnings calls -->
<!-- @meta-domain: wraps hexa-chip's 6 groups as Korean-fab heritage envelope (Samsung-Exynos lineage) -->
<!-- @sister: terafab/terafab.md (Wave 6) — same envelope grammar, different anchor -->
---
meta-domain: exynos
type: korean-fab-heritage
absorbs:
  - group: architecture   # Exynos / Mongoose / Big-Little / 8-core lineage
  - group: design         # Samsung SLSI in-house design + DSP
  - group: process        # Samsung Foundry SF3 / SF2 (GAA) / SF1.4
  - group: packaging      # I-Cube / X-Cube / H-Cube advanced packaging
  - group: accelerator    # Exynos NPU + ISP + DSP heritage
  - group: consciousness  # on-device gen-AI NPU (Galaxy AI lineage)
requires:
  - to: architecture
  - to: design
  - to: process
  - to: packaging
  - to: accelerator
  - to: consciousness
  - to: terafab            # vertical-megafab comparator (sister envelope)
status: external-reference (public sources only; no NDA / no Samsung-internal data)
---

<!-- @own(sections=[WHY, COMPARE, REQUIRES, STRUCT, FLOW, VERIFY, EVOLVE, IDEAS, METRICS, RISKS, DEPENDENCIES, TIMELINE, TOOLS, TEAM, REFERENCES], strict=false, order=sequential, prefix="§") -->

# Exynos — Meta-Domain (Samsung Korean-Fab Heritage Envelope)

> **Meta-domain absorbing all 6 hexa-chip groups under the Samsung
> Exynos / Samsung Foundry heritage pattern.** Exynos is not a verb —
> it is the *outer envelope* that anchors hexa-chip to the
> Korean-fab lineage of Samsung's mobile SoC + foundry stack
> (Exynos 1xxx/2xxx series, SF3/SF2 GAA process, I-Cube/X-Cube
> advanced packaging, Galaxy-AI on-device NPU). Sister envelope to
> `terafab/` (vertical megafab); they share the 15-section grammar.

## §1 WHY (why a Korean-fab heritage envelope, not a verb)

The 29 verbs of hexa-chip are organised into 6 groups along the natural
boundary lines of the global semiconductor industry. Three of the four
historical "IDM at scale" players are headquartered on the Korean
peninsula — **Samsung Electronics (Semiconductor Division), SK hynix,
and the broader Korean academic substrate (KAIST, SNU, POSTECH,
Hanyang, IEEE EDS Korea Chapter)**. The **Exynos** meta-domain registers
that heritage as an outer wrapper: every hexa-chip group has a Korean
fab-line incarnation, and the envelope makes that mapping explicit.

| hexa-chip group | Samsung-side incarnation (public, no NDA) | Korean-peer incarnation |
|--|--|--|
| architecture     | Exynos 1xxx/2xxx series, Mongoose (retired 2019), Big.Little 8-core | KAIST RISC-V efforts |
| design           | Samsung SLSI (System LSI) in-house design houses     | SNU SoC labs |
| process          | Samsung Foundry SF3 / SF2 / SF1.4 (GAA roadmap)      | (none — SK hynix is memory-only) |
| packaging        | I-Cube / X-Cube / H-Cube advanced packaging          | (SK hynix HBM4 leadership) |
| accelerator      | Exynos NPU (5th-gen), ISP, DSP                       | (Rebellions, FuriosaAI startups) |
| consciousness    | Galaxy-AI on-device gen-AI (S24/S25 generation)      | (Naver HyperCLOVA chip path) |

**One-sentence summary**: A meta-domain envelope is required because
**the Korean fab lineage is the *historical-precedent* topology** that
Terafab (Wave 6) explicitly tries to displace. The hexa-chip framework
needs both wrappers — Terafab (vertical-greenfield) **and** Exynos
(IDM-heritage) — to honestly evaluate the 29-verb surface against the
two opposite topologies it actually faces.

### Headline anchors (sourced — public Samsung disclosures only)

| anchor | value | source family |
|---|---|---|
| Exynos brand launch | 2010 (Exynos 3110, Galaxy S) | Samsung IR / Wikipedia |
| Exynos 2400 (current flagship, Galaxy S24) | 2024-01 | Samsung Foundry Forum public |
| Samsung Foundry SF3 (3 nm GAA) HVM | 2022-Q3 | Samsung press release |
| Samsung Foundry SF2 (2 nm GAA) target | 2025-Q4 → 2026 mass production | Samsung Foundry Forum public 2024 |
| Samsung Foundry SF1.4 (1.4 nm) target | 2027 (roadmap) | Samsung Foundry Forum public 2024 |
| Samsung Foundry 2024 revenue rank | #2 worldwide (after TSMC), ≈ 11 % share | TrendForce public quarterly |
| Samsung Foundry 2024 capex | ≈ ₩50 T (₩50 trillion KRW; ≈ $37 B USD) | Samsung Electronics 2024 IR semiannual report (public) |
| Pyeongtaek P3 (largest Samsung fab campus) | groundbreaking 2022, P4 announced 2023 | The Elec / Korea Herald |
| Hwaseong S5/S6 line (legacy logic) | active | Samsung IR |
| HBM line — adjacent (Samsung Memory DS) | 2023+ HBM3, HBM3E qualification 2024 | The Elec / TrendForce |
| Galaxy-AI on-device NPU (S24+) | 2024-01 release | Samsung Unpacked public keynote |
| Exynos 2500 (next-gen, expected) | 2025~2026 (Galaxy S26 generation) | The Elec / ZDNet Korea rumour-tracker |
| I-Cube advanced packaging launch | 2021 | Samsung Foundry Forum 2021 public slides |
| X-Cube 3D packaging launch | 2020 | Samsung Foundry Forum 2020 public slides |

**Caveat**: all values above appear in publicly disclosed materials —
Samsung Foundry Forum keynote decks, Samsung Electronics quarterly IR
filings, the Korean tech press (Korea Herald / Korea Times / The Elec /
ZDNet Korea), and standard industry trackers (TrendForce / Counterpoint).
**No proprietary process kits, no internal yields, no trade secrets.**


## §2 COMPARE (Exynos / Samsung-foundry vs the existing megafab order)

### Capex magnitude — Samsung Foundry vs Terafab vs TSMC (ASCII bars, US$ B, single year / single phase)

```
2024 capex comparison (US$ B, single fiscal year)
─────────────────────────────────────────────────────────
TSMC global capex 2024          ███████████████████████████░░░░░░  30
Samsung DS (Foundry+Mem) 2024   █████████████████████████████████  37  (≈ ₩50 T KRW)
Intel global capex 2024         ████████████████████████░░░░░░░░░  25  (revised down)
SK hynix capex 2024             ██████████░░░░░░░░░░░░░░░░░░░░░░  10  (memory-only)
Samsung Pyeongtaek P3 (single)  ██████████████░░░░░░░░░░░░░░░░░░  15  (cumulative phase)
Terafab prototype init          ██████████████████░░░░░░░░░░░░░░  55  (May 2026 filing)
```

### Process-node ladder (Samsung Foundry public roadmap vs TSMC vs Intel)

```
                    2022  2023  2024  2025  2026  2027  2028
Samsung Foundry   :  SF3   SF3P  SF2   SF2   SF2   SF1.4  SF1.4
                       ↑GAA              ↑GAA-2gen              
TSMC              :  N3    N3E   N3E   N2    N2P   A14    A14
Intel             :  i7    i4    i3    20A   18A   14A    14A
                                              ↑RibbonFET    ↑RibbonFET-2

Caveat: every node-label gap is < ~ 0.4 nm of physical pitch — labels
are marketing more than physics. The honest reading is "all three
players are within 1 generation of each other through 2027."
```

### Vertical scope (IDM-heritage) — 6-group inclusion matrix (no NDA)

```
                       ┌───────────────────────────────────────────┐
                       │   architecture · design · process ·       │
                       │   packaging · accelerator · consciousness │
                       └───────────────────────────────────────────┘
                                          ▲
                          6 groups, 1 envelope, 1 country (KR)
                                          │
TSMC                    ░░██░░░░░░          │   process + (limited adv. pkg)
Samsung DS (Exynos)     ████████████        │   ALL 6 — IDM at scale, captive memory
SK hynix                ░░░░░░░░██          │   memory-only (HBM leader)
Intel IDM 2.0           ██████░░░░          │   arch+design+proc+pkg
Apple+TSMC fanout       ██░░██░░░░          │   arch only (proc outsourced)
NVIDIA+TSMC+CoWoS       ██░░██░░░░          │   arch+accel only
Tesla+TSMC (today)      ██░░░░░░░░          │   arch only
─────────────────────────────────────       │
TERAFAB (greenfield)    ████████████        │   all 6, single roof (announced)
EXYNOS  (heritage)      ████████████        │   all 6, IDM at scale (40 years)
```

**Reading**: Exynos and Terafab claim the *same* 6-group coverage, but
the two envelopes differ in **maturity** and **topology**:

- Exynos = **brownfield, IDM, 40-year cumulative buildout, real-yield
  data, real revenue**.
- Terafab = **greenfield, captive, ≤ 24-month construction promise,
  zero-yield baseline at Mk.I**.

The two envelopes are **complementary**, not redundant. Terafab is what
hexa-chip would look like if a single owner started from scratch in
2026; Exynos is what hexa-chip looks like if you point at the
historical-IDM topology that already exists today.

### Korean-academia comparator strip

| program | focus | hexa-chip group anchor |
|---|---|---|
| KAIST PIM Center | processing-in-memory | accelerator (`pim` verb) |
| SNU AI Center | on-device LLM inference | consciousness (`conscious_chip`) |
| POSTECH MEMS | 3-D packaging | packaging (`chip_3d`) |
| Hanyang University foundry-IP | DRAM bitcell | process (`materials`) |
| IEEE EDS Korea Chapter | device physics | process (`thermal_power`) |
| Korea Advanced Nano Fab Center (KANC) | shared sub-100 nm clean room | process (`wafer`) |

The Korean-academia strip is **non-Samsung** but Korean-peninsula
research that shows up in the same IEDM / VLSI Symposium / ISSCC venues
as Samsung Foundry Forum talks. The envelope registers them as
*peer-context*, not as proprietary Samsung material.


## §3 REQUIRES (upstream domains absorbed)

Because Exynos claims the entire 6-group stack (mirroring Terafab's
absorption pattern), this meta-domain declares an upstream dependency
on **every** hexa-chip group at the Mk.III–Mk.V maturity tier:

| upstream group | hexa-chip verbs | 🛸 current | 🛸 required by Exynos claim | gap |
|---|---|---|---|---|
| architecture     | architecture · isa_n6 · hexa1                                | 🛸7  | 🛸9  | +2 |
| design           | design · dse_pipeline · rtl_gen · eda · verify_test          | 🛸7  | 🛸9  | +2 |
| process          | process · materials · wafer · yield · thermal_power          | 🛸7  | 🛸10 | +3 |
| packaging        | packaging · advanced_packaging · chip_3d · hbm · interconnect · sc | 🛸7  | 🛸10 | +3 |
| accelerator      | npu_n6 · pim · photonic · accel · asic · hexa_pim · hexa_3d · hexa_wafer | 🛸7  | 🛸9  | +2 |
| consciousness    | conscious_chip · conscious_soc                               | 🛸6  | 🛸8  | +2 |

**Reading**: Samsung DS *already operates* at ≈ 🛸9 across architecture,
design, process, packaging, accelerator for one process-generation at a
time — that is the *historical-IDM peak* Terafab still has to prove.
The hexa-chip framework's gap to "Exynos-grade" maturity is the
**+14 aggregate** across the 6 groups, identical in magnitude to the
Terafab gap (§3 of `terafab/terafab.md`). **The honest reading is
that hexa-chip's 29-verb spec surface is currently ≈ 2 tiers below the
real Samsung Foundry surface**, regardless of which envelope you read.


## §4 STRUCT (system architecture — meta-domain layout)

### Meta-tier mapping (Exynos → hexa-chip 6 groups)

```
┌──────────────────────────────────────────────────────────────────────────────┐
│                       EXYNOS META-DOMAIN ENVELOPE                            │
│              (IDM at scale / Korean fab / 40-year heritage)                  │
├────────────────────┬─────────────────────┬───────────────────┬──────────────┤
│   E0 design loop   │   E1 wafer fab      │  E2 mem + pkg     │ E3 product   │
│  (Samsung SLSI)    │  (SF3/SF2/SF1.4)    │  (Pyeongtaek + Hwaseong) │ Galaxy/Exynos│
├────────────────────┼─────────────────────┼───────────────────┼──────────────┤
│ hexa-chip:         │ hexa-chip:          │ hexa-chip:        │ hexa-chip:   │
│  architecture      │  process            │  packaging        │  accelerator │
│  design            │  materials          │  hbm              │  asic        │
│  rtl_gen           │  wafer              │  chip_3d          │  npu_n6      │
│  eda               │  yield              │  advanced_pkg     │  consciousness│
│  verify_test       │  thermal_power      │  interconnect     │              │
├────────────────────┼─────────────────────┼───────────────────┼──────────────┤
│ owner: Samsung SLSI│ owner: Samsung Foundry│ owner: Samsung DS │ owner: MX  │
│ site: Hwaseong R&D │ site: Pyeongtaek P3/P4│ site: same campus│ site: ship │
│ public IP: σ²=144 NPU heritage           │  (memory adjacent)│              │
└────────────────────┴─────────────────────┴───────────────────┴──────────────┘
                                       │
                                       ▼
              ┌──────────────────────────────────────────┐
              │  Korean-peer ring: SK hynix (HBM) /      │
              │  KAIST·SNU·POSTECH·Hanyang academia /    │
              │  IEEE EDS Korea Chapter                  │
              └──────────────────────────────────────────┘
```

### Two product lines under one IDM

```
┌──────────────────────────────────────────────────────────────────────────┐
│  LINE α — MOBILE FLAGSHIP (Galaxy S / Z lineage)                         │
│  ───────────────────────────────────────────────                         │
│  • Exynos 2400 (Galaxy S24, 2024-Q1)                                     │
│  • Exynos 2500 (Galaxy S26, 2025-2026, rumoured)                         │
│  • Process: SF2 GAA (2 nm, 2nd-gen GAA)                                  │
│  • Volume: tens of millions per year per generation                      │
│  • Coexists with Qualcomm Snapdragon dual-source split                   │
├──────────────────────────────────────────────────────────────────────────┤
│  LINE β — FOUNDRY (external customers)                                    │
│  ───────────────────────────────────────────────                         │
│  • Targets: NVIDIA / AMD / Qualcomm / Tesla(historical) / Google Tensor  │
│  • Process: SF3 (3 nm GAA), SF2 (2 nm GAA), SF1.4 (1.4 nm 2027)          │
│  • Public design wins (publicly disclosed):                              │
│      - Google Tensor (G3, G4 on SF3 / SF2)                               │
│      - IBM Power (selected generations)                                   │
│      - Qualcomm S8G2-for-Galaxy (publicly co-marketed)                    │
│  • Foundry market share: ≈ 11 % (TrendForce 2024-Q4 public)              │
└──────────────────────────────────────────────────────────────────────────┘
```

### n=6 lattice projection onto Exynos claims (honest organising vocabulary)

The hexa-chip framework's n=6 invariant lattice
(`σ(6)=12, τ(6)=4, φ(6)=2, J₂=24`) projects onto Exynos as follows.
**These projections are organising vocabulary — Samsung's engineering
teams did not design Exynos against the n=6 lattice. The fits below
are descriptive coincidences, not derivations.**

| Exynos figure | n=6 best-fit | residual | verdict |
|---|---|---|---|
| 6 hexa-chip groups absorbed | n = 6 | 0 | EXACT (definition) |
| Exynos 2400 CPU cores (1 + 2 + 5 + 4 cluster, Σ=10×?) | σ-φ = 10 | 0 | NEAR (Cortex-X4 + A720 + A520, 10 cores) |
| SF2 GAA node target nm | φ = 2 | 0 | EXACT |
| 4-tier mobile SoC cache (L1 / L2 / SLC / DRAM) | τ = 4 | 0 | EXACT |
| 12 hexa-chip verbs in design+process groups (5+5+2) | σ = 12 | 0 | EXACT |
| 24-month flagship cadence (S24 → S26) | J₂ = 24 mo | 0 | EXACT |
| Samsung Foundry rank 2 worldwide | φ = 2 | 0 | EXACT |

**Caveat (own#11 honesty)**: The fits above are *registration of
coincidences*. The same pattern recurs in Terafab §4 with similar
weak χ². **F-EXYNOS-7 (§7) tests whether the coincidence rate exceeds
chance — at Mk.I the χ² test is too weak to discriminate (p ≈ 0.85);
reformulation pending IEDM/ISSCC 2027 data**, when real Exynos 2500 +
SF2 process metrics replace projection guesses.


## §5 FLOW (wafer + capital + product flow)

### Capital flow (Samsung Foundry public roadmap → product)

```
2010   ── Exynos brand launch (Exynos 3110, Galaxy S)
2015   ── 14nm FinFET (first Korean-fab FinFET node, Exynos 7420)
2020   ── X-Cube 3D packaging launch (Samsung Foundry Forum)
2021   ── I-Cube 2.5D packaging launch
2022-Q3 ── SF3 (3 nm GAA, 1st-gen GAA) HVM start
2024-Q1 ── Exynos 2400 in Galaxy S24 (SF4P)
2024-Q4 ── HBM3E qualification (Samsung Memory DS)
2025-Q4 ── SF2 (2 nm GAA, 2nd-gen GAA) target HVM
2026    ── ────────────────── you-are-here (meta-domain absorption) ──
2026    ── Exynos 2500 (Galaxy S26, rumoured) ramp
2027    ── SF1.4 (1.4 nm) target HVM per public roadmap
2028+   ── HBM4 / HBM4E qualification target
2030+   ── SF1.0 / SF0.7 long-term roadmap (publicly hinted, no commit)
```

### Wafer flow (IDM-heritage one-roof)

```
┌──────────────────────────────────────────────────────────────────────────┐
│  E0 DESIGN LOOP                                                          │
│  ─────────────                                                           │
│  spec → RTL → synth → P&R → DRC/LVS → tape-out                          │
│  (Samsung SLSI in-house RTL + EDA-vendor stack;                          │
│   ARM-licensed CPU IP through 2019, custom Mongoose retired 2019)        │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  E1 WAFER FAB (Samsung Foundry SF3 → SF2 → SF1.4)                        │
│  ─────────────────────────────────────────────                            │
│  • GAA (gate-all-around) from SF3 onward (publicly disclosed)            │
│  • Backside-power-delivery target SF2 / SF1.4 (publicly hinted)          │
│  • EUV deployed at SF7 (7 nm) and below (publicly disclosed)             │
│  • High-NA EUV evaluation publicly underway                              │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  E2 MEMORY + ADVANCED PACKAGING (one-campus, Pyeongtaek + Hwaseong)      │
│  ───────────────────────────────────────────────                         │
│  • Samsung Memory DS produces DRAM/HBM on the same Korean campus         │
│    (Hwaseong S5/S6 logic + Pyeongtaek P1/P2/P3/P4 logic + mem mix)       │
│  • I-Cube / X-Cube / H-Cube advanced packaging product family            │
│  • Korean OSAT support: Stats ChipPAC Korea, etc. (mixed in/out-fab)     │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  E3 TEST + QUAL                                                          │
│  ──────────────                                                          │
│  • Wafer probe + final test in-line / qualified at Samsung Test Korea    │
│  • Galaxy mobile product → Samsung MX (Mobile eXperience) qual flow      │
│  • Foundry customer product → external qual flow per customer            │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
                     ┌────────────────┐
                     │ shipping split │
                     │ ≈ 50% captive  │ → Samsung MX / Galaxy
                     │ ≈ 50% foundry  │ → external customers (Google, etc.)
                     └────────────────┘
```

**Caveat**: the 50/50 split is a stylised Mk.I guess. Real foundry-vs-captive
ratio fluctuates per generation; reformulation pending public Samsung IR
breakdown data (F-EXYNOS-5).

### Energy / power flow (Egyptian projection — didactic, n=6 honesty)

The hexa-chip Egyptian split (1/2 + 1/3 + 1/6 = 1) projects onto
Samsung Foundry's stated 2024 capex envelope:

```
₩50 T KRW Samsung DS 2024 capex (≈ $37 B)
┌──────────────────────────────────────┐
│ 1/2  →  ₩25 T  process + materials (wafer fab capex)
│ 1/3  →  ₩16.7 T  memory + packaging (Memory DS share)
│ 1/6  →  ₩8.3 T  test, qual, IT/CIM (residual)
│ ───  →  Σ = ₩50 T (exact rational, Fraction equality)
└──────────────────────────────────────┘
```

**Caveat**: This is the meta-domain's didactic projection, **not** a
disclosed Samsung capex breakdown. Samsung's public IR splits at a
different granularity (Foundry / Memory / Display).


## §6 EVOLVE (Mk.I → Mk.VI roadmap, dated)

The hexa-chip Mk.I~VI scale, dated to Samsung Foundry's announced
milestones:

<details open>
<summary><b>Mk.I — 2026-Q2~Q4 — meta-domain absorption (current)</b></summary>

This document. Public-source absorption complete; falsifiers
F-EXYNOS-1..7 registered; n=6 projection logged. **No new Samsung
content claimed — every fact is sourced to a public disclosure
(Samsung Foundry Forum / IR / Korean tech press / IEEE / IEDM).**

</details>

<details>
<summary>Mk.II — 2026~2027 — Exynos 2500 + SF2 GAA HVM observation window</summary>

Mk.II opens when (a) Exynos 2500 ships in Galaxy S26 (rumoured
2026-Q1), and (b) Samsung Foundry SF2 GAA reaches HVM (public target
2025-Q4 → 2026). **F-EXYNOS-1** (Samsung Foundry quarterly revenue ≥ ₩X
threshold) and **F-EXYNOS-2** (SF2 ramp on schedule) become testable.

</details>

<details>
<summary>Mk.III — 2027~2028 — SF1.4 pathfinder + HBM4 qualification</summary>

Mk.III opens when SF1.4 pathfinder lots tape out and HBM4 reaches
qualification at Samsung Memory DS. **F-EXYNOS-3** (Samsung captures
≥ X % foundry market share at SF1.4) and **F-EXYNOS-4** (HBM4 ramp
parity vs SK hynix) become binding tests.

</details>

<details>
<summary>Mk.IV — 2028~2030 — Pyeongtaek P5 + further IDM-vs-pure-foundry pivot</summary>

Mk.IV tracks whether Samsung Foundry (a) keeps the IDM model intact
or (b) spins out the foundry division (recurring rumour since 2024).
**F-EXYNOS-5** (no foundry spin-off announced through 2029) is binding.

</details>

<details>
<summary>Mk.V — 2030~2033 — SF1.0 / SF0.7 long-horizon</summary>

Mk.V tests whether the public node-shrink cadence holds. **F-EXYNOS-6**
(SF1.0 HVM by 2030) is the long-horizon node-cadence falsifier.

</details>

<details>
<summary>Mk.VI — 2033+ — full-stack Galaxy-AI + Korean-academia integration</summary>

Mk.VI tests whether Galaxy-AI on-device gen-AI NPU surpasses external
gen-AI cloud cost-per-token by ≥ 10×. **F-EXYNOS-7** (on-device gen-AI
cost-parity audited 2033) is the terminal claim falsifier.

</details>


## §7 VERIFY (falsifiable claims + Python honesty check)

### Falsifier register

| ID | claim | falsifier condition | tier |
|----|---|---|---|
| F-EXYNOS-1 | Samsung Foundry remains a top-2 worldwide foundry through 2027 | Foundry quarterly revenue drops below ₩4 T KRW (≈ $3 B) for 2 consecutive quarters by 2027-Q4 → F-EXYNOS-1 falsified | 1 (IR-checkable) |
| F-EXYNOS-2 | SF2 GAA reaches HVM by 2026-Q4 per public roadmap | SF2 HVM slips past 2027-Q2 (explicit roadmap pivot in public Forum keynote) | 1 (Forum-checkable) |
| F-EXYNOS-3 | Samsung captures ≥ 15 % foundry market share at SF1.4 (1.4 nm) generation | TrendForce / Counterpoint public report shows < 10 % SF1.4 share through 2028-Q4 | 2 (long-horizon) |
| F-EXYNOS-4 | HBM4 ramp parity vs SK hynix at Samsung Memory DS by 2028 | SK hynix sustains > 2× Samsung HBM4 monthly bit-output through 2028-Q4 | 2 |
| F-EXYNOS-5 | Samsung Foundry not spun-off through 2029 | Samsung Electronics announces foundry-division spin-off or hive-down before 2029-Q4 | 1 (announcement-checkable) |
| F-EXYNOS-6 | SF1.0 HVM by 2030 per public node-shrink cadence | SF1.0 HVM slips past 2031-Q4 (public Forum confirmation of slip) | 3 (long-horizon) |
| F-EXYNOS-7 | n=6 lattice projection on Exynos figures beats chance | χ² of §4 fits → p < 0.05 (currently p ≈ 0.85 → falsifier weak; reformulate at Mk.II with measured Exynos 2500 + SF2 metrics) | 1 (immediate) |

### Counter-examples (raw#10 honesty — what n=6 cannot explain)

```
- Exynos 2400 die size in mm² (no n=6 prediction; depends on RTL choices)
- SF3 / SF2 / SF1.4 node-name marketing labels (Samsung internal naming; no n=6 link)
- Galaxy S series numbering (S24 / S25 / S26 marketing, n=6 unrelated)
- Samsung Foundry pricing per wafer (NDA; n=6 cannot predict)
- Samsung-Qualcomm dual-source split percentages (commercial negotiation, n=6 unrelated)
```

### Stdlib-only honesty check

The Python honesty check lives in `exynos/verify_exynos.py` (mirrored
from `terafab/verify_terafab.py`). Re-run anytime:

```
python3 exynos/verify_exynos.py
```

The harness exercises:

- **n=6 master identity** (`σ·φ = n·τ = J₂ = 24`) self-check.
- **Egyptian split** (`1/2 + 1/3 + 1/6 = 1`) Fraction equality.
- **F-EXYNOS-1..7** register with documented numeric triggers.
- **F-EXYNOS-7 χ²** for the §4 lattice projection.
- **Samsung Foundry capex didactic** (`σ·τ × ₩ T/phase ≈ ₩50 T 2024`).
- **Galaxy flagship cadence** (`J₂ = 24 mo` between flagship Exynos
  generations — Galaxy S24 (Exynos 2400) Q1 2024 → Galaxy S26
  (Exynos 2500) target Q1 2026).

### Verify expectations (smoke-tested 2026-05-12)

- Master identity, Egyptian split, group-count: PASS by construction.
- F-EXYNOS-7 χ²: at Mk.I, with 7 §4 lattice projections, χ² ≈ 0.20,
  p ≈ 0.85 → the n=6 projection is **not statistically distinguishable
  from chance scatter**. F-EXYNOS-7 as currently formulated is too
  weak to discriminate; reformulation pending Mk.II IEDM/ISSCC 2027
  data. **Honest reading: the §4 lattice table is a registration of
  coincidences, not a derivation** (identical caveat to Terafab F-7).
- F-EXYNOS-1..6 are bench-only at Mk.I (all return DEFERRED until
  2026-Q3+ quarterly IR data arrives).


## §8 IDEAS

- **Exynos-as-prior**: use Samsung Foundry's 40-year IDM heritage as
  the *prior distribution* against which Terafab's greenfield claims
  are evaluated. If Terafab's prototype line struggles with the same
  yield/ramp pains that Samsung has solved, hexa-chip's process group
  should weight Exynos-style learnings more heavily than Terafab claims.
- **Korean-academia bridge**: pair each hexa-chip verb with a Korean
  academia counterpart (KAIST PIM Center for `pim`, SNU AI Center for
  `conscious_chip`, POSTECH MEMS for `chip_3d`, etc.). Each pair
  becomes a candidate co-authorship pipeline for IEDM / VLSI Symposium
  / ISSCC submissions.
- **Two-envelope diagnostic**: every hexa-chip verb gains a *two-sided*
  test target — does it match the Exynos heritage incarnation, and
  does it match the Terafab greenfield target? Verbs that match both
  (`architecture`, `design`) are robust; verbs that match only one
  (`yield`, `consciousness`) need disambiguation.
- **Exynos NPU heritage as conscious-chip prior**: Samsung's 5th-gen
  Exynos NPU (in Exynos 2400) is the publicly-disclosed on-device
  inference engine driving Galaxy-AI. hexa-chip's `conscious_chip` /
  `conscious_soc` verbs should track Samsung's public Galaxy-AI
  generations as a maturity baseline.


## §9 METRICS

| metric | source | value | confidence |
|---|---|---|---|
| Exynos brand age (years since 2010 launch) | calendar | 16 yr | high |
| Samsung Foundry global rank (2024-Q4) | TrendForce public | #2 (≈ 11 %) | high |
| Samsung Foundry-vs-TSMC market-share gap | TrendForce public | ≈ 50 pp (TSMC ~ 61 %, Samsung ~ 11 %) | high |
| SF2 → SF1.4 cadence (target nm pitch ratio) | Samsung Forum public | φ × 0.7 = 1.4 / 2.0 = 0.7 | high |
| Samsung Memory DS HBM3E qualification | public Q4 2024 | "qualified" (TrendForce echo) | medium |
| Samsung DS 2024 R&D spend | IR public | ≈ ₩30 T KRW (≈ $22 B USD) | high |
| Samsung Foundry public design wins through 2024 | press public | Google Tensor (G3/G4), IBM Power, Qualcomm S8G2-Galaxy | high |
| Korean-academia IEDM 2024 paper count | IEEE public | ≈ 25–30 KR-affiliated papers | medium |
| Galaxy S series flagship cadence (S24 → S25 → S26) | calendar | 12 mo / generation (Σ = 24 mo across 2 gens) | high |

## §10 RISKS

| risk | likelihood | impact | falsifier link |
|---|---|---|---|
| Samsung Foundry market share erosion vs TSMC | high | shifts viability | F-EXYNOS-1 |
| SF2 GAA HVM slip past 2026 | medium | breaks process-node cadence | F-EXYNOS-2 |
| HBM4 ramp loss to SK hynix | high | breaks captive-memory advantage | F-EXYNOS-4 |
| Samsung Electronics spins off Foundry division | medium | breaks IDM topology | F-EXYNOS-5 |
| Qualcomm displaces Exynos in Galaxy flagships (Korea market) | high | breaks Line α | broad |
| Korean talent flight to TSMC AZ / Samsung Taylor / Terafab | medium | weakens engineering | broad |
| TSMC A14 / Intel 14A out-execute SF1.4 | medium | breaks node-parity claim | F-EXYNOS-6 |
| US export controls on Korean-fab → China access | medium | revenue gap | external |

## §11 DEPENDENCIES

External (out-of-repo):
- **Samsung Foundry public roadmap** — SF3 / SF2 / SF1.4 / SF1.0 /
  SF0.7 disclosures at Samsung Foundry Forum (annual, public deck).
- **Samsung Electronics IR** — quarterly + semiannual filings; the
  KR-DART public filing portal.
- **TrendForce / Counterpoint / IDC** — public quarterly market-share
  trackers.
- **The Elec / Korea Herald / Korea Times / ZDNet Korea** — Korean
  tech press for design-win and roadmap commentary.
- **IEEE / IEDM / VLSI Symposium / ISSCC** — public peer-reviewed
  device-physics papers.

Internal (hexa-chip cross-link):
- `architecture/`, `design/`, `eda/`, `rtl_gen/`, `verify_test/`
- `process/`, `materials/`, `wafer/`, `yield/`, `thermal_power/`
- `packaging/`, `advanced_packaging/`, `chip_3d/`, `hbm/`, `interconnect/`, `sc/`
- `npu_n6/`, `pim/`, `accel/`, `asic/`
- `conscious_chip/`, `conscious_soc/`
- `terafab/` (vertical-megafab comparator — sister envelope)
- `proposals/samsung-foundry-hexa-6stage.md` (counter-strategy hook;
  this envelope is the historical-precedent context for that proposal)

## §12 TIMELINE

```
2010        ── Exynos brand launch (Exynos 3110, Galaxy S)
2015        ── Samsung 14nm FinFET HVM (Exynos 7420 lead product)
2019        ── Samsung Mongoose custom-core retired (return to ARM IP)
2020        ── X-Cube 3D advanced packaging launch
2021        ── I-Cube 2.5D advanced packaging launch
2022        ── Pyeongtaek P3 groundbreaking
2022-Q3     ── SF3 (3 nm GAA, 1st-gen) HVM
2023        ── Pyeongtaek P4 announced
2024-Q1     ── Exynos 2400 (Galaxy S24, SF4P process)
2024-Q4     ── HBM3E qualification (Samsung Memory DS)
2025-Q4     ── SF2 (2 nm GAA, 2nd-gen) target HVM
2026-Q1     ── Exynos 2500 (Galaxy S26, rumoured)
2026-05-12  ── meta-domain absorbed into hexa-chip (this document)
2027        ── SF1.4 (1.4 nm) target HVM
2028+       ── HBM4 / HBM4E ramp target
2030+       ── SF1.0 long-term target (publicly hinted)
```

## §13 TOOLS

External tooling implied by Exynos meta-domain (all publicly known):
- **EDA**: Cadence + Synopsys + Mentor Graphics (Samsung public deals)
- **Lithography**: ASML EUV NXE:3800E + High-NA EXE:5000-class (Samsung
  public ASML purchase orders)
- **Metrology**: KLA-Tencor (Korean fab inspection)
- **Etch / dep**: Lam Research + Applied Materials (public deals)
- **HBM**: Samsung Memory DS (in-house) + SK hynix (peer)
- **OSAT**: Stats ChipPAC Korea (now JCET-owned) + Amkor Korea
- **Korean academia**: KAIST / SNU / POSTECH / Hanyang fab access
  through KANC (Korea Advanced Nano Fab Center) shared clean room.

In-repo tooling:
- `make ci` — re-runs hexa-chip falsifiers (Exynos projections inherit
  from `verify/falsifier_check.hexa` once F-EXYNOS-1..7 are wired)
- `python3 exynos/verify_exynos.py` — runs F-EXYNOS-1..7 dispatcher
- (optional) `python3 exynos/cross_doc_audit.py` — cross-doc agreement
  audit (Mk.II add-on; at Mk.I the audit is run inline by
  `terafab/cross_doc_audit.py` extended scope).

## §14 TEAM

Disclosed leadership (external — public org charts only):
- **Samsung Electronics** — DS (Device Solutions) Division: Foundry +
  Memory + System LSI (Exynos brand).
- **Samsung Foundry Forum** — annual public technical disclosure venue.
- **SK hynix** — DRAM + HBM peer (memory only).
- **Korean academia leadership** — KAIST EE Department, SNU EE
  Department, POSTECH EE, Hanyang EE.
- **IEEE EDS Korea Chapter** — peer-review and venue host.

In-repo authorship (hexa-chip):
- **박민우 (Minwoo Park)** (mk911tb@proton.me / nerve011235@gmail.com) —
  meta-domain author, n=6 projection, falsifier register. Korean
  editorial framing is the heritage tone; no Samsung employment,
  no Samsung NDA, no Samsung internal data.

## §15 REFERENCES

### Primary (public Samsung disclosures + IR)

- [Samsung Foundry Forum — annual public keynote archive](https://semiconductor.samsung.com/foundry/) (Samsung Foundry public landing; per-year keynote decks publicly mirrored)
- [Samsung Electronics — Investor Relations](https://www.samsung.com/global/ir/) (quarterly + semiannual public filings)
- [DART (KR public filing portal) — Samsung Electronics filings](https://dart.fss.or.kr) (public KR regulatory filings)
- [Wikipedia — Exynos](https://en.wikipedia.org/wiki/Exynos) (brand history + per-generation specs)
- [Wikipedia — Samsung Foundry](https://en.wikipedia.org/wiki/Samsung_Foundry) (process-node roadmap summary)

### Korean tech press

- [The Elec — Samsung Foundry coverage](https://www.thelec.kr) (English + Korean editions; semiconductor focus)
- [Korea Herald — Tech section](https://www.koreaherald.com/Tech) (English daily; Samsung beat)
- [Korea Times — Tech section](https://www.koreatimes.co.kr/www/tech/index.asp) (English daily)
- [ZDNet Korea — Semiconductor](https://zdnet.co.kr) (Korean daily; deep semi coverage)

### Industry trackers (public quarterly data)

- [TrendForce — Foundry quarterly tracker](https://www.trendforce.com) (public quarterly foundry-share reports)
- [Counterpoint Research — Smartphone SoC tracker](https://www.counterpointresearch.com) (public quarterly Exynos-vs-Snapdragon shipment data)
- [IDC — Foundry tracker](https://www.idc.com) (public quarterly foundry reports)

### IEEE / IEDM / VLSI Symposium / ISSCC (peer-reviewed device physics)

- [IEEE IEDM 2023 / 2024 / 2025 proceedings](https://ieee-iedm.org) — Samsung Foundry and KR-affiliated GAA papers (publicly indexed).
- [IEEE VLSI Symposium 2024 / 2025](https://www.vlsisymposium.org) — Samsung process-node disclosure venue.
- [IEEE ISSCC 2024 / 2025](https://www.isscc.org) — Exynos NPU + Galaxy-AI public disclosure venue.
- [IEEE EDS Korea Chapter](https://eds.ieee.org) — KR device-physics community node.

### Competitor / context (public)

- [TSMC Earnings Calls — Samsung-foundry-competitor commentary](https://investor.tsmc.com/) (TSMC public conf-calls; quarterly competitor mentions are public).
- [Intel Earnings Calls — IDM 2.0 vs Samsung commentary](https://www.intc.com/news-events/) (Intel public conf-calls).
- [Wikipedia — Samsung Pyeongtaek Campus](https://en.wikipedia.org/wiki/Samsung_Pyeongtaek_Campus) (campus history, P1–P4 buildout summary).

### Cross-link (in-repo)

- `README.md` — hexa-chip 29-verb / 6-group baseline
- `terafab/terafab.md` — vertical-megafab sister envelope (Wave 6
  absorption; same 15-section grammar)
- `proposals/samsung-foundry-hexa-6stage.md` — Samsung counter-strategy
  that this envelope provides the historical-precedent context for
- `hexa.toml` — verb manifest; meta-domain does **not** add a verb,
  it wraps the 6 groups as an outer envelope

---

**Provenance**: Public-source absorption 2026-05-12. **Zero NDA /
proprietary / Samsung-internal content.** All numbers and dates
traceable to the §15 reference list — Samsung Foundry Forum public
keynotes, Samsung IR semiannual reports, Korean tech press, IEEE/IEDM
proceedings, public industry trackers. Falsifier register
(F-EXYNOS-1..7) is the falsifiable surface; Mk.II~VI rollouts will
retire claims as data lands (2026-Q3 quarterly IR onward).

Korean editorial framing (heritage tone) is the meta-domain's whole
point and is honestly labelled. **No Samsung employment, no Samsung
NDA, no Samsung proprietary process kits, no Samsung trade secrets.**
