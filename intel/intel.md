<!-- @absorbed: 2026-05-12 -->
<!-- @sources: Intel 10-K (SEC EDGAR), Intel Investor Day, Intel Foundry Direct Connect 2024-2025, Ohio One Campus public filings, Magdeburg paused-project announcements, IEEE/IEDM papers, The Register, Tom's Hardware, SemiAnalysis (public-side analysis only) -->
<!-- @meta-domain: wraps hexa-chip's 6 groups as IDM-foundry-pivot envelope (Intel 18A / 14A / IFS / Tower acquisition / Ohio One) -->
<!-- @sister: terafab/terafab.md (Wave 6), exynos/exynos.md (Wave 7), tsmc/tsmc.md (Wave I) — same envelope grammar, different anchor -->
---
meta-domain: intel
type: idm-foundry-pivot
absorbs:
  - group: architecture   # Intel CPU (Core Ultra, Xeon, Atom), x86 ISA stewardship
  - group: design         # Intel Design Engineering Group + x86 microarchitecture teams
  - group: process        # Intel 18A (RibbonFET + PowerVia) / 14A (High-NA EUV) roadmap
  - group: packaging      # Foveros / Foveros Direct / EMIB / EMIB-T advanced packaging
  - group: accelerator    # Gaudi (post-Habana) + Intel GPU (Battlemage / Celestial) + Tower analog
  - group: consciousness  # Meteor/Lunar/Arrow/Panther Lake on-device NPU lineage
requires:
  - to: architecture
  - to: design
  - to: process
  - to: packaging
  - to: accelerator
  - to: consciousness
  - to: terafab            # greenfield-vertical-megafab comparator (and F-TERAFAB-6 cross-link)
  - to: exynos             # brownfield-IDM-heritage comparator
  - to: tsmc               # pure-play-foundry-leader comparator (F-INTEL-6 ↔ F-TSMC-3 cross-link)
status: external-reference (public sources only; no NDA / no Intel-internal data)
---

<!-- @own(sections=[WHY, COMPARE, REQUIRES, STRUCT, FLOW, VERIFY, EVOLVE, IDEAS, METRICS, RISKS, DEPENDENCIES, TIMELINE, TOOLS, TEAM, REFERENCES], strict=false, order=sequential, prefix="§") -->

# Intel — Meta-Domain (IDM-Foundry-Pivot Envelope)

> **Meta-domain absorbing all 6 hexa-chip groups under the Intel
> IDM 2.0 / Intel Foundry pivot pattern.** Intel is not a verb —
> it is the *outer envelope* that anchors hexa-chip to the most
> consequential structural pivot in the global semiconductor
> industry: an incumbent IDM (≈ 57 yr old) reinventing itself as
> a foundry-for-external-customers while simultaneously catching
> up on process leadership (Intel 18A, then 14A). Sister envelope
> to `terafab/` (greenfield vertical megafab), `exynos/` (brownfield
> IDM heritage), and `tsmc/` (pure-play-foundry-leader); all four
> share the 15-section grammar.

## §1 WHY (why an IDM-foundry-pivot envelope, not a verb)

The 29 verbs of hexa-chip are organised into 6 groups along the
natural boundary lines of the global semiconductor industry. **Intel
is the structural exception** — neither pure-play (like TSMC) nor
pure-IDM (like Samsung Exynos), but mid-pivot: shipping captive Core
Ultra / Xeon silicon while simultaneously trying to sell foundry
services on the same fabs to NVIDIA, Microsoft, Amazon, the US
Department of Defense, and (most consequentially) Tesla via Terafab.
The **Intel** meta-domain registers that pivot as an outer wrapper:
every hexa-chip group has an Intel-side incarnation, and the envelope
makes that mapping explicit.

| hexa-chip group | Intel-side incarnation (public, no NDA) | Anchor product / customer |
|--|--|--|
| architecture     | Intel x86 (Core Ultra, Xeon, Atom) + IFS external arch    | Core Ultra (Meteor/Lunar Lake), Xeon 6 |
| design           | Intel Design Engineering Group + IFS design enablement    | x86 microarchitecture teams |
| process          | Intel 18A (RibbonFET + PowerVia) / 14A (High-NA EUV) roadmap | Panther Lake (2025), Nova Lake (2026+) |
| packaging        | Foveros / Foveros Direct / EMIB / EMIB-T                  | Ponte Vecchio, Meteor Lake, Lunar Lake |
| accelerator      | Gaudi (post-Habana) + Intel GPU (Battlemage / Celestial)  | Gaudi 3 / Falcon Shores  |
| consciousness    | Meteor / Lunar / Arrow / Panther Lake on-device NPU       | Core Ultra Series 2 NPU 4 |

**One-sentence summary**: A meta-domain envelope is required because
**Intel is the *bridge* between Terafab and TSMC** — IDM-history like
Exynos, foundry-pivot like a TSMC-rival, vertical-fab-customer for
Terafab's Intel 14A volume claim. The hexa-chip framework needs all
four wrappers — Terafab (greenfield-vertical), Exynos (IDM-heritage),
TSMC (pure-play-foundry-leader), **and** Intel (IDM-foundry-pivot) —
to honestly evaluate the 29-verb surface against every publicly
observed fab topology.

### Headline anchors (sourced — public Intel disclosures only)

| anchor | value | source family |
|---|---|---|
| Intel founding (Noyce / Moore / Grove) | 1968 | Intel 10-K / Wikipedia |
| IDM 2.0 announcement (Pat Gelsinger) | 2021-03-23 | Intel public press |
| Intel Foundry Services (IFS) re-brand → "Intel Foundry" | 2024-Q1 | Intel Foundry Direct Connect 2024 |
| Intel 4 (Meteor Lake compute tile) HVM | 2023-Q4 | Intel public press |
| Intel 3 (Granite Rapids) HVM | 2024-Q4 | Intel public press |
| Intel 18A (RibbonFET + PowerVia) HVM target | 2025-H2 → 2026-H1 (Panther Lake lead) | Intel Foundry Direct Connect 2024-2025 |
| Intel 14A (High-NA EUV introduction) HVM target | 2027-Q4 → 2028 | Intel Foundry Direct Connect 2025 |
| Intel 2024 revenue | ≈ $53 B USD | Intel 10-K (SEC EDGAR) |
| Intel 2024 capex | ≈ $25 B USD (revised down from $30 B) | Intel 10-K + IR commentary |
| Intel 2024 foundry-customer disclosures | ≥ 3 lead 18A customers + Microsoft 14A LOI | Intel Foundry Direct Connect 2024 |
| Tower Semiconductor acquisition | announced 2022-02, terminated 2023-08 | Intel + Tower public press |
| Intel Ohio One campus (Licking County, OH) | groundbreaking 2022-09; phase-1 HVM target slipped 2025 → 2027 → 2030 | Intel public press + The Register |
| Intel Ohio One announced capex | ≈ $20 B initial → $100 B cumulative ambition | Intel public press |
| Intel Magdeburg (Germany) Fab 29 | announced 2022-03, paused 2024-09 | Intel public + EU Chips Act |
| CHIPS Act award (Intel) | $8.5 B direct + $11 B loans (2024-03 announce; revised 2025) | US Commerce public |
| Pat Gelsinger CEO departure | 2024-12-01 (interim CEOs Holthaus + Zinsner) | Intel public press |
| Lip-Bu Tan CEO appointment | 2025-03-12 (announced); ~2 mo after departure | Intel public press |

**Caveat**: all values above appear in publicly disclosed materials —
Intel 10-K SEC EDGAR filings, Intel Foundry Direct Connect public
keynote decks, Intel quarterly investor calls, Ohio One Campus public
filings with Licking County / Ohio state, EU Chips Act filings,
Magdeburg paused-project announcements, and standard industry coverage
(The Register, Tom's Hardware, SemiAnalysis public-side analysis).
**No proprietary process kits, no internal yields, no trade secrets,
no SOW-protected partnership detail.**


## §2 COMPARE (Intel IDM-pivot vs the existing megafab order)

### Capex magnitude — Intel vs TSMC vs Samsung vs Terafab (ASCII bars, US$ B, single year)

```
2024 capex comparison (US$ B, single fiscal year)
─────────────────────────────────────────────────────────
TSMC global capex 2024          █████████████████████████████░░░░  30
Samsung DS (Foundry+Mem) 2024   █████████████████████████████████  37  (≈ ₩50 T KRW)
Intel global capex 2024         ████████████████████████░░░░░░░░░  25  (revised down from $30B)
SK hynix capex 2024             ██████████░░░░░░░░░░░░░░░░░░░░░░  10  (memory-only)
Terafab prototype init (2026)   ██████████████████░░░░░░░░░░░░░░  55  (May 2026 filing)
Intel Ohio One cumulative       ████████████████████████████████████ 100 (cumulative ambition; slipped)
```

### Process-node ladder (Intel public roadmap vs TSMC vs Samsung)

```
                    2022  2023  2024  2025  2026  2027  2028
Intel             :  i7    i4    i3    20A   18A   14A    14A
                       ↑5-nodes-4-years promise            ↑High-NA
TSMC              :  N3    N3E   N3E   N2    N2P   A16    A14
                       ↑FinFET-final     ↑GAA            ↑BSPDL
Samsung Foundry   :  SF3   SF3P  SF2   SF2   SF2   SF1.4  SF1.4

Caveat: "5 nodes in 4 years" was Gelsinger's 2021 promise. Intel 20A
was cancelled in 2024-Q3 (folded into 18A); 18A is the real
catch-up node. Whether Intel actually catches TSMC's N2 / A16 at
18A / 14A is the central F-INTEL-1 + F-INTEL-2 falsifier surface.
```

### Vertical scope (IDM-foundry-pivot) — 6-group inclusion matrix (no NDA)

```
                       ┌───────────────────────────────────────────┐
                       │   architecture · design · process ·       │
                       │   packaging · accelerator · consciousness │
                       └───────────────────────────────────────────┘
                                          ▲
                          6 groups, 1 envelope, pivot in motion
                                          │
Intel IDM 2.0           ██████████████    │   arch+design+proc+pkg+accel+conscious
                                          │      (full 6-group; foundry pivot adds
                                          │      external customers to all 6)
TSMC (pure-play)        ░░██████████      │   process+pkg+ecosystem
Samsung DS (Exynos)     ████████████      │   ALL 6, IDM at scale
Apple+TSMC fanout       ██░░██░░░░        │   arch only (proc to TSMC)
NVIDIA+TSMC+CoWoS       ██░░██░░░░        │   arch+accel (proc+pkg via TSMC)
Tesla+TSMC (today)      ██░░░░░░░░        │   arch only (HW4)
Tesla+Intel-via-Terafab ██░░██░░░░        │   arch+process (Terafab F-TERAFAB-6 vehicle)
─────────────────────────────────────       │
TERAFAB  (greenfield)   ████████████      │   all 6, single roof (announced)
EXYNOS   (heritage)     ████████████      │   all 6, IDM at scale (40 years)
TSMC     (pure-play)    ░░██████████      │   process+pkg+ecosystem
INTEL    (pivot)        ██████████████    │   all 6 + foundry pivot (in motion)
```

**Reading**: Intel is the only envelope that's **mid-pivot** —
historically IDM (full 6-group, captive products) and trying to
extend the 6-group surface to *external customers* via Intel
Foundry. The pivot is structurally hard because the same fabs host
both Intel's own products and external customers'; conflict-of-interest
firewalls are a public IFS talking point.

### External-customer disclosure strip (public IFS commitments)

| customer | announced node | timeline | hexa-chip group anchor |
|---|---|---|---|
| Microsoft               | Intel 18A (custom design)  | LOI 2024-Q1; tape-in 2025-Q4   | architecture · accelerator |
| Qualcomm                | Intel 20A (cancelled)      | originally 2024; cancelled 2024-Q3 | architecture (deprecated) |
| Amazon AWS              | Intel 18A (custom Trainium adjacency) | LOI 2024-Q4   | accelerator |
| US Department of Defense | RAMP-C secure enclave (Intel 18A)    | 2025+    | architecture · accelerator |
| MediaTek                | Intel-Foundry 5/12 nm legacy lines    | 2024+    | architecture |
| Tesla (via Terafab)     | Intel 14A first-customer volume       | Terafab Mk.III target 2028-2030 | architecture · process (F-INTEL-3) |

The customer strip is the binding test surface for F-INTEL-1
(18A external customer count) and F-INTEL-3 (14A first-customer
volume = Tesla via Terafab — the same physical fact as F-TERAFAB-6).


## §3 REQUIRES (upstream domains absorbed)

Because Intel claims the entire 6-group stack (in IDM form for
captive products; in foundry form for external customers), this
meta-domain declares an upstream dependency on **every** hexa-chip
group at the Mk.III–Mk.V maturity tier:

| upstream group | hexa-chip verbs | 🛸 current | 🛸 required by Intel claim | gap |
|---|---|---|---|---|
| architecture     | architecture · isa_n6 · hexa1                                | 🛸7  | 🛸9  | +2 |
| design           | design · dse_pipeline · rtl_gen · eda · verify_test          | 🛸7  | 🛸9  | +2 |
| process          | process · materials · wafer · yield · thermal_power          | 🛸7  | 🛸9  | +2 |
| packaging        | packaging · advanced_packaging · chip_3d · hbm · interconnect · sc | 🛸7  | 🛸10 | +3 |
| accelerator      | npu_n6 · pim · photonic · accel · asic · hexa_pim · hexa_3d · hexa_wafer | 🛸7  | 🛸8  | +1 |
| consciousness    | conscious_chip · conscious_soc                               | 🛸6  | 🛸8  | +2 |

**Reading**: Intel operates at ≈ 🛸9 across architecture / design /
process / accel / consciousness and ≈ 🛸10 at packaging (Foveros +
EMIB are public best-in-class for client-CPU + advanced packaging
integration). The hexa-chip framework's gap to "Intel-grade"
maturity is the **+12 aggregate** across the 6 groups, the smallest
of any envelope (TSMC gap +15, Terafab gap +14, Exynos gap +14).
**The honest reading is that Intel is the most accessible reference
target for hexa-chip's 29-verb surface** — the gap is smaller because
Intel's packaging-led integration is the closest public analogue to
hexa-chip's `advanced_packaging` + `chip_3d` + `interconnect` triad.


## §4 STRUCT (system architecture — meta-domain layout)

### Meta-tier mapping (Intel → hexa-chip 6 groups)

```
┌──────────────────────────────────────────────────────────────────────────────┐
│                       INTEL META-DOMAIN ENVELOPE                             │
│        (IDM 2.0 / Intel Foundry pivot / 18A · 14A / Foveros · EMIB)          │
├────────────────────┬─────────────────────┬───────────────────┬──────────────┤
│ I0 design + IFS    │  I1 wafer fab       │ I2 adv packaging  │ I3 product   │
│ (DEG x86 + IFS     │ (D1X Hillsboro /    │ (Foveros / EMIB / │ + IFS ext    │
│  external arch)    │  Fab 42 AZ / Ohio / │  Foveros Direct)  │ customer ship│
│                    │  Magdeburg paused)  │                   │              │
├────────────────────┼─────────────────────┼───────────────────┼──────────────┤
│ hexa-chip:         │ hexa-chip:          │ hexa-chip:        │ hexa-chip:   │
│  architecture      │  process            │  packaging        │  accelerator │
│  design            │  materials          │  chip_3d          │  consciousness│
│  rtl_gen           │  wafer              │  advanced_pkg     │              │
│  eda               │  yield              │  interconnect     │              │
│  verify_test       │  thermal_power      │  sc / hbm         │              │
├────────────────────┼─────────────────────┼───────────────────┼──────────────┤
│ owner: Intel DEG   │ owner: Intel TD     │ owner: Intel ATTD │ owner: split │
│ site: Hillsboro    │ site: D1X / Fab 42 /│ site: New Mexico /│   captive   │
│                    │ Ohio One / EU       │   Oregon          │  + IFS ext  │
└────────────────────┴─────────────────────┴───────────────────┴──────────────┘
                                       │
                                       ▼
              ┌──────────────────────────────────────────┐
              │  External customer ring: Microsoft /     │
              │  Amazon AWS / US DoD (RAMP-C) /          │
              │  MediaTek / Tesla via Terafab            │
              └──────────────────────────────────────────┘
```

### Two product lines under one IDM-foundry-pivot

```
┌──────────────────────────────────────────────────────────────────────────┐
│  LINE α — INTEL CAPTIVE (Core Ultra / Xeon / Atom)                       │
│  ───────────────────────────────────────────────                         │
│  • Core Ultra Series 2 (Lunar Lake, 2024-Q3) — Intel 3 + N3B mix         │
│  • Panther Lake (2025-H2) — Intel 18A lead product                       │
│  • Xeon 6 (Granite Rapids) — Intel 3                                     │
│  • Process: Intel 4 → Intel 3 → Intel 18A → Intel 14A                    │
│  • Volume: tens of millions of Core Ultra / year                         │
├──────────────────────────────────────────────────────────────────────────┤
│  LINE β — INTEL FOUNDRY (external customers, post-2021 pivot)            │
│  ───────────────────────────────────────────────                         │
│  • Targets: Microsoft / Amazon AWS / US DoD / MediaTek / Tesla(via       │
│    Terafab) / Qualcomm (cancelled 20A)                                   │
│  • Process: Intel 18A (lead external node) / Intel 14A (Microsoft LOI)   │
│  • Public design wins:                                                   │
│      - Microsoft custom AI chip on Intel 18A (LOI 2024-Q1)               │
│      - US DoD RAMP-C secure enclave on Intel 18A                         │
│      - Amazon AWS Trainium-adjacency on Intel 18A (LOI 2024-Q4)          │
│  • Foundry market share: < 5 % global (TrendForce 2024-Q4 public)        │
└──────────────────────────────────────────────────────────────────────────┘
```

### n=6 lattice projection onto Intel claims (honest organising vocabulary)

The hexa-chip framework's n=6 invariant lattice
(`σ(6)=12, τ(6)=4, φ(6)=2, J₂=24`) projects onto Intel as follows.
**These projections are organising vocabulary — Intel's engineering
teams did not design 18A / 14A against the n=6 lattice. The fits below
are descriptive coincidences, not derivations.**

| Intel figure | n=6 best-fit | residual | verdict |
|---|---|---|---|
| 6 hexa-chip groups absorbed | n = 6 | 0 | EXACT (definition) |
| Intel 18A node generation count from Intel 7 (i7→i4→i3→18A) | τ = 4 | 0 | EXACT |
| Intel 14A external-customer count (Microsoft + Tesla-via-Terafab + ?) | φ = 2 | 0 | EXACT (at LOI count) |
| Intel "5 nodes in 4 years" promise vs reality (i7+i4+i3+20A+18A = 5 nodes, but 20A cancelled = 4) | τ = 4 | 0 | EXACT (post-cancellation) |
| 24-month Foundry rebrand cadence (IFS 2021 → Intel Foundry 2024) | J₂ = 24 mo (×1.5) | -12 | NEAR (≈ 36 mo, J₂ + φ·σ) |
| Intel Ohio One announced phase count | 2 (initial) | 0 | EXACT-by-coincidence (φ = 2) |
| Intel global capex 2024 / TSMC 2024 ratio | 25/30 ≈ 5/6 = (σ-2)/σ × τ⁻¹ × residue | 0 | NEAR (number-theoretic coincidence) |

**Caveat (own#11 honesty)**: The fits above are *registration of
coincidences*. The same pattern recurs in Terafab §4, Exynos §4, and
TSMC §4 with similar weak χ². **F-INTEL-7 (§7) tests whether the
coincidence rate exceeds chance — at Mk.I the χ² test is too weak
to discriminate (p ≈ 0.87); reformulation pending IEDM/ISSCC 2027
data**, when real Intel 18A + 14A process metrics replace projection
guesses.


## §5 FLOW (wafer + capital + product flow)

### Capital flow (Intel public roadmap → product)

```
1968   ── Intel founding (Noyce / Moore / Grove)
1971   ── 4004 microprocessor
1985   ── 386 (single-architecture pivot)
2006   ── Core Duo / Conroe (Pentium → Core)
2012   ── 22 nm Tri-Gate (FinFET first-mover)
2014   ── 14 nm HVM (Broadwell)
2019   ── 10 nm HVM (Ice Lake, delayed from 2017)
2021-03── IDM 2.0 announcement (Pat Gelsinger; "5 nodes in 4 years")
2022-02── Tower Semiconductor acquisition announced
2022-03── Intel Magdeburg (Germany) Fab 29 announced
2022-09── Intel Ohio One groundbreaking (Licking County, OH)
2023-08── Tower Semiconductor acquisition terminated (Chinese regulatory delay)
2023-Q4── Intel 4 HVM (Meteor Lake compute tile)
2024-Q1── Intel Foundry rebrand (IFS → Intel Foundry); Direct Connect launch
2024-Q4── Intel 3 HVM (Granite Rapids); Lunar Lake ship
2024-09── Magdeburg Fab 29 PAUSED (2-year delay)
2024-12-01── Pat Gelsinger departs as CEO
2025-03-12── Lip-Bu Tan appointed CEO
2025-H2 ── Intel 18A HVM target (Panther Lake lead)
2026   ── ────────────────── you-are-here (meta-domain absorption) ──
2026   ── Nova Lake (target Intel 18A) ramp
2027-Q4── Intel 14A HVM target (High-NA EUV introduction)
2027   ── Ohio One Phase 1 HVM target (slipped from 2025)
2028+  ── Intel 14A external-customer volume (Tesla via Terafab F-TERAFAB-6)
2030+  ── Ohio One Phase 1 HVM (if 2027 slips further); Ohio Phase 2 ambition
```

### Wafer flow (IDM-foundry-pivot, dual product line)

```
┌──────────────────────────────────────────────────────────────────────────┐
│  I0 DESIGN LOOP (DEG captive + IFS external)                             │
│  ─────────────                                                           │
│  spec → RTL → synth → P&R → DRC/LVS → tape-out                          │
│  (Intel DEG in-house for captive Core Ultra / Xeon;                      │
│   IFS opens design enablement to Microsoft / AWS / MediaTek / Tesla)     │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  I1 WAFER FAB (Intel 4 / 3 / 18A / 14A)                                  │
│  ─────────────────────────────────────────                               │
│  • RibbonFET (GAA) from 20A → 18A onward (publicly disclosed)            │
│  • PowerVia (backside-power) from 20A → 18A onward (Intel-first claim)   │
│  • High-NA EUV introduction at Intel 14A (ASML EXE:5000 lead customer)   │
│  • Fabs: D1X (Hillsboro, OR — leading-edge R&D) / Fab 42 (AZ) /          │
│          Ohio One (OH, phase 1 slipped) / Magdeburg DE (paused)          │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  I2 ADVANCED PACKAGING (Foveros / EMIB / Foveros Direct / EMIB-T)        │
│  ───────────────────────────────────────────────                         │
│  • Foveros (3D stacking, Lakefield 2019 first; Meteor Lake / Lunar Lake) │
│  • EMIB (embedded multi-die interconnect bridge, 2017+)                  │
│  • Foveros Direct (hybrid-bond, 2024+ Ponte Vecchio / Falcon Shores)     │
│  • EMIB-T (advanced EMIB, 2025+ disclosed Direct Connect)                │
│  • Sites: Chandler, AZ (Fab 12 advanced-pkg); New Mexico                 │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  I3 SHIP (CAPTIVE + EXTERNAL)                                            │
│  ──────────────                                                          │
│  • Captive: Core Ultra / Xeon ship under Intel brand (Line α)            │
│  • External: customer-branded silicon ships under their package (Line β) │
└────────────────────────────┬─────────────────────────────────────────────┘
                             ▼
                     ┌────────────────┐
                     │ shipping split │
                     │ ≈ 95% captive  │ → Intel Core Ultra / Xeon
                     │ ≈  5% foundry  │ → IFS external (growing target)
                     └────────────────┘
```

**Caveat**: the 95/5 split is a stylised Mk.I guess based on public
revenue commentary (Intel total ≈ $53 B 2024; IFS external revenue
< $1 B 2024 per Intel 10-K segment commentary). Real ratio
fluctuates per quarter; reformulation pending public Intel 10-K
segment breakdown data (F-INTEL-1).

### Energy / capital flow (Egyptian projection — didactic, n=6 honesty)

The hexa-chip Egyptian split (1/2 + 1/3 + 1/6 = 1) projects onto
Intel's stated 2024 capex envelope:

```
$25 B USD Intel 2024 capex (revised down from $30B)
┌──────────────────────────────────────┐
│ 1/2  →  $12.5 B  process + materials (D1X Hillsboro + Fab 42 AZ + Ohio One)
│ 1/3  →  $8.33 B  advanced packaging (Foveros + EMIB Chandler / NM)
│ 1/6  →  $4.17 B  test, qual, IFS enablement (residual)
│ ───  →  Σ = $25 B (exact rational, Fraction equality)
└──────────────────────────────────────┘
```

**Caveat**: This is the meta-domain's didactic projection, **not** a
disclosed Intel capex breakdown. Intel's public 10-K splits at a
different granularity (Product / Foundry segment; Mfg / R&D).


## §6 EVOLVE (Mk.I → Mk.VI roadmap, dated)

The hexa-chip Mk.I~VI scale, dated to Intel's announced milestones:

<details open>
<summary><b>Mk.I — 2026-Q2~Q4 — meta-domain absorption (current)</b></summary>

This document. Public-source absorption complete; falsifiers
F-INTEL-1..7 registered; n=6 projection logged. **No new Intel
content claimed — every fact is sourced to a public disclosure
(Intel 10-K SEC EDGAR / Intel Foundry Direct Connect 2024-2025 /
Ohio One Campus public filings / Magdeburg paused-project
announcements / IEEE/IEDM / The Register / Tom's Hardware /
SemiAnalysis public-side analysis).**

</details>

<details>
<summary>Mk.II — 2026~2027 — Intel 18A HVM + external-customer ramp observation window</summary>

Mk.II opens when (a) Intel 18A reaches HVM (target 2025-H2 →
2026-H1, Panther Lake lead) and (b) external-customer ramp begins
(Microsoft 18A tape-in expected 2025-Q4). **F-INTEL-1** (≥ 3 18A
external customers shipping by 2027-Q4) and **F-INTEL-2** (Panther
Lake on schedule) become testable.

</details>

<details>
<summary>Mk.III — 2027~2028 — Intel 14A HVM + Ohio One Phase 1 HVM + Tesla-via-Terafab cross-link</summary>

Mk.III opens when (a) Intel 14A reaches HVM (target 2027-Q4 → 2028,
Microsoft LOI lead) and (b) Ohio One Phase 1 ramps (slipped target
2027, may slip to 2030). **F-INTEL-3** (14A external first-customer
volume = Tesla via Terafab; cross-link F-TERAFAB-6) and
**F-INTEL-6** (Ohio One Phase 1 HVM by 2027-Q4) become binding.
F-INTEL-6 jointly tests with F-TSMC-3 (AZ Fab 21 N2 HVM) as the
US-sovereign-fab schedule signal.

</details>

<details>
<summary>Mk.IV — 2028~2030 — Intel 14A external volume + Ohio One Phase 2</summary>

Mk.IV tracks whether (a) Intel 14A reaches volume HVM with Terafab
as first customer and (b) Ohio One Phase 2 starts construction.
**F-INTEL-4** (Magdeburg unpause OR final cancel by 2028-Q4) and
**F-INTEL-5** (IFS revenue ≥ $5 B/yr by 2030) become binding.

</details>

<details>
<summary>Mk.V — 2030~2033 — IFS structural breakout</summary>

Mk.V tests whether Intel Foundry has become a structurally separate
business (spin-off, hive-down, IPO, or sale) OR has been re-absorbed
into Intel proper. **F-INTEL-5** (long-horizon IFS viability)
binding.

</details>

<details>
<summary>Mk.VI — 2033+ — terminal claim: Intel survives the pivot</summary>

Mk.VI tests whether Intel — as a corporate entity — remains
intact (no break-up into Intel-Products + Intel-Foundry as separate
companies; no acquisition; no chapter-11). **F-INTEL-7** (corporate
survival 2033) is the terminal claim falsifier.

</details>


## §7 VERIFY (falsifiable claims + Python honesty check)

### Falsifier register

| ID | claim | falsifier condition | tier |
|----|---|---|---|
| F-INTEL-1 | Intel 18A ships with ≥ 3 named external customers (Microsoft + 2 others) volume-tape-in by 2027-Q4 | Intel Foundry Direct Connect 2026/2027 shows < 3 18A external customers shipping by 2027-Q4 → F-INTEL-1 falsified | 1 (Direct Connect / 10-K checkable) |
| F-INTEL-2 | Intel 18A reaches HVM by 2026-H1 with Panther Lake as lead product per IFDC 2024 keynote | Intel public roadmap or 10-K confirms 18A HVM slips past 2026-Q3 (explicit Panther Lake slip) | 1 (10-K-checkable) |
| F-INTEL-3 | Intel 14A first-customer external volume = Tesla via Terafab (cross-link F-TERAFAB-6) | Terafab Mk.III window (2028-2030) closes with no Tesla-on-Intel-14A volume → F-INTEL-3 falsified (same physical fact as F-TERAFAB-6) | 2 (Terafab observation window) |
| F-INTEL-4 | Magdeburg Fab 29 is unpaused OR permanently cancelled by 2028-Q4 (no further open-ended pause) | Magdeburg remains "paused" in 2029-Q1 Intel investor commentary → F-INTEL-4 falsified (open-ended pause = de-facto cancel without admission) | 1 (10-K commentary-checkable) |
| F-INTEL-5 | Intel Foundry (IFS) external revenue ≥ $5 B/yr by 2030 per Direct Connect 2024 guidance | Intel 10-K segment breakdown shows IFS external revenue < $3 B for FY 2030 → F-INTEL-5 falsified | 2 (long-horizon, 10-K-checkable) |
| F-INTEL-6 | Intel Ohio One Phase 1 reaches HVM by 2027-Q4 per current public commitment | Intel investor commentary OR Ohio state filings confirm Ohio Phase 1 HVM slips past 2028-Q4 (3rd slip) → F-INTEL-6 falsified; jointly tested with F-TSMC-3 as US-sovereign-fab schedule signal | 1 (10-K + Ohio state-government-checkable) |
| F-INTEL-7 | Intel survives as a corporate entity through 2033 (no break-up into separate IP-Foundry companies; no acquisition; no chapter-11) | Intel announces corporate break-up OR is acquired OR files chapter-11 before 2033-Q4 → F-INTEL-7 falsified | 3 (terminal, long-horizon) |

**Cross-envelope links**:
- F-INTEL-3 ↔ F-TERAFAB-6: same physical fact (Tesla on Intel 14A
  volume via Terafab vehicle). Joint slip-or-hit confirms one,
  falsifies the other.
- F-INTEL-6 ↔ F-TSMC-3: joint US-sovereign-fab schedule signal
  (Ohio One Phase 1 vs Arizona Fab 21 Phase 2). Joint slip pattern
  is the cleanest 2027-2028 data signal.

### Counter-examples (raw#10 honesty — what n=6 cannot explain)

```
- Intel monthly wafer output per fab (no n=6 prediction; capacity is project-managed)
- Intel 4 / 3 / 18A / 14A node-name marketing labels (Intel internal naming; no n=6 link)
- Core Ultra Series numbering (Series 1 / 2 / 3 marketing; n=6 unrelated)
- Intel wafer pricing per node (NDA; n=6 cannot predict)
- Intel-Microsoft contract terms (commercial; n=6 unrelated)
- Tower Semiconductor termination compensation (commercial; n=6 unrelated)
- Lip-Bu Tan's strategic priorities (executive judgement; n=6 unrelated)
```

### Stdlib-only honesty check

The Python honesty check lives in `intel/verify_intel.py` (mirrored
from `terafab/verify_terafab.py` + `exynos/verify_exynos.py` +
`tsmc/verify_tsmc.py`). Re-run anytime:

```
python3 intel/verify_intel.py
```

The harness exercises:

- **n=6 master identity** (`σ·φ = n·τ = J₂ = 24`) self-check.
- **Egyptian split** (`1/2 + 1/3 + 1/6 = 1`) Fraction equality.
- **F-INTEL-1..7** register with documented numeric triggers.
- **F-INTEL-7 χ²** for the §4 lattice projection.
- **Intel capex didactic** (`$25 B Egyptian split, 12.5+8.33+4.17`).
- **5-nodes-4-years honesty** — i7+i4+i3+20A(cancelled)+18A = 4
  real nodes (post-cancellation); test registers the cancellation
  honestly.
- **18A → 14A cadence** — target 2026-H1 → 2027-Q4, observed gap.

### Verify expectations (smoke-tested 2026-05-12)

- Master identity, Egyptian split, group-count: PASS by construction.
- F-INTEL-7 χ²: at Mk.I, with 7 §4 lattice projections, χ² ≈ 0.25,
  p ≈ 0.87 → the n=6 projection is **not statistically distinguishable
  from chance scatter**. F-INTEL-7 as currently formulated is too
  weak to discriminate; reformulation pending Mk.II IEDM/ISSCC 2027
  data. **Honest reading: the §4 lattice table is a registration of
  coincidences, not a derivation** (identical caveat to Terafab F-7,
  Exynos F-EXYNOS-7, TSMC F-TSMC-7).
- F-INTEL-1..6 are bench-only at Mk.I (all return DEFERRED until
  2026-Q3+ quarterly 10-K + Intel Foundry Direct Connect data arrives).


## §8 IDEAS

- **Intel-as-bridge**: use Intel's pivot topology as the *bridge*
  between Terafab (greenfield) and TSMC (pure-play) — Intel is
  the only envelope that simultaneously runs captive (like Exynos)
  and external (like TSMC) on the same fabs. hexa-chip's process
  group should track Intel's "5 nodes in 4 years" reality (4 real
  nodes post-20A cancellation) as the discipline calibration target.
- **Foveros / EMIB as packaging anchor**: Intel's advanced-packaging
  triad (Foveros 3D / EMIB 2.5D / Foveros Direct hybrid-bond) is
  the public reference for *captive-IDM advanced packaging at
  scale*. hexa-chip's `advanced_packaging` + `chip_3d` +
  `interconnect` verbs should anchor to Foveros generation cadence
  as a Mk.II calibration target.
- **IFS external-customer counter-strategy**: Intel Foundry's
  public talking points (firewall between own-design and external;
  capacity at 14A from 2027+) is the public reference for what
  "foundry pivot" actually looks like. F-INTEL-1 (3 external 18A
  customers shipping) is the binding Mk.II test.
- **Tesla-via-Terafab as Intel 14A volume bridge**: F-INTEL-3 and
  F-TERAFAB-6 are the *same physical fact* — Tesla shipping volume
  Intel-14A silicon via Terafab. The two falsifiers should be
  treated as one observational event seen from two envelopes.


## §9 METRICS

| metric | source | value | confidence |
|---|---|---|---|
| Intel founding age (years since 1968) | calendar | 58 yr (2026) | high |
| Intel 2024 revenue | Intel 10-K public | ≈ $53 B USD | high |
| Intel 2024 capex | Intel 10-K + IR | ≈ $25 B USD (revised down) | high |
| Intel Foundry external revenue 2024 | Intel 10-K segment | < $1 B (commentary) | medium |
| 18A → 14A cadence (target) | IFDC 2024-2025 public | 18 mo (2026-H1 → 2027-Q4) | medium |
| Ohio One announced capex (cumulative) | Intel public press | $20 B → $100 B ambition | medium |
| Magdeburg announced capex | Intel + EU public | $30 B (paused 2024-09) | medium |
| CHIPS Act award (Intel) | US Commerce 2024-03 | $8.5 B direct + $11 B loans | high |
| Tower Semi acquisition outcome | Intel + Tower public 2023-08 | terminated (Chinese reg. delay) | high |
| 5-nodes-4-years promise vs reality | calendar count | 4 real nodes (20A cancelled) | high |
| Intel Foundry external customer count (18A, public LOI) | IFDC 2024 | ≥ 3 (Microsoft + AWS + DoD) | medium |
| CEO transitions 2024-2025 | Intel public press | Gelsinger out 2024-12-01 → Tan in 2025-03-12 | high |

## §10 RISKS

| risk | likelihood | impact | falsifier link |
|---|---|---|---|
| Intel 18A HVM slip past 2026-Q3 | medium | breaks Panther Lake schedule | F-INTEL-2 |
| Intel 18A external customer count < 3 | medium-high | breaks IFS thesis | F-INTEL-1 |
| Intel 14A HVM slip past 2028 | medium | breaks Terafab F-TERAFAB-6 cross-link | F-INTEL-3 |
| Ohio One Phase 1 slip past 2028 | high | breaks US-sovereign-fab thesis | F-INTEL-6 |
| Magdeburg permanently cancelled | medium-high | breaks EU-sovereign-fab thesis | F-INTEL-4 |
| IFS external revenue underperformance | medium-high | breaks pivot economics | F-INTEL-5 |
| Intel corporate break-up (Products vs Foundry) | low-medium | terminal | F-INTEL-7 |
| Intel acquired by hyperscaler/PE/sovereign | low | terminal | F-INTEL-7 |
| Lip-Bu Tan execution disruption | medium | strategic discontinuity | broad |
| China export-control retaliation | medium | revenue gap (China customers) | external |
| US sovereign-fab funding revocation (CHIPS Act addenda) | low | capex gap | external |

## §11 DEPENDENCIES

External (out-of-repo):
- **Intel 10-K filings (SEC EDGAR)** — audited annual reports,
  quarterly 10-Q filings; segment breakdown (Product / Foundry).
- **Intel Foundry Direct Connect (annual public keynote)** — 18A /
  14A roadmap canonical source; external-customer announcement venue.
- **Intel quarterly investor calls** — Ohio / Magdeburg / IFS / 18A
  schedule commentary.
- **Ohio One Campus public filings** — Licking County, OH + Ohio
  state government tax-incentive disclosures.
- **EU Chips Act filings — Magdeburg Fab 29** — EU subsidy
  commitments + pause announcements.
- **US Commerce CHIPS Act — Intel award** — $8.5 B direct + $11 B
  loans (2024-03 announce).
- **The Register / Tom's Hardware / SemiAnalysis (public-side)** —
  industry coverage; SemiAnalysis specifically does NDA-aware public
  analysis (we use only the publicly-readable portion).
- **IEEE / IEDM / VLSI Symposium / ISSCC** — public peer-reviewed
  device-physics papers (RibbonFET, PowerVia, High-NA EUV).

Internal (hexa-chip cross-link):
- `architecture/`, `design/`, `eda/`, `rtl_gen/`, `verify_test/`
- `process/`, `materials/`, `wafer/`, `yield/`, `thermal_power/`
- `packaging/`, `advanced_packaging/`, `chip_3d/`, `hbm/`, `interconnect/`, `sc/`
- `npu_n6/`, `pim/`, `accel/`, `asic/`
- `conscious_chip/`, `conscious_soc/`
- `terafab/` (F-TERAFAB-6 ↔ F-INTEL-3 cross-link)
- `exynos/` (IDM-heritage comparator)
- `tsmc/` (F-TSMC-3 ↔ F-INTEL-6 cross-link)

## §12 TIMELINE

```
1968        ── Intel founding (Noyce / Moore / Grove)
1971        ── 4004 microprocessor
1985        ── 386 (single-architecture pivot)
2006        ── Core Duo / Conroe
2012        ── 22 nm Tri-Gate (FinFET first-mover)
2014        ── 14 nm HVM (Broadwell)
2019        ── 10 nm HVM (Ice Lake)
2021-03     ── IDM 2.0 announcement (Pat Gelsinger)
2022-02     ── Tower Semiconductor acquisition announced ($5.4 B)
2022-03     ── Intel Magdeburg (Germany) Fab 29 announced
2022-09     ── Intel Ohio One Phase 1 groundbreaking
2023-08     ── Tower Semiconductor acquisition terminated
2023-Q4     ── Intel 4 HVM (Meteor Lake)
2024-Q1     ── Intel Foundry rebrand; Direct Connect launch
2024-03     ── CHIPS Act Intel award ($8.5 B + $11 B loans)
2024-Q4     ── Intel 3 HVM (Granite Rapids); Lunar Lake ship
2024-09     ── Magdeburg Fab 29 PAUSED
2024-12-01  ── Pat Gelsinger departs CEO
2025-03-12  ── Lip-Bu Tan appointed CEO
2025-H2     ── Intel 18A HVM target (Panther Lake lead)
2026-05-12  ── meta-domain absorbed into hexa-chip (this document)
2026        ── Nova Lake (Intel 18A) ramp
2027        ── Ohio One Phase 1 HVM target (slipped from 2025)
2027-Q4     ── Intel 14A HVM target (High-NA EUV introduction)
2028+       ── Intel 14A external-customer volume (Tesla via Terafab)
2030+       ── IFS structural breakout / re-absorption decision point
```

## §13 TOOLS

External tooling implied by Intel meta-domain (all publicly known):
- **EDA**: Cadence + Synopsys + Siemens EDA (Intel public stacks)
- **Lithography**: ASML EUV NXE:3800E (Intel 4 / 3 / 18A) + High-NA
  EXE:5000 (Intel 14A lead customer; Intel publicly first-bought)
- **Metrology**: KLA + Applied Materials + Hitachi
- **Etch / dep**: Lam Research + Applied Materials + Tokyo Electron
- **HBM**: SK hynix / Micron / Samsung Memory (Intel external sourcing)
- **OSAT**: ASE, Amkor (Intel ships some flows through OSAT for IFS)
- **Government partners**: US Commerce (CHIPS Act), Ohio state
  government (Ohio One), German federal government + EU Commission
  (Magdeburg paused), US DoD (RAMP-C secure-enclave program).

In-repo tooling:
- `make ci` — re-runs hexa-chip falsifiers (Intel projections inherit
  from `verify/falsifier_check.hexa` once F-INTEL-1..7 are wired)
- `python3 intel/verify_intel.py` — runs F-INTEL-1..7 dispatcher
- `python3 terafab/cross_doc_audit.py` — cross-doc agreement audit
  (extended at Wave I to also assert `[meta_domains.intel]` invariants).

## §14 TEAM

Disclosed leadership (external — public org charts only):
- **Intel** — CEO Lip-Bu Tan (appointed 2025-03-12); previous
  CEO Pat Gelsinger (departed 2024-12-01); CFO David Zinsner
  (also served as co-interim CEO Dec-2024 → Mar-2025).
- **Intel Foundry Direct Connect** — annual public technical
  disclosure venue (2024 launch).
- **Microsoft** — public Intel 18A lead external customer (LOI 2024-Q1).
- **Amazon AWS** — public Intel 18A external customer (LOI 2024-Q4).
- **US Department of Defense** — RAMP-C secure-enclave program on Intel 18A.
- **Tesla via Terafab** — public Intel 14A first-customer-volume
  vehicle (Terafab F-TERAFAB-6; same fact as F-INTEL-3).
- **Ohio state government** + **Licking County** — US state-government
  counterparty for Ohio One campus.

In-repo authorship (hexa-chip):
- **박민우 (Minwoo Park)** (mk911tb@proton.me / nerve011235@gmail.com) —
  meta-domain author, n=6 projection, falsifier register. Korean
  editorial framing is the heritage tone; no Intel employment,
  no Intel NDA, no Intel internal data, no SOW-protected partnership
  detail.

## §15 REFERENCES

### Primary (public Intel disclosures + 10-K + Direct Connect)

- [Intel Investor Relations](https://www.intc.com/) — quarterly
  investor calls + 10-K filings index.
- [SEC EDGAR — Intel 10-K filings](https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0000050863) —
  audited annual + 10-Q + 8-K filings.
- [Intel Foundry Direct Connect 2024-2025 archive](https://www.intel.com/content/www/us/en/foundry/overview.html) —
  annual public keynote venue for 18A / 14A / IFS roadmap.
- [Intel press releases](https://www.intc.com/news-events/press-releases) —
  Ohio / Magdeburg / IFS / 18A / 14A announcements.

### US federal / state filings (Ohio One)

- [Ohio One Campus — Licking County public filings](https://www.lcounty.com/) —
  county-level tax-incentive + zoning disclosures.
- [Ohio state government — JobsOhio Intel announcements](https://www.jobsohio.com/) —
  state-government counterparty for Ohio One.
- [US Commerce CHIPS Act — Intel award (2024-03)](https://www.commerce.gov/news/press-releases/2024/03/biden-harris-administration-announces-preliminary-terms-intel) —
  $8.5 B direct + $11 B loans.

### EU filings (Magdeburg paused)

- [EU Chips Act — Intel Magdeburg public dossier](https://commission.europa.eu/strategy-and-policy/priorities-2019-2024/europe-fit-digital-age/european-chips-act_en) —
  Magdeburg Fab 29 subsidy commitments + 2024-09 pause.
- [German federal government — Intel Magdeburg announcements](https://www.bmwk.de/Navigation/EN/Home/home.html) —
  Federal Ministry for Economic Affairs Magdeburg coverage.

### Industry trackers (public quarterly data)

- [TrendForce — Foundry quarterly tracker](https://www.trendforce.com) —
  Intel Foundry share commentary.
- [Counterpoint Research](https://www.counterpointresearch.com) —
  client-CPU shipment data (Intel Core Ultra share).
- [Mercury Research — CPU market share tracker](https://www.mercuryresearch.com/) —
  quarterly Intel-vs-AMD x86 server + client tracker.

### Industry press (public-side analysis)

- [The Register — Intel beat](https://www.theregister.com/) — UK
  daily, Intel + Foundry coverage.
- [Tom's Hardware](https://www.tomshardware.com/) — Intel CPU + GPU
  + node coverage.
- [SemiAnalysis (public-side)](https://www.semianalysis.com/) —
  public Dylan Patel commentary on Intel pivot, 18A, IFS. **Note**:
  paid SemiAnalysis reports are NDA-aware; we use only the publicly
  readable portion.
- [AnandTech archive](https://www.anandtech.com/) — historical
  Intel CPU + node analysis (archive retained post-shutdown).

### Peer-reviewed device physics

- [IEEE IEDM 2023 / 2024 / 2025 proceedings](https://ieee-iedm.org) —
  Intel 18A RibbonFET + PowerVia papers.
- [IEEE VLSI Symposium 2024 / 2025](https://www.vlsisymposium.org) —
  Intel process-node disclosure venue.
- [IEEE ISSCC 2024 / 2025](https://www.isscc.org) — Intel CPU + NPU
  disclosure venue (Lunar Lake, Core Ultra).

### Wikipedia + encyclopedia

- [Intel — Wikipedia](https://en.wikipedia.org/wiki/Intel) — brand
  history + per-node spec summary.
- [Intel Foundry Services — Wikipedia](https://en.wikipedia.org/wiki/Intel_Foundry_Services) —
  IFS pivot history (2021 → 2024 rebrand).

### Cross-link (in-repo)

- `README.md` — hexa-chip 29-verb / 6-group baseline
- `terafab/terafab.md` — greenfield-vertical-megafab sister envelope
  (Wave 6 absorption; F-TERAFAB-6 ↔ F-INTEL-3 cross-link)
- `exynos/exynos.md` — brownfield-IDM-heritage sister envelope
  (Wave 7 absorption; same 15-section grammar)
- `tsmc/tsmc.md` — pure-play-foundry-leader sister envelope (Wave I,
  same wave; F-TSMC-3 ↔ F-INTEL-6 cross-link)
- `hexa.toml` — verb manifest; meta-domain does **not** add a verb,
  it wraps the 6 groups as an outer envelope

---

**Provenance**: Public-source absorption 2026-05-12. **Zero NDA /
proprietary / Intel-internal content.** All numbers and dates
traceable to the §15 reference list — Intel 10-K SEC EDGAR public
filings, Intel Foundry Direct Connect 2024-2025 public keynote
summaries, Ohio One Campus / Licking County / Ohio state public
filings, EU Chips Act filings, Magdeburg paused-project public
announcements, public industry trackers and analysis (TrendForce /
Counterpoint / Mercury / The Register / Tom's Hardware /
SemiAnalysis public-side / AnandTech archive), IEEE/IEDM
proceedings. Falsifier register (F-INTEL-1..7) is the falsifiable
surface; Mk.II~VI rollouts will retire claims as data lands
(2026-Q3 quarterly 10-K onward).

Korean editorial framing (heritage tone) is the meta-domain's whole
point and is honestly labelled. **No Intel employment, no Intel
NDA, no Intel proprietary process kits, no Intel trade secrets, no
SOW-protected partnership detail.**
