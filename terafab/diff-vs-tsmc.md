<!-- @absorbed: 2026-05-11 -->
<!-- @sources: terafab.md §1, §2, §15; public-domain figures for TSMC/Samsung/Intel -->
<!-- @scope: head-to-head comparison; zero NDA / proprietary content -->
---
type: comparator
parent: terafab/terafab.md
target_window: Mk.I (2026-Q2)
status: announce-vs-public-megafab snapshot
n6_template: exynos/exynos.md §2 COMPARE (heritage table canon)
comparators: 4 (Terafab, TSMC AZ Fab 21, Samsung Taylor TX, Intel AZ Fab 52/62)
---

# Terafab vs the existing US megafab landscape

> **Purpose**: head-to-head Terafab against the three real US megafabs
> already under construction or ramping. Show which dimensions Terafab
> is uniquely high on (genuine novelty), which it is average on
> (parity with the existing landscape), and which it is *below* parity
> on (announce-only or unsupported claims).

## §1 Comparator selection

The four projects compared:

- **Terafab (Austin TX prototype)** — `terafab.md` §1, May-2026 SpaceX
  Texas filing
- **TSMC Arizona Fab 21** (Phoenix AZ) — public-domain figures from
  TSMC investor disclosures and CHIPS Act award docs (referenced
  generally; not in `terafab.md` §15 but corroborated by The Register
  SRC-TERAFAB-011 and Trefis SRC-TERAFAB-014)
- **Samsung Taylor TX** — public-domain figures from Samsung disclosures
  and CHIPS Act award docs
- **Intel Arizona expansion (Fab 52/62)** — Intel Foundry public roadmap
  + Intel investor day disclosures (referenced via SRC-TERAFAB-003,
  -006, -014)

All four are 2nd-half-2020s ramp targets, all are US-sited, all carry
≥ $20 B announced capex. They are the natural peer set for a Mk.I
Terafab comparison.

## §2 Dimensional head-to-head

### §2.1 Capex (initial / total disclosed)

```
project              initial $B   total $B    ratio (total/init)
-------------------- ----------- ----------- -------------------
Terafab prototype       55          119            2.16
Terafab full-scale       —      5,000–13,000        n/a (analyst floor)
TSMC AZ Fab 21          12           65            5.42 (3-fab campus)
Samsung Taylor TX       17           44            2.59
Intel AZ Fab 52/62      20           36            1.80
```

**Reading**: Terafab's *prototype-only* initial capex ($55 B) is
already > 4× TSMC AZ Fab 21's initial ($12 B) and ~ 3× Samsung
Taylor's ($17 B). The full-scale analyst floor ($5 T) is ~ 75× the
TSMC 3-fab campus total. Terafab lives in a different cost class
even at prototype, and the full-scale figure is best read as a
*statement of ambition* rather than a comparable capex number.

### §2.2 Process node target

```
project              prototype node   full-scale node    owner
-------------------- ---------------- ------------------ -----------------
Terafab              2 nm             Intel 14A (1.4 nm) Intel-licensed
TSMC AZ Fab 21       N4 (2024)        N3 (2025), N2 (2028) TSMC own
Samsung Taylor TX    SF4 (2024-late)  SF2 GAA (2026-27)  Samsung own
Intel AZ Fab 52/62   Intel 18A (2025) Intel 14A (2027+)  Intel own
```

**Reading**: Terafab's full-scale process is **shared with Intel AZ
Fab 52/62** — they target the same node from the same owner. This
is the dimension where Terafab has *no exclusive moat*. The TSMC and
Samsung lanes are independent because each owns its node. Terafab's
node-leadership claim collapses to "Intel's claim" — if Intel slips
14A (R3 in `risks-deep.md`), both Terafab and Intel AZ slip together.

### §2.3 Wafer-start capacity (per month, full-scale target)

```
project              prototype WSPM    full-scale WSPM    notes
-------------------- ----------------- ------------------ ----------------------
Terafab              "few thousand"    1,000,000          Wikipedia revised down
                                                          from 100k prototype
TSMC AZ Fab 21       ~ 50,000          ~ 100,000          across 3 fabs
Samsung Taylor TX    ~ 25,000          ~ 60,000           single fab + expansion
Intel AZ Fab 52/62   ~ 30,000          ~ 70,000           Fab 52 + 62 combined
```

**Reading**: Terafab's full-scale target (1 M WSPM) is **~ 10× the
sum of TSMC + Samsung + Intel AZ combined**. This is the
single-most-aggressive number in the entire comparison set. The
prototype target ("few thousand") is *below* TSMC AZ prototype, which
is consistent with the project being early-stage — but the announce
of 100k prototype WSPM and subsequent revision down to "few thousand"
(SRC-TERAFAB-001 Wikipedia) is itself a pre-data falsifier hit.

### §2.4 Customer model

```
project              model          primary customer       captive?
-------------------- -------------- ---------------------- --------
Terafab              captive + foundry  Tesla / xAI / SpaceX  yes (≥ 80%)
TSMC AZ Fab 21       foundry            Apple / AMD / NVIDIA  no
Samsung Taylor TX    foundry            Qualcomm / NVIDIA     no
Intel AZ Fab 52/62   IDM + foundry      Intel CPUs / 14A foundry mixed
```

**Reading**: Terafab is the only one of the four that announces a
**captive primary customer** (Tesla AI5 + Optimus + Starlink-V3). This
is a structural difference that carries through to revenue
predictability (Terafab doesn't need to win foundry orders) but also
revenue concentration (the customer is one company group). TSMC and
Samsung Taylor are pure foundries chasing external demand; Intel AZ
is a hybrid with internal CPU volume as anchor.

### §2.5 Vertical scope (which of the 6 hexa-chip groups it covers)

```
project              arch  design  process  pkg   accel  conscious   total
-------------------- ----- ------- -------- ----- ------ ----------- -----
Terafab (claim)        X      X       X      X     X        X         6
TSMC AZ Fab 21         ·      ·       X      ~     ·        ·         1.5
Samsung Taylor TX      ·      ·       X      ·     ·        ·         1
Intel AZ Fab 52/62     ~      ~       X      ~     ·        ·         3
```

(`X` = full coverage, `~` = partial, `·` = none)

**Reading**: Terafab claims the **maximum possible vertical scope**
(6/6 hexa-chip groups under one roof). Intel AZ is the next-most-vertical
at ~ 3 groups (Intel does its own arch + design + process + some
packaging, but no accelerator-class ASICs and no consciousness/AI
substrate at the AZ site). TSMC AZ is process-only with limited
advanced packaging (CoWoS-like). Samsung Taylor is process-only.
Terafab's vertical scope is its primary novelty claim — and the
biggest falsifier surface (R2 in-fab memory, F-TERAFAB-2).

### §2.6 Memory in same campus?

```
project              DRAM/HBM line at site?    notes
-------------------- ------------------------- ------------------------------------
Terafab              YES (claimed)             one-roof framing; F-TERAFAB-2 tests
TSMC AZ Fab 21       NO                        memory sourced from Korea/Taiwan
Samsung Taylor TX    NO (logic-only site)      Samsung memory stays in Korea
Intel AZ Fab 52/62   NO                        Intel exited DRAM in 1985
```

**Reading**: Terafab's in-fab memory line is a **strict topology
break** vs all three peers. None of TSMC AZ, Samsung Taylor, or
Intel AZ co-locate DRAM/HBM with their logic fab. Terafab is the
first US megafab to claim it. F-TERAFAB-2 (`terafab.md` §7) is the
falsifier; R2 in `risks-deep.md` carries P × I = 4.50.

### §2.7 OSAT in same campus?

```
project              advanced packaging on-site?    OSAT model
-------------------- ------------------------------ ------------------
Terafab              YES (claimed, captive)         in-fab claimed
TSMC AZ Fab 21       partial (CoWoS-class adv pkg)  TSMC own + Amkor adjacent
Samsung Taylor TX    NO                             Stats ChipPAC handoff
Intel AZ Fab 52/62   YES (Intel Foveros)            Intel own
```

**Reading**: Terafab and Intel AZ both keep OSAT on-site; TSMC AZ
partial; Samsung Taylor outsources. This is the dimension where
Terafab is *not* uniquely positioned — Intel AZ already does it, and
TSMC AZ is moving toward it. The Terafab claim is parity with Intel,
not novelty.

### §2.8 Construction start → first wafer (months)

```
project              ground   first wafer   latency (mo)
-------------------- -------- ------------- ---------------
Terafab (target)     2026-Q4  2027-Q?            ~ 12 (announced)
                                                 ~ 24 (industry-norm equivalent)
TSMC AZ Fab 21       2020-Q2  2024-Q4            54
Samsung Taylor TX    2022-Q2  2026-late          ~ 50
Intel AZ Fab 52/62   2021-Q3  2024-Q3            36
```

**Reading**: Terafab's announced 12-month groundbreaking-to-first-wafer
target is **~ 4× faster than the TSMC/Samsung baseline and ~ 3× faster
than Intel's pace**. This is implausible against industry base rate
unless "first wafer" is being defined down to engineering lots rather
than qualified production lots. F-TERAFAB-8
(`falsifier-mk2-scaffold.md` §3) tracks this as a 24-month J₂ lattice
expectation; > 30 mo is weak-fail.

### §2.9 Headcount target

```
project              prototype HC    full-scale HC    notes
-------------------- --------------- ----------------- -----------------------
Terafab              ~ 5,000         ~ 30,000+         per `terafab.md` §4 STRUCT
TSMC AZ Fab 21       ~ 4,500         ~ 6,000           across 3 fabs
Samsung Taylor TX    ~ 2,000         ~ 4,500           single fab + expansion
Intel AZ Fab 52/62   ~ 3,000         ~ 6,000           Fab 52 + 62
```

**Reading**: Terafab's prototype headcount (~ 5,000) is comparable to
TSMC AZ's full-scale headcount across 3 fabs. The full-scale figure
(30k+) is consistent with the 6-group one-roof claim — it must absorb
design, EDA, and packaging headcount that the other three projects
keep at HQ in Taiwan/Korea/CA. This is internally consistent with
the vertical-scope claim (§2.5) and is *not* a reach if Terafab
actually staffs all 6 groups in Austin. F-TERAFAB-10 tests it.

### §2.10 Government subsidy ($)

```
project              CHIPS Act award    state/local incentives    total disclosed
-------------------- ------------------ -------------------------- ----------------
Terafab              none (May 2026)    TBD (Texas)                $0
TSMC AZ Fab 21       $6.6 B             ~ $1 B Arizona             $7.6 B
Samsung Taylor TX    $6.4 B             ~ $1 B Texas               $7.4 B
Intel AZ Fab 52/62   $7.86 B            ~ $1 B Arizona             $8.86 B
```

**Reading**: Terafab is the only project in the comparison set with
**zero current federal subsidy**. The May-2026 SpaceX filing assumes
no CHIPS Act award (SRC-TERAFAB-011 The Register flags this
explicitly). This means Terafab carries the full $55 B initial spend
on private capital, where the other three projects each have ~ $7-9 B
of federal/state offset. R7 (`risks-deep.md`) tracks CHIPS Act
re-allocation as a low-impact risk precisely because Terafab is not
currently in the award pool.

## §3 What Terafab actually claims to add

### §3.1 Dimensions where Terafab is uniquely high

1. **Vertical scope** (§2.5): 6/6 hexa-chip groups vs Intel's ~ 3,
   TSMC's ~ 1.5, Samsung's 1. **+3 groups beyond the leader.** This
   is the headline novelty claim and the largest falsifier surface
   (R2, F-TERAFAB-2 plus the broad R5 execution risk).
2. **Wafer capacity ambition** (§2.3): full-scale target is ~ 10×
   the sum of all three peers. This is the most extreme number in
   the entire comparison.
3. **Captive primary customer** (§2.4): only Terafab announces a
   captive ≥ 80% customer (Tesla/xAI/SpaceX). Intel AZ has internal
   CPU demand but is not exclusively captive; TSMC and Samsung Taylor
   are pure foundries.
4. **Orbital share** (`terafab.md` §1, §2): 80% orbital allocation is
   not a category that exists in the other three projects at all.
   Uniquely positioned but uniquely contingent on Starship cost
   (R4).
5. **In-fab memory** (§2.6): only Terafab claims it. Strict topology
   break vs all three peers.

### §3.2 Dimensions where Terafab is at parity (not novel)

1. **Process node** (§2.2): Terafab's 14A is **shared with Intel AZ**
   (same owner, same node). No process moat over Intel.
2. **Advanced packaging on-site** (§2.7): parity with Intel AZ
   Foveros; TSMC AZ partial. Not unique.
3. **Site footprint** (Texas): parity with Samsung Taylor; not unique.

### §3.3 Dimensions where Terafab is below parity

1. **Government subsidy** (§2.10): $0 vs $7-9 B for each peer. Net
   capital intensity is *higher* than the peer set by the subsidy
   delta.
2. **Operational track record** (§2.5 implicit, R5): the three peers
   are operated by companies that have run wafer fabs for ≥ 30 years.
   Terafab's operator (SpaceX-ops per `terafab.md` §4) has zero
   wafer-fab history. R5 carries the highest single P×I in
   `risks-deep.md` (5.60).
3. **Construction-to-wafer latency** (§2.8): announced 12 mo vs
   industry baseline 36-54 mo. Without revising the definition of
   "first wafer", this is below baseline by a factor of ~ 3-4×.

### §3.4 Net read

Terafab's *unique value claim* is **vertical scope × scale × captive
demand × orbital share** — all four in combination, in a single
campus. No other US megafab combines even three of these. **Terafab's
shared-not-unique dimensions** are process node (Intel-licensed,
Intel-bound), advanced packaging (Intel parity), and Texas siting
(Samsung parity). **Terafab's below-parity dimensions** are subsidy
($0), operations (zero history), and announce-to-wafer latency (3-4×
faster than industry).

The *probability that all five §3.1 novelty dimensions land
simultaneously by Mk.IV (2032)* is the load-bearing question. The
P×I aggregate from `risks-deep.md` §3 (32.60 / 80) bounds it: roughly
40% of the maximum risk surface is *active*, which means the joint
landing probability of all five novelties is < 10% on a naive
multiplicative read, and < 25% even allowing for correlation.

The honest reading: **Terafab's claim is structurally novel; its
delivery risk is the highest in the peer set; and the ratio of
novelty to delivery-risk is what Mk.II observation will resolve.**

---

**Provenance**: Comparator built from `terafab.md` §1-§2 and §15
sources for the Terafab column; public-domain figures (CHIPS Act award
disclosures, TSMC/Samsung/Intel investor disclosures) for the peer
columns. Zero NDA / proprietary content. Numbers for peer projects are
order-of-magnitude reconstructions for comparison purposes; precise
figures should be re-pulled from the named primary sources at Mk.II
when peer-column quarterly data lands alongside Terafab data.
