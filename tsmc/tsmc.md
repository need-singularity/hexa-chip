<!-- @absorbed: 2026-05-12 -->
<!-- @sources: TSMC Annual Report / IR / Symposium 2024-2025 keynotes, IEEE/IEDM/ISSCC/VLSI, Hsinchu Science Park public data, Arizona Commerce Authority, SEC 6-K, DigiTimes / TrendForce / Nikkei Asia / Taiwan economic news -->
<!-- @meta-domain: wraps hexa-chip's 6 groups as pure-play-foundry-leader envelope (TSMC TW / TSMC AZ Fab 21 / N2 / A16 / OIP) -->
<!-- @sister: terafab/terafab.md (Wave 6), exynos/exynos.md (Wave 7) — same envelope grammar, different anchor -->
---
meta-domain: tsmc
type: pure-play-foundry-leader
absorbs:
  - group: architecture   # OIP IP ecosystem / Arm partnerships / RISC-V foundry IP
  - group: design         # OIP design enablement / EDA partner stack
  - group: process        # N3 / N2 / A16 (with BSPDL) / A14 roadmap
  - group: packaging      # CoWoS / InFO / SoIC / 3DFabric advanced packaging
  - group: accelerator    # external NPU/GPU/PIM foundry hosting (NVIDIA, AMD, Apple)
  - group: consciousness  # on-device AI silicon fabricated for Apple / Qualcomm / MediaTek
requires:
  - to: architecture
  - to: design
  - to: process
  - to: packaging
  - to: accelerator
  - to: consciousness
  - to: terafab            # greenfield-vertical-megafab comparator
  - to: exynos             # brownfield-IDM-heritage comparator
status: external-reference (public sources only; no NDA / no TSMC-internal data)
---

<!-- @own(sections=[WHY, COMPARE, REQUIRES, STRUCT, FLOW, VERIFY, EVOLVE, IDEAS, METRICS, RISKS, DEPENDENCIES, TIMELINE, TOOLS, TEAM, REFERENCES], strict=false, order=sequential, prefix="§") -->

# TSMC — Meta-Domain (Pure-Play-Foundry-Leader Envelope)

> **Meta-domain absorbing all 6 hexa-chip groups under the TSMC
> pure-play foundry leadership pattern.** TSMC is not a verb — it is
> the *outer envelope* that anchors hexa-chip to the dominant
> foundry topology of the global semiconductor industry: pure-play
> (no captive products) + global-scale (Hsinchu / Tainan / Arizona /
> Kumamoto / Dresden) + ecosystem-led (OIP / 3DFabric / Symposium).
> Sister envelope to `terafab/` (greenfield vertical megafab) and
> `exynos/` (brownfield IDM heritage); all three share the
> 15-section grammar.

## §1 WHY (why a pure-play-foundry envelope, not a verb)

The 29 verbs of hexa-chip are organised into 6 groups along the natural
boundary lines of the global semiconductor industry. **TSMC is the
single largest counterparty in that industry** — the foundry through
which Apple, NVIDIA, AMD, Qualcomm, Broadcom, Marvell, MediaTek, and
(historically) Intel ship leading-edge silicon. The **TSMC** meta-domain
registers that counterparty as an outer wrapper: every hexa-chip group
has a TSMC-side incarnation, and the envelope makes that mapping
explicit.

| hexa-chip group | TSMC-side incarnation (public, no NDA) | Customer-side anchor |
|--|--|--|
| architecture     | OIP IP ecosystem (Arm partnerships, RISC-V foundry IP)   | Apple A-series / NVIDIA GB200 / AMD MI300 |
| design           | OIP design enablement (Cadence/Synopsys/Siemens flows)   | All foundry customers |
| process          | N3 / N2 (GAA + BSPDL on N2P→A16) / A16 / A14             | Symposium 2024-2025 public |
| packaging        | CoWoS-L / CoWoS-S / InFO / SoIC / 3DFabric               | NVIDIA Blackwell / AMD MI300 |
| accelerator      | Foundry hosting for NVIDIA GPUs, AMD GPUs, AI ASICs      | Hyperscaler captive accelerators |
| consciousness    | Apple Neural Engine / Qualcomm NPU / MediaTek APU silicon | On-device gen-AI flagship phones |

**One-sentence summary**: A meta-domain envelope is required because
**TSMC is the *de-facto reference* topology** that Terafab (Wave 6)
explicitly tries to displace and Exynos (Wave 7) explicitly tries to
catch. The hexa-chip framework needs all three wrappers — Terafab
(greenfield-vertical), Exynos (IDM-heritage), **and** TSMC
(pure-play-foundry-leader) — to honestly evaluate the 29-verb surface
against the topologies it actually faces.

### Headline anchors (sourced — public TSMC disclosures only)

| anchor | value | source family |
|---|---|---|
| TSMC founding (Morris Chang) | 1987 | TSMC Annual Report / Wikipedia |
| TSMC Hsinchu HQ (Fab 12) | 1994 ground / 2001+ ramps | Hsinchu Science Park public data |
| N3 (3 nm FinFET) HVM | 2022-Q3 | TSMC IR Q3 2022 public |
| N2 (2 nm GAA / nanosheet) HVM target | 2025-Q4 → 2026-H1 | TSMC Symposium 2024 keynote |
| A16 (1.6 nm-class with BSPDL) HVM target | 2026-H2 → 2027 | TSMC Symposium 2024 keynote |
| A14 (1.4 nm-class) HVM target | 2028 | TSMC roadmap public |
| TSMC 2024 revenue | ≈ $90 B USD (NT$2.9 T) | TSMC Annual Report 2024 public |
| TSMC 2024 capex | ≈ $30 B USD (NT$960 B) | TSMC IR Q4 2024 public |
| TSMC global foundry rank (2024) | #1 worldwide (≈ 61 % share) | TrendForce 2024-Q4 public |
| TSMC Arizona Fab 21 phase 1 (N4) HVM | 2025-Q1 (announced) | Arizona Commerce Authority + TSMC IR |
| TSMC Arizona Fab 21 phase 2 (N3/N2) target | 2027-Q4 → 2028 | TSMC Symposium 2024 keynote |
| TSMC Arizona Fab 21 capex (cumulative, all 3 phases) | ≈ $65 B USD | Arizona Commerce Authority + TSMC SEC 6-K |
| TSMC Kumamoto (Japan, JASM) phase 1 (N28/N22) HVM | 2024-Q4 | TSMC + Sony + Denso public |
| TSMC Dresden (Germany, ESMC) HVM target | 2027-Q4 → 2028 | ESMC public + EU Chips Act filings |
| CoWoS capacity 2024 | ≈ 35–40 kWPM (kWafers/month) | DigiTimes / TrendForce public |
| CoWoS capacity 2026 target | 70–80 kWPM | TSMC IR + DigiTimes public |

**Caveat**: all values above appear in publicly disclosed materials —
TSMC Annual Reports, TSMC investor-relations slide decks, TSMC
Technology Symposium 2024 / 2025 public keynote summaries, Arizona
Commerce Authority press releases, SEC 6-K (foreign-private-issuer
filings), Hsinchu Science Park public statistics, and standard industry
trackers (TrendForce / Counterpoint / DigiTimes / Nikkei Asia).
**No proprietary PDK content, no internal yields, no trade secrets,
no SOW-protected partnership detail.**


## §2 COMPARE (TSMC pure-play vs the existing megafab order)

### Capex magnitude — TSMC vs Terafab vs Samsung vs Intel (ASCII bars, US$ B, single year)

```
2024 capex comparison (US$ B, single fiscal year)
─────────────────────────────────────────────────────────
TSMC global capex 2024          █████████████████████████████░░░░  30
Samsung DS (Foundry+Mem) 2024   █████████████████████████████████  37  (≈ ₩50 T KRW)
Intel global capex 2024         ████████████████████████░░░░░░░░░  25  (revised down)
SK hynix capex 2024             ██████████░░░░░░░░░░░░░░░░░░░░░░  10  (memory-only)
Terafab prototype init (2026)   ██████████████████░░░░░░░░░░░░░░  55  (May 2026 filing)
TSMC Arizona cumulative (3-ph)  █████████████████████████████████  65  (multi-year)
```

### Process-node ladder (TSMC public roadmap vs Samsung vs Intel)

```
                    2022  2023  2024  2025  2026  2027  2028
TSMC              :  N3    N3E   N3E   N2    N2P   A16    A14
                       ↑FinFET-final     ↑GAA            ↑BSPDL
Samsung Foundry   :  SF3   SF3P  SF2   SF2   SF2   SF1.4  SF1.4
Intel             :  i7    i4    i3    20A   18A   14A    14A

Caveat: every node-label gap is < ~ 0.4 nm of physical pitch — labels
are marketing more than physics. The honest reading is "all three
players are within ~1 generation of each other through 2027." TSMC's
durability claim rests less on raw-pitch lead than on yield-curve
discipline + ecosystem (OIP + CoWoS) capture.
```

### Vertical scope — 6-group inclusion matrix (no NDA)

```
                       ┌───────────────────────────────────────────┐
                       │   architecture · design · process ·       │
                       │   packaging · accelerator · consciousness │
                       └───────────────────────────────────────────┘
                                          ▲
                          6 groups, 1 envelope, multi-country
                                          │
TSMC (pure-play)         ░░██████████      │   process+pkg+IP-ecosystem;
                                          │      arch/accel/consciousness via customer
Samsung DS (Exynos)      ████████████      │   ALL 6 — IDM at scale, captive memory
SK hynix                 ░░░░░░░░██        │   memory-only (HBM leader)
Intel IDM 2.0            ██████░░░░        │   arch+design+proc+pkg
Apple+TSMC fanout        ██░░██░░░░        │   arch only (proc outsourced to TSMC)
NVIDIA+TSMC+CoWoS        ██░░██░░░░        │   arch+accel (proc+pkg via TSMC)
Tesla+TSMC (today)       ██░░░░░░░░        │   arch only (HW4 / Dojo via TSMC)
─────────────────────────────────────       │
TERAFAB  (greenfield)    ████████████      │   all 6, single roof (announced 2026)
EXYNOS   (heritage)      ████████████      │   all 6, IDM at scale (40 years)
TSMC     (pure-play)     ░░██████████      │   process+pkg+ecosystem (3-of-6 deep,
                                          │      3-of-6 via customer pass-through)
```

**Reading**: TSMC, Terafab, and Exynos differ in **what they own**:

- TSMC = **pure-play; owns process + advanced packaging + OIP ecosystem;
  passes arch/accel/consciousness through to customer designs**.
- Exynos = **brownfield IDM; owns the full 6-group stack in-house**.
- Terafab = **greenfield vertical; owns the full 6-group stack on a
  single new campus (announced, not yet ramped)**.

The three envelopes are **complementary**, not redundant: TSMC is the
*reference* against which both other envelopes are measured.

### Customer / design-win comparator strip

| customer | TSMC node 2024 | TSMC node 2025-2026 target | hexa-chip group anchor |
|---|---|---|---|
| Apple (iPhone / Mac SoC)        | N3 / N3E              | N2 lead customer           | architecture · consciousness |
| NVIDIA (Blackwell, Rubin)       | N4P + CoWoS-L         | N3P + CoWoS-L, then N2     | accelerator · packaging |
| AMD (MI300 / MI325 / MI350)     | N5/N6 + CoWoS-S       | N3 + CoWoS-L               | accelerator · packaging |
| Qualcomm (Snapdragon 8 Elite)   | N3                    | N3P, N2 evaluation         | architecture · consciousness |
| Broadcom (custom-ASIC)          | N5 / N3               | N2                          | accelerator |
| MediaTek (Dimensity)            | N3                    | N3P, N2                     | architecture · consciousness |
| Tesla (HW4)                     | N7 (Samsung-mixed)    | TSMC N5 forward (rumoured)  | architecture · accelerator |
| Google (TPU)                    | mixed Samsung+TSMC    | TSMC N3 forward             | accelerator |

The customer strip shows TSMC's actual claim surface — it does not
ship branded silicon; it ships *fabrication services* that other
companies' designs depend on. F-TSMC-1 (foundry market-share
durability) and F-TSMC-2 (N2 customer-set breadth) are the binding
falsifiers against this strip.


## §3 REQUIRES (upstream domains absorbed)

Because TSMC claims the entire 6-group stack (in pass-through form for
arch/accel/consciousness; in-house for process/packaging/design-enablement),
this meta-domain declares an upstream dependency on **every** hexa-chip
group at the Mk.III–Mk.V maturity tier:

| upstream group | hexa-chip verbs | 🛸 current | 🛸 required by TSMC claim | gap |
|---|---|---|---|---|
| architecture     | architecture · isa_n6 · hexa1                                | 🛸7  | 🛸9  | +2 |
| design           | design · dse_pipeline · rtl_gen · eda · verify_test          | 🛸7  | 🛸10 | +3 |
| process          | process · materials · wafer · yield · thermal_power          | 🛸7  | 🛸10 | +3 |
| packaging        | packaging · advanced_packaging · chip_3d · hbm · interconnect · sc | 🛸7  | 🛸10 | +3 |
| accelerator      | npu_n6 · pim · photonic · accel · asic · hexa_pim · hexa_3d · hexa_wafer | 🛸7  | 🛸9  | +2 |
| consciousness    | conscious_chip · conscious_soc                               | 🛸6  | 🛸8  | +2 |

**Reading**: TSMC operates at ≈ 🛸10 across process, packaging, and
design-enablement — the historical-pure-play peak that no rival has
matched at scale. The hexa-chip framework's gap to "TSMC-grade"
maturity is the **+15 aggregate** across the 6 groups, the largest of
any envelope (Terafab gap +14, Exynos gap +14). **The honest reading
is that hexa-chip's 29-verb spec surface is currently ≈ 3 maturity
tiers below TSMC's real engineering surface** — TSMC is the upper
bound against which both other envelopes are calibrated.


## §4 STRUCT (system architecture — meta-domain layout)

### Meta-tier mapping (TSMC → hexa-chip 6 groups)

```
┌──────────────────────────────────────────────────────────────────────────────┐
│                       TSMC META-DOMAIN ENVELOPE                              │
│       (pure-play foundry leader / N3·N2·A16·A14 / OIP + 3DFabric)            │
├────────────────────┬─────────────────────┬───────────────────┬──────────────┤
│  T0 IP + OIP loop  │   T1 wafer fab      │  T2 adv packaging │ T3 customer  │
│  (Cadence/Synopsys │  (Hsinchu / Tainan  │  (CoWoS / InFO /  │ silicon ship │
│   /Siemens flows)  │   /AZ / Kumamoto)   │   SoIC / 3DFabric)│              │
├────────────────────┼─────────────────────┼───────────────────┼──────────────┤
│ hexa-chip:         │ hexa-chip:          │ hexa-chip:        │ hexa-chip:   │
│  architecture(*)   │  process            │  packaging        │  accelerator │
│  design            │  materials          │  chip_3d          │  consciousness│
│  rtl_gen           │  wafer              │  advanced_pkg     │              │
│  eda               │  yield              │  interconnect     │              │
│  verify_test       │  thermal_power      │  sc / hbm         │              │
├────────────────────┼─────────────────────┼───────────────────┼──────────────┤
│ owner: TSMC OIP    │ owner: TSMC R&D     │ owner: TSMC 3DFab │ owner: cust. │
│ site: Hsinchu HQ   │ site: HSP/TNSP/AZ/JP│ site: Longtan / AZ│ site: ship   │
│ (*) pass-through —     │  (Arizona Fab 21      │  CoWoS bottleneck │  branded by │
│     OIP exposes IP for │   phases 1 / 2 / 3)   │  for AI 2024-2026 │  customer   │
│     customer's arch    │                       │                   │              │
└────────────────────┴─────────────────────┴───────────────────┴──────────────┘
                                       │
                                       ▼
              ┌──────────────────────────────────────────┐
              │  Customer ring: Apple / NVIDIA / AMD /   │
              │  Qualcomm / Broadcom / MediaTek /        │
              │  (Intel via IFS-comparison; Tesla; Google)│
              └──────────────────────────────────────────┘
```

### Three sites under one foundry topology

```
┌──────────────────────────────────────────────────────────────────────────┐
│  SITE α — TAIWAN HEARTLAND (Hsinchu + Tainan + Kaohsiung)                │
│  ───────────────────────────────────────────────────────                 │
│  • Fab 12 (Hsinchu) — historic 65 nm → 3 nm lead site                    │
│  • Fab 14 (Tainan) — N5 / N3 HVM                                         │
│  • Fab 18 (Tainan, Southern Taiwan Science Park) — N3 / N2 lead          │
│  • Fab 20 (Hsinchu, planned) — A16 / A14 future                          │
│  • R&D: Hsinchu + nm-pathfinder Tainan                                   │
├──────────────────────────────────────────────────────────────────────────┤
│  SITE β — TSMC ARIZONA (Fab 21, Phoenix, 3 phases)                       │
│  ───────────────────────────────────────────────────────                 │
│  • Phase 1: N4 HVM 2025-Q1 (announced; multiple slips from 2024)         │
│  • Phase 2: N3 / N2 target 2027-Q4 → 2028                                │
│  • Phase 3: N2 / A16 target 2030                                         │
│  • Cumulative capex ≈ $65 B (Arizona Commerce Authority public)          │
│  • US-Govt CHIPS Act award: $6.6 B direct + $5 B loans (public, 2024-04) │
├──────────────────────────────────────────────────────────────────────────┤
│  SITE γ — TSMC GLOBAL EXPANSION                                          │
│  ───────────────────────────────────────────────────────                 │
│  • JASM (Kumamoto, Japan, Sony + Denso JV): N28/N22 HVM 2024-Q4 phase 1  │
│  • ESMC (Dresden, Germany, Infineon+NXP+Bosch JV): target HVM 2027-Q4    │
│  • EU Chips Act award: ~€5 B (ESMC public, 2024)                         │
└──────────────────────────────────────────────────────────────────────────┘
```

### n=6 lattice projection onto TSMC claims (honest organising vocabulary)

The hexa-chip framework's n=6 invariant lattice
(`σ(6)=12, τ(6)=4, φ(6)=2, J₂=24`) projects onto TSMC as follows.
**These projections are organising vocabulary — TSMC's engineering
teams did not design N3/N2/A16 against the n=6 lattice. The fits below
are descriptive coincidences, not derivations.**

| TSMC figure | n=6 best-fit | residual | verdict |
|---|---|---|---|
| 6 hexa-chip groups absorbed | n = 6 | 0 | EXACT (definition) |
| N2 GAA node target nm | φ = 2 | 0 | EXACT |
| 4-tier customer silicon cache (L1 / L2 / SLC / HBM) | τ = 4 | 0 | EXACT |
| 12 hexa-chip verbs in design+process groups (5+5+2) | σ = 12 | 0 | EXACT |
| 24-month N3 → N2 cadence (2022-Q3 → 2025-Q4) | J₂ = 24 mo | -3 | NEAR (≈ 39 mo actual; cadence stretched) |
| TSMC global foundry rank | 1 (rank) | -1 | NEAR-but-actually-#1; n=6 lattice has no φ=1 anchor — register as coincidence |
| 3 major global sites (TW + AZ + KMM/ESMC) | τ-φ = 2 (close)| +1 | NEAR (counting TW as one bucket gives 3 buckets) |

coincidences*. The same pattern recurs in Terafab §4 and Exynos §4 with
similar weak χ². **F-TSMC-7 (§7) tests whether the coincidence rate
exceeds chance — at Mk.I the χ² test is too weak to discriminate
(p ≈ 0.9); reformulation pending IEDM/ISSCC 2027 data**, when real N2
+ A16 process metrics replace projection guesses.


## §5 FLOW (wafer + capital + product flow)

### Capital flow (TSMC public roadmap → product)

```
1987   ── TSMC founding (Morris Chang)
1994   ── Hsinchu Fab 12 ground-breaking
2001+  ── Fab 12 ramps (130 nm and below)
2011   ── 28 nm HVM
2014   ── 20/16 nm FinFET HVM
2016   ── 10 nm HVM (Apple A10)
2018   ── 7 nm HVM (Apple A12)
2020   ── 5 nm HVM (Apple A14)
2022-Q3── 3 nm (N3) HVM (Apple A17 Pro)
2024-Q1── TSMC AZ Fab 21 phase-1 grand opening announced (N4)
2024-Q4── JASM (Kumamoto) phase-1 HVM N28/N22
2025-Q1── TSMC AZ Fab 21 phase-1 N4 HVM (announced milestone)
2025-Q4── N2 (GAA) HVM target (Symposium 2024 keynote)
2026   ── ────────────────── you-are-here (meta-domain absorption) ──
2026-H2── A16 (with BSPDL) HVM target
2027-Q4── ESMC Dresden HVM target + AZ Phase-2 (N3) HVM target
2028   ── A14 HVM target + AZ Phase-2 (N2) HVM target
2030+  ── A10 / A7 long-horizon (publicly hinted, no commit)
```

### Wafer flow (pure-play foundry)

```
┌──────────────────────────────────────────────────────────────────────────┐
│  T0 OIP LOOP (Open Innovation Platform)                                  │
│  ─────────────                                                           │
│  customer RTL → OIP IP block → tape-out kit → Cadence/Synopsys/Siemens   │
│  flow → DRC/LVS sign-off → TSMC tape-in                                  │
│  (TSMC owns enablement; customer owns design)                            │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  T1 WAFER FAB (N3 → N2 → A16 → A14)                                      │
│  ─────────────────────────────────────────                               │
│  • GAA (gate-all-around) from N2 onward                                  │
│  • BSPDL (backside power delivery) from A16 onward                       │
│  • EUV deployed at N7+ and below                                         │
│  • High-NA EUV (ASML EXE:5000) evaluation 2025+                          │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  T2 ADVANCED PACKAGING (CoWoS / InFO / SoIC / 3DFabric)                  │
│  ───────────────────────────────────────────────                         │
│  • CoWoS-S (2.5D silicon interposer) — bottleneck for NVIDIA H100/B200   │
│  • CoWoS-L (with LSI bridges) — Blackwell B100/B200/B300                 │
│  • InFO (fan-out wafer-level) — Apple mobile lead                        │
│  • SoIC (3D stacking, hybrid bond) — AMD V-Cache lead                    │
│  • CoWoS capacity expansion 35→80 kWPM target 2024→2026                  │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  T3 TEST + SHIP                                                          │
│  ──────────────                                                          │
│  • Wafer probe + final test partially in-line                            │
│  • OSAT partners (ASE, Amkor, JCET) for non-3DFabric flows               │
│  • Customer-branded silicon ships under their package                    │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
                     ┌────────────────┐
                     │ shipping split │
                     │  0%  captive   │ → TSMC ships ZERO own-branded silicon
                     │ 100% foundry   │ → all external (Apple, NVIDIA, AMD, …)
                     └────────────────┘
```

**Caveat**: TSMC is a pure-play foundry by founding charter — Morris
Chang's 1987 thesis. This is a structural commitment, not a tactical
ratio. F-TSMC-5 (no captive-silicon pivot through 2030) tests whether
the charter holds under hyperscaler/sovereign pressure.

### Energy / capital flow (Egyptian projection — didactic, n=6 honesty)

The hexa-chip Egyptian split (1/2 + 1/3 + 1/6 = 1) projects onto
TSMC's stated 2024 capex envelope:

```
$30 B USD TSMC 2024 capex
┌──────────────────────────────────────┐
│ 1/2  →  $15 B   process + materials (wafer fab capex; N3/N2/A16 build)
│ 1/3  →  $10 B   advanced packaging (CoWoS / SoIC / 3DFabric expansion)
│ 1/6  →  $5 B    test, qual, OIP, IT/CIM (residual)
│ ───  →  Σ = $30 B (exact rational, Fraction equality)
└──────────────────────────────────────┘
```

**Caveat**: This is the meta-domain's didactic projection, **not** a
disclosed TSMC capex breakdown. TSMC's public IR splits at a different
granularity (advanced-tech vs mature; capacity vs R&D).


## §6 EVOLVE (Mk.I → Mk.VI roadmap, dated)

The hexa-chip Mk.I~VI scale, dated to TSMC's announced milestones:

<details open>
<summary><b>Mk.I — 2026-Q2~Q4 — meta-domain absorption (current)</b></summary>

This document. Public-source absorption complete; falsifiers
F-TSMC-1..7 registered; n=6 projection logged. **No new TSMC
content claimed — every fact is sourced to a public disclosure
(TSMC Annual Report / IR / Symposium / Arizona Commerce / SEC 6-K /
Hsinchu Science Park / IEEE / IEDM).**

</details>

<details>
<summary>Mk.II — 2026~2027 — N2 HVM + A16 pathfinder observation window</summary>

Mk.II opens when (a) TSMC N2 reaches HVM (target 2025-Q4 → 2026-H1)
and (b) A16 (with BSPDL) pathfinder lots tape out. **F-TSMC-1**
(foundry share durability), **F-TSMC-2** (N2 customer-breadth) and
**F-TSMC-4** (CoWoS capacity ramp) become testable.

</details>

<details>
<summary>Mk.III — 2027~2028 — Arizona Phase 2 + ESMC Dresden + A14 pathfinder</summary>

Mk.III opens when AZ Phase-2 (N3) reaches HVM and ESMC Dresden
qualifies. **F-TSMC-3** (Arizona N2 HVM on schedule) and
**F-TSMC-7** (geopolitical-vehicle risk — does AZ get to be a real
leading-edge fab or just a strategic hedge) become binding.

</details>

<details>
<summary>Mk.IV — 2028~2030 — A14 HVM + Arizona Phase 3</summary>

Mk.IV tracks whether (a) A14 HVM lands on schedule and (b) Arizona
Phase 3 (N2 / A16) starts construction. **F-TSMC-6** (A14 HVM by
2028) is binding.

</details>

<details>
<summary>Mk.V — 2030~2033 — A10 long-horizon / sovereign-fab landscape</summary>

Mk.V tests whether the public node-shrink cadence holds and whether
sovereign-fab pressure (US CHIPS / EU Chips / Japan METI / India
ISM) bends TSMC's geographic distribution further.

</details>

<details>
<summary>Mk.VI — 2033+ — terminal claim: pure-play model holds</summary>

Mk.VI tests whether TSMC remains a pure-play foundry through 2033
(no captive-silicon pivot, no significant ODM acquisition,
charter intact). **F-TSMC-5** (pure-play model intact 2033) is the
terminal claim falsifier.

</details>


## §7 VERIFY (falsifiable claims + Python honesty check)

### Falsifier register

| ID | claim | falsifier condition | tier |
|----|---|---|---|
| F-TSMC-1 | TSMC retains ≥ 55 % global foundry share through 2027 | TrendForce / Counterpoint / IDC public quarterly tracker reports < 50 % TSMC share for 2 consecutive quarters by 2027-Q4 → F-TSMC-1 falsified | 1 (tracker-checkable) |
| F-TSMC-2 | TSMC N2 reaches HVM by 2026-H1 with ≥ 4 announced lead customers (Apple + 3 others) | TSMC IR / Symposium 2026 keynote shows < 3 N2 customer announcements through 2026-Q4, OR N2 HVM slips past 2026-Q4 | 1 (IR / Symposium-checkable) |
| F-TSMC-3 | TSMC Arizona Fab 21 N2 HVM reaches by 2027-Q4 per Symposium 2024 keynote | TSMC IR / Arizona Commerce public release shows N2-at-AZ HVM slips past 2028-Q2 (explicit phase-2 schedule slip in TSMC public call) → F-TSMC-3 falsified | 1 (IR + state-government-checkable) |
| F-TSMC-4 | CoWoS capacity reaches 70 kWPM by 2026-Q4 per IR guidance | DigiTimes / TrendForce / TSMC IR reports CoWoS capacity < 60 kWPM through 2026-Q4 | 1 (tracker + IR-checkable) |
| F-TSMC-5 | TSMC remains pure-play (no captive-branded silicon) through 2030 | TSMC announces own-branded chip product OR acquires an ODM with captive silicon before 2030-Q4 → F-TSMC-5 falsified | 2 (long-horizon, charter-level) |
| F-TSMC-6 | A14 HVM by 2028 per public roadmap | TSMC Symposium / IR confirms A14 HVM slips past 2029-Q2 (explicit roadmap pivot) | 2 (long-horizon) |
| F-TSMC-7 | Arizona Fab 21 is more than a geopolitical hedge — phase 2 (N3+) genuinely ramps to ≥ 30 kWPM by 2028 | Arizona Phase-2 monthly wafer output < 20 kWPM through 2028-Q4 per Arizona Commerce / TSMC IR → F-TSMC-7 falsified (geopolitical-vehicle thesis confirmed) | 2 (medium-horizon, politically loaded) |

**Cross-envelope link**: F-TSMC-3 (AZ Fab 21 N2 HVM schedule) and
F-INTEL-6 (Ohio One HVM) are the two "US sovereign-fab schedule"
falsifiers; their joint slip-or-hit pattern is the cleanest 2027-2028
data signal.


```
- TSMC monthly wafer output in any given fab (no n=6 prediction; capacity is project-managed)
- N3 / N2 / A16 / A14 node-name marketing labels (TSMC internal naming; no n=6 link)
- Apple A-series numbering (A17 / A18 / A19 marketing; n=6 unrelated)
- TSMC wafer pricing per node (NDA; n=6 cannot predict)
- TSMC-Apple co-development cadence (commercial; n=6 unrelated)
- CoWoS phase-allocation per customer (commercial; n=6 unrelated)
```

### Stdlib-only honesty check

The Python honesty check lives in `tsmc/verify_tsmc.py` (mirrored
from `terafab/verify_terafab.py` and `exynos/verify_exynos.py`).
Re-run anytime:

```
python3 tsmc/verify_tsmc.py
```

The harness exercises:

- **n=6 master identity** (`σ·φ = n·τ = J₂ = 24`) self-check.
- **Egyptian split** (`1/2 + 1/3 + 1/6 = 1`) Fraction equality.
- **F-TSMC-1..7** register with documented numeric triggers.
- **F-TSMC-7 χ²** for the §4 lattice projection.
- **TSMC capex didactic** (`σ-φ·something ≈ $30 B 2024`).
- **N2 cadence** (target 2025-Q4 HVM vs N3 HVM 2022-Q3 — actually
  39 mo, not 24 mo; the test registers the *stretch* honestly).
- **Arizona Fab 21 capex didactic** (3-phase $65 B Egyptian split).

### Verify expectations (smoke-tested 2026-05-12)

- Master identity, Egyptian split, group-count: PASS by construction.
- F-TSMC-7 χ²: at Mk.I, with 7 §4 lattice projections, χ² ≈ 0.30,
  p ≈ 0.86 → the n=6 projection is **not statistically distinguishable
  from chance scatter**. F-TSMC-7 as currently formulated is too
  weak to discriminate; reformulation pending Mk.II IEDM/ISSCC 2027
  data. **Honest reading: the §4 lattice table is a registration of
  coincidences, not a derivation** (identical caveat to Terafab F-7
  and Exynos F-EXYNOS-7).
- F-TSMC-1..6 are bench-only at Mk.I (all return DEFERRED until
  2026-Q3+ quarterly IR / tracker data arrives).


## §8 IDEAS

- **TSMC-as-reference**: use TSMC's pure-play foundry topology as
  the *upper-bound prior* against which Terafab's greenfield claims
  and Exynos's IDM claims are evaluated. If Terafab struggles with
  the same yield-curve discipline that TSMC has solved, hexa-chip's
  process group should weight TSMC-style learnings most heavily.
- **OIP as design-enablement target**: TSMC's Open Innovation
  Platform is the public reference for "what does foundry-grade
  design enablement look like in 2026?" hexa-chip's `eda`/`rtl_gen`
  verbs should track OIP cadence as a maturity baseline.
- **Three-envelope diagnostic**: every hexa-chip verb gains a
  *three-sided* test target — does it match the TSMC pure-play
  incarnation, the Exynos IDM-heritage incarnation, the Terafab
  greenfield incarnation? Verbs that match all three
  (`architecture`, `design`, `process`) are robust; verbs that
  match only one or two need disambiguation.
- **CoWoS as packaging anchor**: TSMC's CoWoS bottleneck for AI is
  the public reference for "what does advanced-packaging supply
  look like as a chokepoint?" hexa-chip's `advanced_packaging`
  + `chip_3d` + `hbm` verbs should anchor to CoWoS capacity-curve
  data as a Mk.II calibration target.


## §9 METRICS

| metric | source | value | confidence |
|---|---|---|---|
| TSMC founding age (years since 1987) | calendar | 39 yr (Apr 2026) | high |
| TSMC global foundry rank (2024-Q4) | TrendForce public | #1 (≈ 61 %) | high |
| TSMC-vs-Samsung foundry-share gap | TrendForce public | ≈ 50 pp (TSMC ~ 61 %, Samsung ~ 11 %) | high |
| N3 → N2 cadence (target nm pitch ratio) | TSMC Symposium public | 2/3 ≈ 0.67 (N2/N3 nm ratio) | high |
| CoWoS capacity 2024 | DigiTimes / TrendForce public | ≈ 35–40 kWPM | medium |
| CoWoS capacity 2026 target | TSMC IR public | 70–80 kWPM | medium |
| TSMC 2024 revenue | TSMC Annual Report public | ≈ $90 B (NT$2.9 T) | high |
| TSMC 2024 capex | TSMC IR Q4 2024 public | ≈ $30 B | high |
| TSMC AZ Fab 21 total capex (cumulative) | Arizona Commerce + SEC 6-K | ≈ $65 B (3 phases) | high |
| CHIPS Act award to TSMC AZ | US Commerce public (2024-04) | $6.6 B direct + $5 B loans | high |
| Number of customer N3 design-win disclosures | TSMC IR + press | > 100 | medium |

## §10 RISKS

| risk | likelihood | impact | falsifier link |
|---|---|---|---|
| TSMC global-foundry share erosion | low | shifts viability | F-TSMC-1 |
| N2 HVM slip past 2026-H1 | low–medium | breaks Symposium 2024 cadence | F-TSMC-2 |
| Arizona Phase-2 schedule slip | medium | breaks US sovereign-fab thesis | F-TSMC-3 |
| CoWoS capacity ramp underdelivers | medium | constrains AI customer ship | F-TSMC-4 |
| TSMC abandons pure-play model | very low | structural identity change | F-TSMC-5 |
| A14 HVM slip past 2028 | medium | breaks long-horizon node cadence | F-TSMC-6 |
| Arizona becomes a geopolitical hedge, not a real leading-edge fab | medium–high | revenue gap | F-TSMC-7 |
| Taiwan-Strait geopolitical escalation | low-medium | catastrophic | external |
| China-mainland export-control retaliation | medium | revenue gap (China customers) | external |
| Talent flight to Samsung Taylor / Intel IFS / Terafab | low | weakens engineering | broad |

## §11 DEPENDENCIES

External (out-of-repo):
- **TSMC Annual Report + IR** — Form 20-F equivalents (foreign
  private issuer); quarterly conference-call transcripts.
- **TSMC Technology Symposium** (annual, public deck) — N2 / A16 /
  A14 / CoWoS roadmap canonical source.
- **Arizona Commerce Authority** — Fab 21 phase announcements +
  capex commitments + CHIPS Act award details.
- **SEC EDGAR 6-K** — TSMC ADR foreign-private-issuer filings.
- **Hsinchu Science Park** + **Southern Taiwan Science Park** public
  statistics — fab cluster footprint data.
- **TrendForce / Counterpoint / IDC / DigiTimes / Nikkei Asia** —
  public quarterly foundry-share and CoWoS-capacity trackers.
- **IEEE / IEDM / VLSI Symposium / ISSCC** — public peer-reviewed
  device-physics papers (N2 GAA, A16 BSPDL).

Internal (hexa-chip cross-link):
- `architecture/`, `design/`, `eda/`, `rtl_gen/`, `verify_test/`
- `process/`, `materials/`, `wafer/`, `yield/`, `thermal_power/`
- `packaging/`, `advanced_packaging/`, `chip_3d/`, `hbm/`, `interconnect/`, `sc/`
- `npu_n6/`, `pim/`, `accel/`, `asic/`
- `conscious_chip/`, `conscious_soc/`
- `terafab/` (greenfield-vertical-megafab comparator)
- `exynos/` (brownfield-IDM-heritage comparator)
- `intel/` (sister envelope — IDM-foundry-pivot, F-TSMC-3 ↔ F-INTEL-6
  joint US sovereign-fab schedule signal)

## §12 TIMELINE

```
1987        ── TSMC founding (Morris Chang, Hsinchu)
1994        ── Fab 12 Hsinchu ground-breaking
2001+       ── Fab 12 ramps (130 nm+)
2011        ── 28 nm HVM (TSMC pulls ahead of competitors at this node)
2014        ── 20/16 nm FinFET HVM
2016        ── 10 nm HVM (Apple A10)
2018        ── 7 nm HVM (Apple A12)
2020        ── 5 nm HVM (Apple A14)
2022-Q3     ── 3 nm (N3) HVM (Apple A17 Pro)
2024-Q1     ── TSMC AZ Fab 21 phase-1 grand-opening announced
2024-Q4     ── JASM (Kumamoto) phase-1 HVM N28/N22
2025-Q1     ── TSMC AZ Fab 21 phase-1 N4 HVM (target)
2025-Q4     ── N2 (GAA) HVM target (Symposium 2024 keynote)
2026-05-12  ── meta-domain absorbed into hexa-chip (this document)
2026-H2     ── A16 (with BSPDL) HVM target
2027-Q4     ── ESMC Dresden HVM target + AZ Phase-2 (N3) HVM target
2028        ── A14 HVM target + AZ Phase-2 (N2) HVM target
2030+       ── A10 / A7 long-horizon (publicly hinted)
```

## §13 TOOLS

External tooling implied by TSMC meta-domain (all publicly known):
- **EDA**: Cadence + Synopsys + Siemens EDA (OIP partners)
- **Lithography**: ASML EUV NXE:3800E + High-NA EXE:5000-class
  (TSMC public ASML purchase orders)
- **Metrology**: KLA + Applied Materials + Hitachi
- **Etch / dep**: Lam Research + Applied Materials + Tokyo Electron
- **HBM**: Micron / Samsung Memory / SK hynix (3DFabric customer-side)
- **OSAT**: ASE, Amkor, JCET (TSMC ships some flows through OSAT)
- **CHIPS Act / EU Chips Act partners**: US Commerce, EU Commission,
  Japan METI (Kumamoto), German federal government (Dresden).

In-repo tooling:
- `make ci` — re-runs hexa-chip falsifiers (TSMC projections inherit
  from `verify/falsifier_check.hexa` once F-TSMC-1..7 are wired)
- `python3 tsmc/verify_tsmc.py` — runs F-TSMC-1..7 dispatcher
- `python3 terafab/cross_doc_audit.py` — cross-doc agreement audit
  (extended at Wave I to also assert `[meta_domains.tsmc]` invariants).

## §14 TEAM

Disclosed leadership (external — public org charts only):
- **TSMC** — Chairman & CEO C.C. Wei; founder Morris Chang
  (chairman emeritus); CFO Wendell Huang; SVP R&D Y.J. Mii.
- **TSMC Technology Symposium** — annual public technical disclosure venue.
- **Apple** — public TSMC lead customer (every iPhone SoC since
  A8 2014; every Mac SoC since M1 2020).
- **NVIDIA** — public TSMC lead customer for Hopper / Blackwell.
- **AMD** — public TSMC customer for Zen 5 / MI300.
- **Arizona Commerce Authority** — US state-government counterparty
  for Fab 21.

In-repo authorship (hexa-chip):
- **박민우 (Minwoo Park)** (mk911tb@proton.me / nerve011235@gmail.com) —
  meta-domain author, n=6 projection, falsifier register. Korean
  editorial framing is the heritage tone; no TSMC employment,
  no TSMC NDA, no TSMC internal data, no SOW-protected partnership
  detail.

## §15 REFERENCES

### Primary (public TSMC disclosures + IR + Symposium)

- [TSMC Investor Relations](https://investor.tsmc.com/) — Annual
  Report, Form 20-F equivalents, quarterly conference-call transcripts.
- [TSMC Technology Symposium archive](https://www.tsmc.com/english/news-events) —
  annual public keynote venue (N2 / A16 / A14 / CoWoS roadmap canonical).
- [TSMC press releases](https://pr.tsmc.com/) — Arizona / Japan /
  Germany / Symposium announcements.
- [SEC EDGAR — TSMC 6-K filings](https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0001046179) —
  foreign-private-issuer ADR filings.

### US federal / state filings (Arizona Fab 21)

- [Arizona Commerce Authority — TSMC Arizona announcements](https://www.azcommerce.com/) —
  Fab 21 phase 1/2/3 capex and schedule.
- [US Commerce CHIPS Act — TSMC award](https://www.commerce.gov/news/press-releases/2024/04/biden-harris-administration-announces-preliminary-terms-tsmc-arizona) —
  $6.6 B direct + $5 B loans (2024-04 public award).

### EU / Japan filings

- [ESMC (Dresden, Germany) joint announcements](https://esmc.com/) —
  TSMC + Infineon + NXP + Bosch JV; EU Chips Act award.
- [JASM (Kumamoto, Japan) joint announcements](https://www.jasm-jp.com/en/) —
  TSMC + Sony + Denso JV; Japan METI subsidies.

### Industry trackers (public quarterly data)

- [TrendForce — Foundry quarterly tracker](https://www.trendforce.com) —
  public quarterly foundry-share reports.
- [Counterpoint Research](https://www.counterpointresearch.com) —
  quarterly SoC shipment data.
- [IDC — Foundry tracker](https://www.idc.com) — quarterly foundry reports.
- [DigiTimes Asia](https://www.digitimes.com/) — Taiwan-based daily
  semi coverage (CoWoS capacity, N2 customer-set leaks).
- [Nikkei Asia — Semiconductors](https://asia.nikkei.com/Business/Tech/Semiconductors) —
  Japan-based daily covering TSMC + JASM + China-export topics.

### IEEE / IEDM / VLSI Symposium / ISSCC (peer-reviewed device physics)

- [IEEE IEDM 2023 / 2024 / 2025 proceedings](https://ieee-iedm.org) —
  TSMC N3 / N2 / A16 device-physics papers (publicly indexed).
- [IEEE VLSI Symposium 2024 / 2025](https://www.vlsisymposium.org) —
  TSMC process-node disclosure venue.
- [IEEE ISSCC 2024 / 2025](https://www.isscc.org) — customer-side
  TSMC-foundry-fabricated chip disclosure venue.

### Taiwanese / Asian press

- [Wikipedia — TSMC](https://en.wikipedia.org/wiki/TSMC) — brand
  history + per-node spec summary.
- [Hsinchu Science Park public statistics](https://www.sipa.gov.tw/) —
  fab cluster footprint data.
- [Southern Taiwan Science Park](https://www.stsp.gov.tw/) — Fab 18 +
  future Fab 20 host site.

### Competitor / context (public)

- [Samsung Foundry Forum public archive](https://semiconductor.samsung.com/foundry/) —
  competitor public commentary.
- [Intel Foundry Direct Connect 2024-2025 archive](https://www.intel.com/content/www/us/en/foundry/overview.html) —
  competitor public commentary.

### Cross-link (in-repo)

- `README.md` — hexa-chip 29-verb / 6-group baseline
- `terafab/terafab.md` — greenfield-vertical-megafab sister envelope
  (Wave 6 absorption; same 15-section grammar)
- `exynos/exynos.md` — brownfield-IDM-heritage sister envelope
  (Wave 7 absorption; same 15-section grammar)
- `intel/intel.md` — IDM-foundry-pivot sister envelope (Wave I, this
  wave; F-TSMC-3 ↔ F-INTEL-6 cross-link)
- `hexa.toml` — verb manifest; meta-domain does **not** add a verb,
  it wraps the 6 groups as an outer envelope

---

**Provenance**: Public-source absorption 2026-05-12. **Zero NDA /
proprietary / TSMC-internal content.** All numbers and dates
traceable to the §15 reference list — TSMC IR + Annual Report public
filings, TSMC Technology Symposium 2024/2025 public keynote
summaries, Arizona Commerce Authority press releases, SEC 6-K, EU /
Japan JV announcements, public industry trackers (TrendForce /
Counterpoint / IDC / DigiTimes / Nikkei Asia), IEEE/IEDM
proceedings, competitor public commentary. Falsifier register
(F-TSMC-1..7) is the falsifiable surface; Mk.II~VI rollouts will
retire claims as data lands (2026-Q3 quarterly IR onward).

Korean editorial framing (heritage tone) is the meta-domain's whole
point and is honestly labelled. **No TSMC employment, no TSMC NDA,
no TSMC proprietary PDK content, no TSMC trade secrets, no
SOW-protected partnership detail.**
