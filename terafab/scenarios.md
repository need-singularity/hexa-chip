<!-- @absorbed: 2026-05-11 -->
<!-- @sources: terafab/terafab.md (canonical), falsifier-mk2-scaffold.md, proposals/samsung-foundry-hexa-6stage.md §8 -->
<!-- @scope: 5 future scenarios (2026 -> 2030) branching on F-TERAFAB-N outcomes -->
---
type: strategy-scenarios
parent: terafab/terafab.md
horizon: 2026-Q3 .. 2030-Q4
status: pre-data (probability estimates rest on Mk.I signal strength)
---

# Terafab — Five Future Scenarios with Decision-Point Branches

> **Purpose**: project the Mk.I~Mk.IV roadmap (`terafab.md` §6) forward
> as five mutually-exclusive scenarios, each anchored to a distinct
> falsifier-firing pattern from `falsifier-mk2-scaffold.md` §2. Each
> scenario carries a probability estimate, a year-by-year decision
> ladder, the hexa-chip group impact, and the Samsung counter-strategy
> adaptation (`proposals/samsung-foundry-hexa-6stage.md` §8).

## §0 Probability summary

```
Scenario                              | P     | dominant falsifier signal
--------------------------------------+-------+----------------------------------
S1 Full delivery                      | 0.05  | F-TERAFAB-1..7 all clear
S2 Capex bloat, slow ramp             | 0.25  | F-TERAFAB-1 + F-TERAFAB-6 fire
S3 Memory abandoned (one-roof breaks) | 0.30  | F-TERAFAB-2 fires
S4 Orbital share collapse             | 0.30  | F-TERAFAB-4 fires
S5 Project cancelled / pivoted        | 0.10  | most F-TERAFAB-N fire
                                       -----
                                        1.00
```

Probabilities sum to 1.00 by construction. Re-balance occurs at each
quarterly polling checkpoint per `falsifier-mk2-scaffold.md` §5.

---

## §1 S1 — "Full delivery"

> **Headline**: All seven Mk.I falsifiers clear; Terafab hits 1 TW
> AI-compute by 2035, on schedule, on budget.

**P = 0.05** (low; the historical IDM ceiling is +4 groups at 🛸9, and
Terafab's claim is +6 groups at 🛸9-10 simultaneously — see
`terafab.md` §3 +12 aggregate-gap reading).

### §1.A Narrative

In this scenario the prototype Austin site groundbreaks Q4-2026 within
three months of the Texas filing date (2026-05-06). Tool-install latency
matches TSMC Arizona Fab 21's ~24-month benchmark (F-TERAFAB-8 clears).
Tesla AI5 small-batch ships on calendar at end-2026, first volume wafers
exit the prototype line in mid-2027 with no slip past the announced
Mk.III window. Capex deltas track the $55 B initial / $119 B total
filing within a 10% band through 2028, and Intel publishes 14A
risk-production confirmation in 2027-Q4 with no schedule reset
(F-TERAFAB-6 clears). The in-fab DRAM/HBM line passes its first
qualification lots in 2028-Q3, displacing ~50% of external HBM POs in
Tesla's 10-K cost-of-revenue (F-TERAFAB-2 clears). SpaceX publishes a
2029 launch-cost statement with marginal cost ≤ $200/kg, validating the
80% orbital share economics (F-TERAFAB-4 clears). By 2030 the full-scale
site (Grimes County or successor) is groundbreaking on schedule with a
declared capex inside the $5–13 T analyst envelope (F-TERAFAB-3 holds).

The n=6 χ² reformulation (F-TERAFAB-7) lands at p < 0.05 with
≥ 7 measured slots, retiring the "coincidence registry" caveat.

### §1.B Falsifier outcome matrix

```
F-TERAFAB-N | 2026-Q4 | 2027    | 2028    | 2029    | 2030
------------+---------+---------+---------+---------+---------
1 capex     | clear   | clear   | clear   | clear   | clear
2 memory    | n/a     | n/a     | clear   | clear   | clear
3 full-cap  | n/a     | n/a     | n/a     | clear   | clear
4 orbital   | n/a     | n/a     | n/a     | clear   | clear
5 1 TW      | n/a     | n/a     | n/a     | n/a     | n/a (Mk.VI)
6 14A       | n/a     | clear   | clear   | clear   | clear
7 chi^2     | weak    | weak    | clear   | clear   | clear
8 latency   | n/a     | clear   | clear   | clear   | clear
9 utility   | clear   | clear   | clear   | clear   | clear
10 hires    | clear   | clear   | clear   | clear   | clear
```

### §1.C hexa-chip impact

- **architecture / design**: benefit (xAI + Tesla SLP validated as
  in-house design houses; verbs `architecture`, `isa_n6`, `rtl_gen`,
  `eda`, `verify_test` graduate to 🛸9).
- **process**: benefit (Intel 14A pathfinder data feeds back into
  `process`, `materials`, `wafer`, `yield`, `thermal_power`).
- **packaging**: benefit (one-roof advanced packaging validates
  `packaging`, `chip_3d`, `hbm`, `interconnect`, `sc`).
- **accelerator**: benefit (`asic`, `npu_n6`, `accel`, `pim`,
  `hexa_3d`, `hexa_wafer` all gain a Terafab-grade reference design).
- **consciousness**: benefit (`conscious_chip`, `conscious_soc` get
  orbital training substrate for the first time).
- **none become irrelevant**: full-delivery scenario validates the
  meta-domain wrapper end-to-end.

### §1.D Samsung counter-strategy adaptation

`proposals/samsung-foundry-hexa-6stage.md` §8.4 falsifier fires —
captive-fab posture must be reconsidered. Samsung's asymmetric-response
thesis (IP licensing beats $119 B fab-build) **weakens**. Recommended
adaptation: shift VI-RDK tier from "one-stop vertical feel without
lock-in" pitch to a **multi-customer cost-leadership** pitch (Terafab
is captive-only; SF2 + HEXA-6 IP serves the rest of the fabless market
that Terafab cannot). HBM6-P joint research (§8.3.b) becomes urgent
because Samsung Memory is now in direct competition with Terafab
in-fab HBM.

### §1.E Earliest detection signal

**2027-Q1**, F-TERAFAB-6 watch-source (Intel Foundry Direct Connect,
Intel 10-Q risk factors). If Intel publishes 14A risk-production date
**inside the announced 2030 window** with no caveat language, S1
becomes consistent with observation. Until then, S1 is the prior, not
the posterior.

---

## §2 S2 — "Capex bloat, slow ramp"

> **Headline**: F-TERAFAB-1 fires (capex > 2× by 2028); F-TERAFAB-6 fires
> (Intel 14A delayed). Terafab pivots to Intel 18A; AI5 volume slips
> 18~24 months.

**P = 0.25** (moderate; megafab capex overruns of 1.5~3× are the
historical norm — TSMC AZ, Intel Magdeburg, Samsung Taylor all moved
> 50% from announce).

### §2.A Narrative

Prototype groundbreaking happens in 2027-Q1 (one-quarter slip from S1).
By 2027-Q4 cumulative Texas filings reach $90 B (the F-TERAFAB-1 weak-fail
threshold of +45% is exceeded in `falsifier-mk2-scaffold.md` §2). By
2028-Q4 cumulative filings exceed $250 B — the F-TERAFAB-1 hard-fail
trigger fires (> 2× the $119 B baseline).

In parallel, Intel's 14A risk-production date slips from 2027-Q4 to
2029-Q1 (announced at 2028 Foundry Direct Connect), then again to 2030-Q2.
Terafab pivots to Intel 18A as the prototype process to keep the AI5
schedule, accepting a one-node penalty on TOPS/W. F-TERAFAB-6 fires hard
when Intel's 2030 investor day lists 14A as "post-2031".

The in-fab memory line ships qualification lots on schedule (F-TERAFAB-2
clears), but at a $20 B incremental capex cost not in the original filing.
Orbital share holds at 80% in slogans but actual orbital deployments
slip to 2034+ as Starship cost curves stay above $300/kg
(F-TERAFAB-4 weakly fires; hard fail deferred to 2032).

### §2.B Falsifier outcome matrix

```
F-TERAFAB-N | 2026-Q4 | 2027    | 2028    | 2029    | 2030
------------+---------+---------+---------+---------+---------
1 capex     | clear   | weak    | FIRE    | FIRE    | FIRE
2 memory    | n/a     | n/a     | clear   | clear   | clear
3 full-cap  | n/a     | n/a     | n/a     | weak    | weak
4 orbital   | n/a     | n/a     | n/a     | weak    | weak
5 1 TW      | n/a     | n/a     | n/a     | n/a     | n/a
6 14A       | n/a     | weak    | weak    | FIRE    | FIRE
7 chi^2     | weak    | weak    | weak    | weak    | weak
8 latency   | n/a     | weak    | weak    | clear   | clear
9 utility   | clear   | clear   | clear   | clear   | clear
10 hires    | clear   | clear   | clear   | clear   | clear
```

### §2.C hexa-chip impact

- **process**: harmed (`materials`, `wafer`, `yield` lose 14A as a
  reference; pivot to 18A drops one node generation).
- **architecture / design**: neutral (still in-house, AI5 ships on 18A).
- **packaging**: benefit (one-roof packaging validated; F-TERAFAB-2 clears).
- **accelerator**: harmed (`asic`, `npu_n6` deliver lower TOPS/W than
  pitched; consciousness substrate delayed).
- **consciousness**: harmed (orbital training substrate slips to
  2034+; `conscious_soc` Terafab-grade test target unmet).

### §2.D Samsung counter-strategy adaptation

Samsung's asymmetric-response thesis **strengthens**. The
$119 B → > $250 B capex inflation makes the §8.2 ASCII bar
("≈ 100x leverage on captive-fab capex") even more favourable.
Recommended adaptation: accelerate Scenario A (SAFE VI-RDK tier) to
2026-Q4 readiness; capture Tesla/xAI customers who quietly seek a
non-captive backup as Terafab schedule slips.

### §2.E Earliest detection signal

**2027-Q3**, F-TERAFAB-1 watch-source (SpaceX Texas filing deltas).
If cumulative filings exceed $80 B before end-2027, S2 becomes the
posterior over S1. Reinforced by **2028-Q1 Intel investor-day language**
on 14A schedule (F-TERAFAB-6).

---

## §3 S3 — "Memory abandoned"

> **Headline**: F-TERAFAB-2 fires — in-fab DRAM/HBM dropped, sourced
> from SK Hynix or Micron. The "one-roof" claim is broken; Terafab
> becomes a logic-only captive fab.

**P = 0.30** (highest single scenario; in-fab memory-and-logic on a
single tape-out flow has no operational precedent at scale; see
`terafab.md` §10 RISKS, F-TERAFAB-2).

### §3.A Narrative

Prototype groundbreaking happens on schedule (F-TERAFAB-1 holds, capex
within 1.3× by 2027-Q4). Tesla AI5 small-batch ships at end-2026, but
the BoM disclosed in Tesla's 2027-Q1 10-K shows external HBM line items
totalling $1.2 B annualized — F-TERAFAB-2 fires (the
`falsifier-mk2-scaffold.md` §2 trigger of "$500M aggregate external HBM
PO before 2028" is exceeded).

By 2027-Q3 Musk publicly reframes Terafab as "logic + advanced packaging
+ test under one roof; memory partnered with leading HBM suppliers".
The slogan reframe is technically defensible but **destroys the headline
distinction** between Terafab and Intel IDM 2.0 / Samsung DS — both of
which already ship logic + advanced packaging in-house and partner for
HBM. The hexa-chip §3 group-coverage gap collapses from +12 to +6, and
the meta-domain wrapper's distinguishing claim weakens.

Capex stays roughly on track ($150 B by 2028, ~1.3× the original filing
— inside F-TERAFAB-1's weak-fail band but not a hard fail). Intel 14A
volume holds for 2030 (F-TERAFAB-6 clears). Orbital share holds in slogan;
actual deployments deferred to Mk.V.

### §3.B Falsifier outcome matrix

```
F-TERAFAB-N | 2026-Q4 | 2027    | 2028    | 2029    | 2030
------------+---------+---------+---------+---------+---------
1 capex     | clear   | clear   | weak    | weak    | weak
2 memory    | n/a     | FIRE    | FIRE    | FIRE    | FIRE
3 full-cap  | n/a     | n/a     | n/a     | clear   | clear
4 orbital   | n/a     | n/a     | n/a     | weak    | weak
5 1 TW      | n/a     | n/a     | n/a     | n/a     | n/a
6 14A       | n/a     | clear   | clear   | clear   | clear
7 chi^2     | weak    | weak    | weak    | weak    | weak
8 latency   | n/a     | clear   | clear   | clear   | clear
9 utility   | clear   | clear   | clear   | clear   | clear
10 hires    | clear   | weak    | weak    | weak    | weak
```

### §3.C hexa-chip impact

- **packaging / hbm**: harmed (`hbm`, `chip_3d` lose the in-fab claim;
  Terafab becomes Intel-IDM-equivalent on memory).
- **process / accelerator / architecture**: neutral (logic-side claims
  hold; AI5 ships on 14A).
- **meta-domain wrapper**: weakened (the distinguishing "all 6 groups
  one roof" claim collapses to "5 groups one roof, memory partnered" —
  same topology as Samsung DS).

### §3.D Samsung counter-strategy adaptation

Samsung's HBM6-P joint research (§8.3.b) becomes the **competitive
moat**. Recommendation: Samsung Memory wins back exactly the orders
Terafab would have served in-fab; pitch becomes "we have the HBM
roadmap Terafab admitted it cannot replicate". The §8.3.c falsifier
dashboard records F-TERAFAB-2 as fired and reroutes the SF2 sales
calendar to capture displaced Tesla/xAI memory POs.

### §3.E Earliest detection signal

**2027-Q3**, F-TERAFAB-2 watch-source (Tesla 10-K cost-of-revenue HBM
line + SpaceX subcontractor disclosures + Micron / SK Hynix / Samsung
quarterly customer tables). Any external HBM PO disclosure > $500 M
aggregate before 2028 ⇒ S3 becomes posterior.

---

## §4 S4 — "Orbital share collapse"

> **Headline**: F-TERAFAB-4 fires — Starship reusable launch cost
> stays > $200/kg through 2032. The 80% orbital allocation rebalances
> to ~100% ground; Terafab becomes a very large terrestrial fab.

**P = 0.30** (high; SpaceX has not yet publicly demonstrated marginal
launch cost below $1,500/kg as of 2026-Q2; the $200/kg target requires
> 7× cost reduction in ≤ 6 years; see `terafab.md` §10 RISKS).

### §4.A Narrative

Ground-side Terafab proceeds roughly as S1 through 2028 — capex on
budget, in-fab memory line qualifies, AI5 volume on schedule. Intel 14A
volume lands by 2030 (F-TERAFAB-6 clears). The crisis arrives via
SpaceX: through 2027~2030 Starship marginal launch cost stabilises in
the $400~600/kg range (the F-TERAFAB-4 weak-fail trigger of $400/kg by
2027 is exceeded). The cost trajectory does not bend below $200/kg by
2030, and SpaceX's 2031 annual cost statement publishes $280/kg as the
best-case marginal figure. F-TERAFAB-4 fires hard in 2032.

The 1 TW orbital deployment is quietly rebalanced. By 2032 Musk
re-pitches the Line B output as **"orbital-ready, ground-deployed"** —
i.e., the radiation-hardened SKUs ship to ground data centres because
launch economics cannot support them in orbit. The Stefan-Boltzmann
floor on orbital cooling (`terafab.md` §7.E, ~1,300 km² radiator area
for 1 TW at 350 K) was always going to bind eventually; Starship cost
collapse simply makes it bind earlier.

The 1 TW headline survives but is ground-deployed (F-TERAFAB-5 deferred
to Mk.VI).

### §4.B Falsifier outcome matrix

```
F-TERAFAB-N | 2026-Q4 | 2027    | 2028    | 2029    | 2030
------------+---------+---------+---------+---------+---------
1 capex     | clear   | clear   | clear   | clear   | clear
2 memory    | n/a     | n/a     | clear   | clear   | clear
3 full-cap  | n/a     | n/a     | n/a     | clear   | clear
4 orbital   | n/a     | weak    | weak    | weak    | weak (FIRE 2032)
5 1 TW      | n/a     | n/a     | n/a     | n/a     | n/a (deferred)
6 14A       | n/a     | clear   | clear   | clear   | clear
7 chi^2     | weak    | weak    | weak    | weak    | weak
8 latency   | n/a     | clear   | clear   | clear   | clear
9 utility   | clear   | clear   | weak    | weak    | weak (ground load doubles)
10 hires    | clear   | clear   | clear   | clear   | clear
```

### §4.C hexa-chip impact

- **process / packaging / accelerator**: neutral or benefit (Line B
  silicon still ships, just to ground).
- **thermal_power / interconnect**: re-purposed (radiative-only cooling
  IP becomes useful as a marketing feature, not an operating constraint).
- **consciousness**: harmed (`conscious_soc` orbital training substrate
  becomes a ground co-located substrate; loses the latency-isolation
  thesis).
- **meta-domain wrapper**: 80%/20% split collapses to ~100%/0%; the §5
  shipping-split diagram in `terafab.md` becomes obsolete.

### §4.D Samsung counter-strategy adaptation

Samsung's asymmetric-response thesis is **unchanged on logic+memory**
but loses the orbital-cooling differentiation it never had. Recommendation:
no adaptation needed; the §8.3 counter-actions remain valid. If anything,
Terafab's pivot to ground deployment forces it to compete on the same
ERCOT power and Texas water envelope as TSMC AZ / Intel AZ / Samsung
Taylor, where Samsung already has operational experience. The §8.3.c
dashboard records F-TERAFAB-4 weak-fire from 2027-Q4 onward.

### §4.E Earliest detection signal

**2027-Q4**, F-TERAFAB-4 watch-source (SpaceX annual launch-cost
statement + FCC Starship re-flight count). If marginal launch cost
disclosed > $400/kg with no quarterly improvement, S4 becomes the
posterior. Reinforced by **2028 ERCOT interconnection-queue disclosures**
showing Terafab ground load doubling vs initial F-TERAFAB-9 filing.

---

## §5 S5 — "Project cancelled / pivoted"

> **Headline**: Major Musk re-org, Texas filing withdrawn or radically
> reduced, Tesla returns to TSMC for AI5. F-TERAFAB-1..6 mostly fire.

**P = 0.10** (low-moderate; the $55 B initial filing represents a
material commitment but is reversible — see The Register thesis,
`terafab.md` §15).

### §5.A Narrative

Prototype groundbreaking slips from 2026-Q4 to 2027-Q3 (F-TERAFAB-8
weakly fires). Capex actuals through 2027-Q4 reach only $35 B against
the $55 B initial filing because tool delivery is delayed (ASML
prioritises Intel and TSMC AZ orders). In 2028-Q1 a Musk re-org —
triggered by Tesla automotive earnings pressure or an xAI funding
event — pulls Terafab leadership back to Tesla core.

By 2028-Q3 SpaceX files an amended Texas notice reducing scope to
"prototype packaging + test only, logic outsourced". Intel announces
that 14A volume customers other than Tesla will be prioritised because
"the Terafab partnership is being restructured". Tesla AI5 volume
silently returns to TSMC N3X / N2 in 2028-Q4. The Terafab brand
persists as a packaging-only Austin facility with ~ $15 B sunk capex,
~ 800 employees, no logic line.

By 2030 the meta-domain wrapper in `terafab.md` is a historical
artefact; the falsifier register flips to "all weak-fired or hard-fired
except F-TERAFAB-2" (which becomes vacuous because there is no logic
line for memory to be co-located with).

### §5.B Falsifier outcome matrix

```
F-TERAFAB-N | 2026-Q4 | 2027    | 2028    | 2029    | 2030
------------+---------+---------+---------+---------+---------
1 capex     | clear   | clear   | FIRE    | FIRE    | FIRE
2 memory    | n/a     | n/a     | vacuous | vacuous | vacuous
3 full-cap  | n/a     | n/a     | FIRE    | FIRE    | FIRE
4 orbital   | n/a     | n/a     | weak    | FIRE    | FIRE
5 1 TW      | n/a     | n/a     | n/a     | FIRE    | FIRE
6 14A       | n/a     | weak    | FIRE    | FIRE    | FIRE
7 chi^2     | weak    | weak    | n/a     | n/a     | n/a (lattice retired)
8 latency   | weak    | FIRE    | FIRE    | FIRE    | FIRE
9 utility   | clear   | weak    | FIRE    | FIRE    | FIRE
10 hires    | clear   | FIRE    | FIRE    | FIRE    | FIRE
```

### §5.C hexa-chip impact

- **all 6 groups**: meta-domain wrapper retires; the 28 verbs return to
  their conventional ownership patterns (TSMC for process, Amkor/ASE
  for packaging, NVIDIA/Tesla for accelerators).
- **architecture / design**: neutral (Tesla SLP and xAI continue
  in-house regardless of Terafab outcome).
- **process**: TSMC remains primary for Tesla; Intel 14A becomes a
  niche customer-of-customers play.
- **packaging**: the Austin Terafab packaging facility, if it survives
  S5, becomes one of several US OSAT options.

### §5.D Samsung counter-strategy adaptation

The §8 counter-strategy becomes **strategically stale but tactically
useful**. Recommendation: archive the Terafab-specific framing but
keep the VI-RDK tier (§8.3.a) — the broader pitch ("vertically-
integrated reference design kit on top of SF2") is independent of the
Terafab threat and competes against TSMC's CoWoS-S/L bundle and Intel
IDM 2.0. The §8.3.c falsifier dashboard records "all fired" and pivots
to TSMC + Intel competitive intelligence instead.

### §5.E Earliest detection signal

**2028-Q1**, F-TERAFAB-1 + F-TERAFAB-10 joint watch-source (capex
delta + workforce ramp). If cumulative filings stall below $40 B and
LinkedIn-public Terafab profile counts plateau or decline through
2027-Q4, S5 becomes the posterior. Reinforced by **any 2028 Musk
public statement reframing Terafab scope downward** (X / earnings
call / press release).

---

## §6 Expected-value summary

Aggregate impact across scenarios, weighted by probability. Reading:
each cell is `P(scenario) × outcome_intensity` where outcome_intensity
is +2 (strong benefit) / +1 (benefit) / 0 (neutral) / -1 (harm) /
-2 (strong harm) / X (irrelevant — wrapper retired).

```
hexa-chip group    | S1 (.05) | S2 (.25) | S3 (.30) | S4 (.30) | S5 (.10) | E[impact]
-------------------+----------+----------+----------+----------+----------+----------
architecture       | +2 (.10) |  0 (.00) |  0 (.00) |  0 (.00) |  0 (.00) |   +0.10
design             | +2 (.10) |  0 (.00) |  0 (.00) |  0 (.00) |  0 (.00) |   +0.10
process            | +2 (.10) | -2 (-.50)|  0 (.00) | +1 (+.30)| -1 (-.10)|   -0.20
packaging          | +2 (.10) | +1 (+.25)| -1 (-.30)| +1 (+.30)| -1 (-.10)|   +0.25
accelerator        | +2 (.10) | -1 (-.25)|  0 (.00) | +1 (+.30)| -1 (-.10)|   +0.05
consciousness      | +2 (.10) | -2 (-.50)|  0 (.00) | -1 (-.30)| -1 (-.10)|   -0.80
meta-domain        | +2 (.10) | -1 (-.25)| -2 (-.60)|  0 (.00) | X  (.00) |   -0.75
```

**Reading**: across the five scenarios the expected impact on the
hexa-chip groups is **slightly negative on consciousness and on the
meta-domain wrapper itself, near-zero on architecture/design, and
mixed on process/packaging/accelerator**. The dominant downside vector
is the 0.30 probability that Terafab pivots away from in-fab memory
(S3) — which preserves the wrapper but breaks its distinguishing
claim. The dominant upside vector is the 0.30 probability that orbital
collapse (S4) does not actually harm the silicon roadmap — the chips
still ship, just to ground.

### Samsung counter-strategy expected adaptation

Across scenarios, the **Samsung asymmetric-response thesis stays valid
in 0.95 of the probability mass** (S2+S3+S4+S5 = 0.95; only S1 weakens
it). The §8.3 three-counter-action set (VI-RDK tier, HBM6-P joint
research, falsifier dashboard) is robust across all five scenarios
and only requires emphasis-shifts (HBM6-P urgency in S3; VI-RDK
acceleration in S2; archive in S5). **The dashboard itself is the
load-bearing element** — it converts each falsifier firing event into
a Samsung sales-calendar trigger.

### Earliest cross-scenario decision signal

The **2027-Q3 quarterly polling checkpoint** (`falsifier-mk2-scaffold.md`
§5) is the first window in which S1 can be distinguished from S2/S3/S4/S5.
Specifically:
- F-TERAFAB-1 capex delta (S2 trigger)
- F-TERAFAB-2 memory line (S3 trigger)
- F-TERAFAB-4 Starship cost (S4 trigger)
- F-TERAFAB-1 + F-TERAFAB-10 stall (S5 trigger)

All four sources converge in 2027-Q3; this is the first quarter at
which the scenario probability vector should be re-balanced from the
§0 priors above.

---

**Provenance**: Scenario decomposition derived from `terafab.md` §6
EVOLVE roadmap, §7 falsifier register, §10 RISKS table, and
`falsifier-mk2-scaffold.md` §2 reformulation table + §5 polling
rubric. No new external claims; probabilities are the meta-domain
author's prior estimates, not Musk-team / Samsung-team disclosures.
Re-balance quarterly per the §5 polling discipline.
