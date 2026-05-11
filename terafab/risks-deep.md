<!-- @absorbed: 2026-05-11 -->
<!-- @sources: terafab.md §10 (8-row risk register), §15 (citation list) -->
<!-- @scope: quantitative risk scoring; zero new external claims -->
---
type: risk-quantification
parent: terafab/terafab.md
target_window: Mk.I~Mk.II (2026-Q2 ~ 2027)
status: pre-data (P×I scores are pre-registered; observations TBD)
n6_template: exynos/exynos.md §10 (risk-rubric canon)
risks_scored: 8
---

# Terafab — Quantitative Risk Deepening

> **Purpose**: turn the qualitative `low/medium/high` columns of
> `terafab.md` §10 into pre-registered numeric scores
> (probability × impact), so Mk.II observations can be compared against
> a frozen Mk.I baseline rather than against post-hoc reframings. Each
> row carries a decision rule, a falsifier link, and a mitigation-
> visibility tag.

## §1 Scoring rubric

- **P (probability)**: 0.00–1.00, the Mk.I best-estimate that the risk
  *materialises before the Mk.IV window closes (2032)*. Estimates are
  derived from cited sources in §15; where two sources disagree, the
  higher P is taken (conservative).
- **I (impact)**: 0–10, the Mk.I best-estimate of how much the risk
  shifts the Terafab claim envelope, calibrated as:
  - 1–3: cosmetic (number revised, claim survives)
  - 4–6: structural (one of the 6 hexa-chip groups breaks, claim narrows)
  - 7–8: viability (the announcement's headline must be substantially
    rewritten)
  - 9–10: terminal (project cancelled, paused indefinitely, or pivots
    away from one-roof)
- **P × I**: composite risk score 0.00–10.00. **No threshold** is
  declared at Mk.I — the score is a ranking device, not a verdict.
- **Falsifier link**: which `F-TERAFAB-N` from `terafab.md` §7
  retires the row (true or false).
- **Mitigation visibility**: `high` = public filings reveal the
  mitigation directly; `medium` = inferred from earnings/investor day
  language; `low` = inside-info only, hexa-chip cannot observe.

## §2 Per-risk deepening

### R1. Capex overrun > 2× (high / shifts viability)

```
P = 0.60   I = 8   P×I = 4.8
falsifier: F-TERAFAB-1 (Mk.II weak-fail at +45% cumulative)
mitigation visibility: HIGH (Texas filings + Tesla 10-K capex line public)
```

The May-2026 SpaceX Texas filing puts initial spend at $55 B and total
prototype phases at $119 B (SRC-TERAFAB-004 CNBC, SRC-TERAFAB-009 Yahoo
Finance). The Register (SRC-TERAFAB-011) explicitly frames the figure
as inflation-prone — historically, megafab capex moves +30% to +120%
between announce and ramp (TSMC AZ Fab 21 moved ~ +50% from 2020
announce to 2024 ramp). **P = 0.60** reflects the base rate that any
megafab announcement undershoots its first filing by 2× over a 5-year
horizon. I = 8 because the $55B initial → $110B+ scenario stays inside
the $5–13 T full-scale envelope (so doesn't kill the claim) but
materially weakens the analyst case Trefis (SRC-TERAFAB-014) builds.

**Decision rule (Mk.II)**: cumulative 2027 filed capex > $80 B (≥ 1.45×
initial) ⇒ weak-fail; > $110 B (≥ 2× initial) ⇒ hard-fail per the
Mk.I trigger. Both thresholds appear in the next quarterly Texas
filing — visibility is high.

### R2. In-fab memory line abandoned (medium / breaks one-roof claim)

```
P = 0.50   I = 9   P×I = 4.5
falsifier: F-TERAFAB-2 (any external HBM PO > $500M before 2028)
mitigation visibility: MEDIUM (Tesla 10-K cost-of-revenue line)
```

The "one-roof" framing in `terafab.md` §1 and SRC-TERAFAB-005 (DCD)
explicitly bundles DRAM/HBM with logic. No memory-fab vendor has
ever stood up a captive HBM line outside Samsung / SK Hynix / Micron
(SRC-TERAFAB-013 Cloud News flags this as the highest-skepticism
claim). **P = 0.50** reflects industry base rate that captive
non-incumbent memory lines are abandoned within 2-3 years of
announcement; impact I = 9 because abandoning the in-fab memory line
collapses the meta-domain wrapper (`terafab.md` §1) from "all 6 groups
under one roof" to "5 groups + outsourced memory" — which is just IDM
2.0 with extra steps.

**Decision rule (Mk.II)**: any external HBM purchase order disclosed
in Tesla 10-K cost-of-revenue, SpaceX subcontractor lists, or
Micron/SK Hynix/Samsung quarterly customer disclosure > $500 M
aggregate before 2028 ⇒ one-roof memory claim retired. Visibility is
medium because the disclosure may be aggregated under generic
"materials" line; sub-rubric needed at Mk.III.

### R3. Intel 14A delayed past 2031 (medium / breaks process basis)

```
P = 0.45   I = 9   P×I = 4.05
falsifier: F-TERAFAB-6 (Mk.II early indicator: > 6 mo slip or "14A-class" pivot)
mitigation visibility: HIGH (Intel investor day + 10-Q public)
```

Intel's 14A is on the Intel Foundry roadmap as the post-18A node
(SRC-TERAFAB-003 Tom's Hardware, SRC-TERAFAB-008 TweakTown). Intel's
historical node-slip rate (10nm 2014→2018, 7nm 2019→2022) gives a
**P = 0.45** base rate for a 1-year slip; a 2031-or-later slip is
slightly above base rate because 14A also depends on High-NA EUV
maturation (ASML EXE:5000 family, see `terafab.md` §13). I = 9
because the entire full-scale process basis (`terafab.md` §1 headline
table) is anchored to 14A — a slip past 2031 means the 1 M
wafer-starts/mo target slides past 2032 and the analyst $5–13 T
envelope (SRC-TERAFAB-011 The Register) becomes untestable on schedule.

**Decision rule (Mk.II)**: Intel public 14A risk-production date
slips past 2028-Q4 OR Intel substitutes "14A-class" / "14A-extension"
language ⇒ early indicator (Mk.II trigger). 2031 slip ⇒ hard fail.
Both signals are in Intel investor day + 10-Q, so visibility is high.

### R4. Starship cost floor unmet (medium / kills 80% orbital share)

```
P = 0.55   I = 7   P×I = 3.85
falsifier: F-TERAFAB-4 (Mk.II early: > $400/kg by 2027)
mitigation visibility: MEDIUM (FCC filings + SpaceX annual statements)
```

The orbital share (80% per SRC-TERAFAB-005 DCD) is gated on Starship
reaching ≤ $200/kg marginal launch cost by 2032 (`terafab.md` §7
F-TERAFAB-4). Falcon 9 is currently around $1,500–$2,700/kg public
amortised; Starship's ≤ $200/kg requires both reusability of the
upper stage at Falcon-9-comparable cycle counts (~ 10×) and a launch
cadence at least 5× current Falcon 9 (SRC-TERAFAB-011 The Register
flags this as the binding constraint). **P = 0.55** reflects the
absence of any demonstrated Starship reusability cycle at the cost
target by Mk.I; I = 7 because if the orbital share collapses to 20%,
Line A (edge inference) survives unaffected — it is the *delta*
above existing Tesla/TSMC volumes that collapses.

**Decision rule (Mk.II)**: SpaceX disclosed marginal launch cost
> $400/kg by 2027 ⇒ orbital viability *unlikely on schedule* (Mk.II
trigger); > $200/kg by 2032 ⇒ hard fail. Visibility is medium because
SpaceX accounting is a private choice (marginal vs amortised
disclosure not standardised).

### R5. Zero-fab-experience execution risk (high / The Register thesis)

```
P = 0.70   I = 8   P×I = 5.6
falsifier: broad (no single F-TERAFAB-N retires it; aggregate of F1, F8, F10)
mitigation visibility: LOW (talent pipeline is inside-info)
```

The Register (SRC-TERAFAB-011) and Cloud News (SRC-TERAFAB-013) both
build their critique around the observation that Tesla/SpaceX have
*never operated a wafer fab*. Intel partnership (SRC-TERAFAB-006
TechCrunch) mitigates the *process* side but not the *operations*
side — wafer-fab yield curves, re-entry of mid-career fab engineers,
and supplier qualification cycles are tacit knowledge that doesn't
transfer through licensing alone. **P = 0.70** is the highest P in
the register because the historical base rate for first-time wafer
fab operators reaching > 50% yield within 24 months of first wafer
is low (Samsung's foundry arm took ~ 36 months at 14nm; GlobalFoundries
exited 7nm partly for this reason). I = 8 because operational drag
shows up as schedule slip + capex inflation, both of which feed R1.

**Decision rule (Mk.II)**: F-TERAFAB-1 weak-fail + F-TERAFAB-8
groundbreaking-to-tool-install latency > 30 mo + F-TERAFAB-10
< 250 net engineering hires/quarter through 2027 — any 2 of 3 ⇒
execution-risk thesis vindicated. Visibility is low because the
talent ramp inside Tesla/SpaceX is not publicly disclosed quarter
by quarter; LinkedIn-public profile counts are the noisy proxy in
`falsifier-mk2-scaffold.md` §3.

### R6. 1 TW thermal envelope unachievable in orbit (high / Stefan-Boltzmann floor)

```
P = 0.75   I = 6   P×I = 4.5
falsifier: F-TERAFAB-5 + §7.E (radiator area disclosure)
mitigation visibility: LOW (Starlink-V3 thermal envelope undisclosed)
```

`terafab.md` §7.E derives the Stefan-Boltzmann lower bound: 1 TW
dissipated at a 350 K radiator with ε = 0.9 requires
~ 1.3 × 10⁹ m² ≈ 1,300 km² of radiator surface in orbit. No disclosed
Starlink-V3 thermal envelope approaches this (current Starlink V2
satellites have ~ 50 m² radiator equivalent; scaling by 7 orders of
magnitude is the ask). **P = 0.75** is high because the constraint
is physical, not engineering — only operating-temperature changes
(higher T → more flux per m²) or efficiency changes (PFLOP/W →
less heat to dissipate per FLOP) ease it, and both are slow-moving.
I = 6 (not higher) because the failure mode is "1 TW becomes 100 GW
delivered" — an order-of-magnitude shortfall is bad but not project-
killing; it just retires the headline marketing claim.

**Decision rule (Mk.II)**: terminal — F-TERAFAB-5 only resolves at
Mk.VI. Mk.II only logs whether Terafab discloses orbital radiator
area at all; absence of disclosure through 2028 ⇒ thermal envelope
thesis remains unfalsified-but-unsupported. Visibility is low
because Starlink-V3 thermal architecture is SpaceX-proprietary.

### R7. Regulatory (CHIPS Act re-allocation) (medium / $ supply)

```
P = 0.40   I = 5   P×I = 2.0
falsifier: external (no F-TERAFAB-N; political risk)
mitigation visibility: HIGH (Commerce Department public)
```

CHIPS Act re-allocation between awardees is a publicly disclosed
process; Intel, TSMC AZ, Samsung Taylor, and Micron NY are the
current heavyweights. Terafab is *not* a current CHIPS Act awardee
(May 2026 status; SRC-TERAFAB-011 The Register notes the $119 B
filing assumes no federal subsidy). **P = 0.40** reflects the political
base rate that the next CHIPS allocation cycle (2027–2028) at least
partially reallocates funds and the chance that a Terafab application
either gets approved (positive risk) or gets blocked by political
opposition (negative risk). I = 5 because Terafab's capex envelope
($119 B prototype) is large enough that a $5–10 B subsidy delta is
material but not viability-shifting.

**Decision rule (Mk.II)**: any explicit Terafab CHIPS Act application
disclosed publicly ⇒ flips this from a one-sided risk to a two-sided
risk; track award + reject delta. Visibility is high because
Commerce Department awards are public.

### R8. AI5 / Optimus volume slippage (medium / Line A revenue gap)

```
P = 0.55   I = 6   P×I = 3.3
falsifier: F-TERAFAB-1 indirect (capex pressure if revenue slips)
mitigation visibility: MEDIUM (Tesla 10-K AI5 disclosure)
```

Tesla AI5 small-batch is targeted at 2026, volume at 2027
(SRC-TERAFAB-001 Wikipedia). Tesla's historical chip-program slippage
(HW3 → HW4 took ~ 18 months past initial public timeline) gives
**P = 0.55** for a > 12-month volume slip. I = 6 because Line A
revenue (the 20% ground share) is the near-term cash flow that funds
prototype phase 2/3 — a slip pushes capex pressure on R1 directly.
Optimus inference ASIC has no public volume timeline at Mk.I, so the
slip there is unmeasurable until a tape-out is announced.

**Decision rule (Mk.II)**: Tesla 10-K AI5 small-batch wafer count
< 1k by 2026-Q4 OR volume date pushed to 2028+ ⇒ Line A revenue gap
material. Visibility is medium because Tesla discloses HW-program
status in earnings narrative but rarely in line-item form.

## §3 Risk-portfolio summary

### Aggregate score

```
risk                                  P    I   P×I
------------------------------------ ---- --- -----
R5 zero-fab-experience execution     0.70  8  5.60
R1 capex overrun > 2x                0.60  8  4.80
R6 1 TW thermal envelope             0.75  6  4.50
R2 in-fab memory abandoned           0.50  9  4.50
R3 Intel 14A delayed past 2031       0.45  9  4.05
R4 Starship cost floor unmet         0.55  7  3.85
R8 AI5 / Optimus volume slip         0.55  6  3.30
R7 CHIPS Act re-allocation           0.40  5  2.00
------------------------------------ ---- --- -----
SUM                                          32.60
```

**Reading**: aggregate Mk.I risk score = 32.60 / 80.00 maximum (= 8 risks
× max P×I of 10). That is **40.7% of the maximum risk surface**, which is
high relative to a typical megafab announcement (TSMC AZ Fab 21 sat at
~ 25% on a comparable Mk.I rubric in 2020, see §4 below) but expected
given Terafab's vertical-integration ambition.

### Top-3 risks (by P×I)

1. **R5 zero-fab-experience execution (5.60)** — broad, no single
   falsifier retires it; the aggregate of F1+F8+F10 carries it. Inside-
   info-only mitigation visibility.
2. **R1 capex overrun > 2× (4.80)** — F-TERAFAB-1, fully filing-
   visible. The most measurable risk in the register.
3. **R6 1 TW thermal envelope (4.50)** — physical constraint, terminal
   falsifier (F-TERAFAB-5). Slowest-moving but most predictable.

### Bottom-3 risks (by P×I)

6. **R4 Starship cost floor unmet (3.85)** — orbital-only;
   Line A unaffected.
7. **R8 AI5 / Optimus volume slip (3.30)** — funding risk, not
   viability risk.
8. **R7 CHIPS Act re-allocation (2.00)** — Terafab is not a current
   awardee, so re-allocation is a small relative impact.

### Comparison to TSMC AZ Fab 21 risk profile (analyst-known cost overruns)

```
dimension                          Terafab Mk.I    TSMC AZ Fab 21 (2020 Mk.I-equiv)
---------------------------------- --------------- ---------------------------------
aggregate P×I score                32.60 / 80      ~ 20.0 / 80 (analyst reconstruct)
top risk                           execution (5.60) labour-shortage (~ 4.0)
capex-overrun risk (P×I)           4.80            ~ 3.5 (1.5× overrun was base case)
process-basis risk (P×I)           4.05            ~ 2.0 (TSMC owns N4/N3 directly)
captive-customer risk              none direct     ~ 2.5 (Apple/AMD demand swing)
political-subsidy risk (P×I)       2.00            ~ 3.0 (CHIPS Act dependency)
"breaks topology" risk (R2 equiv)  4.50            ~ 0   (TSMC is not claiming
                                                          one-roof + memory)
---------------------------------- --------------- ---------------------------------
total                              32.60           ~ 20.0
```

**Reading**: Terafab carries ~ 1.6× the Mk.I-equivalent risk of TSMC AZ
Fab 21 at announcement. The delta is concentrated in three rows:
**execution** (Tesla/SpaceX have never operated a wafer fab; TSMC was
operating fabs since 1987), **process-basis** (Terafab depends on Intel
14A delivery; TSMC owns its node), and **topology** (Terafab claims
one-roof memory; TSMC makes no such claim). The bottom-3 risks are
comparable across both projects.

## §4 What this scoring cannot do

- **predict materialisation timing** — the P estimates are
  "before Mk.IV closes (2032)"; they don't say which year inside
  the window.
- **handle correlated risks** — R1 (capex overrun) and R5 (execution)
  are positively correlated; treating them as independent in the
  P×I sum slightly inflates the aggregate. A Mk.II addendum should
  include a correlation matrix when ≥ 2 quarters of data exist.
- **distinguish recoverable from terminal failure** — I = 9 risks
  (R2, R3) might still be recovered through claim narrowing rather
  than project termination; the rubric does not capture this.
- **incorporate positive surprises** — only down-side P is scored;
  any of R3, R4, R7 could surprise to the upside (Intel 14A early,
  Starship cost beats target, CHIPS Act award). A Mk.III revision
  may add a symmetric P_up × I_up upside register.

What would invalidate the §3 ranking:

- **R5 reformulated** — if the Mk.II workforce ramp (F-TERAFAB-10)
  shows ≥ 500 net engineering hires/quarter through 2027, P drops
  from 0.70 to ~ 0.40 and R5 falls to second or third place.
- **R6 thermal-envelope disclosure** — if Terafab publishes a
  radiator area > 1,000 km², I drops from 6 to 3 and R6 leaves the
  top-3.
- **R1 underrun** — if cumulative 2027 capex stays under $60 B,
  P drops from 0.60 to ~ 0.25 and R1 falls to bottom-3.

---

**Provenance**: Quantitative risk deepening of `terafab.md` §10. All
P×I scores are pre-registered at Mk.I (2026-05-11) so Mk.II
observations can be diffed against a frozen baseline. Zero new
external claims; numbers either come from `terafab.md` §15 sources
or are explicit Mk.I best-estimates with their derivation logged in
the per-risk paragraph above.
