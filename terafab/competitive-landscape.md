<!-- @absorbed: 2026-05-11 -->
<!-- @sources: terafab/terafab.md §15 (canonical) + public industry coverage cited inline -->
<!-- @scope: global megafab landscape that Terafab competes against -->
---
type: strategy-competitive-landscape
parent: terafab/terafab.md
horizon: 2026 .. 2030 (announced + committed projects only)
status: external-reference (no NDA / proprietary content)
---

# Terafab — Global Competitive Megafab Landscape

> **Purpose**: Terafab's announce does not happen in isolation. This
> document inventories the global megafab projects competing for the
> same scarce resources (ASML High-NA EUV deliveries, senior fab talent,
> ERCOT power, CHIPS Act funding) and locates where Terafab is
> uniquely positioned versus where it is average or vulnerable.

## §0 Reading guide

- All capex / capacity / node figures are sourced from public
  announcements and industry press; **actuals diverge** from announces
  in this industry by 1.3–3× routinely.
- China figures are systematically uncertain due to sanctions-driven
  disclosure distortion; treat with double skepticism.
- Pre-production projects (Rapidus, Tata, Intel Magdeburg) carry
  high cancellation/delay probability.
- "Process node target" is the announced node; actual first-wafer
  node may be one generation behind.

---

## §1 USA

```
Project                | Sponsor      | Capex announced | Node target      | Capacity (wspm) | Status (2026-Q2)         | Subsidy share        | Customer model
-----------------------+--------------+-----------------+------------------+-----------------+--------------------------+----------------------+----------------
Terafab Austin (proto) | Musk/Intel   | $55 B init      | 2 nm proto, 14A  | "few thousand"  | Filing 2026-05-06        | TBD (Texas + CHIPS?) | captive (Tesla/xAI/SpaceX)
                       |              | $119 B total    |   full-scale     |   to 1 M (full) |   pre-groundbreak        |                      |
TSMC AZ Fab 21 (P1)    | TSMC         | $40 B           | 4 nm (N4)        | ~ 20 k          | volume 2025-Q1           | $6.6 B CHIPS         | external (Apple/AMD/NVIDIA)
TSMC AZ Fab 21 (P2)    | TSMC         | included above  | 3 nm (N3)        | ~ 20 k          | construction 2026        | included             | external
TSMC AZ Fab 21 (P3)    | TSMC         | $25 B added     | 2 nm (N2)        | ~ 20 k          | tool-install target 2028 | TBD                  | external
Samsung Taylor TX      | Samsung      | $25 B (revised) | 4 nm SF4 / 2 nm  | ~ 25 k          | tool-install 2026~27     | $6.4 B CHIPS         | external + Samsung S.LSI captive
Intel AZ Fab 52 / 62   | Intel        | $30 B+          | 18A (1.8 nm)     | ~ 40 k combined | tool-install 2025~26     | $8.5 B CHIPS         | IDM (Intel + IFS external)
Intel Ohio One         | Intel        | $20 B (paused)  | 18A → 14A planned| TBD             | delayed to 2030+         | TBD                  | IDM
GlobalFoundries Malta NY | GF         | ~ $10 B         | 12FDX, 22FDX     | ~ 90 k          | volume (mature node)     | $1.5 B CHIPS         | external (auto/IoT/RF)
Micron NY Clay         | Micron      | $100 B (4 fabs) | DRAM 1-gamma     | TBD             | groundbreaking 2025~26   | $6.1 B CHIPS         | DRAM merchant
SK Hynix West Lafayette| SK Hynix    | $3.9 B          | HBM advanced pkg | TBD             | construction 2026        | $0.46 B CHIPS        | captive HBM packaging
```

**USA reading**: Terafab is the only US captive-owner megafab in the
list; every other US project either (a) ships to external customers
(TSMC, GF, Samsung-Taylor) or (b) is IDM with external IFS overflow
(Intel). Terafab's distinguishing axis is the captive-customer model,
not the location.

---

## §2 East Asia

```
Project                | Sponsor      | Capex (recent)  | Node target      | Capacity (wspm) | Status (2026-Q2)         | Subsidy share        | Customer model
-----------------------+--------------+-----------------+------------------+-----------------+--------------------------+----------------------+----------------
TSMC Hsinchu Fab 12    | TSMC         | continuous      | N3, N2           | ~ 80 k (N3)     | volume                   | TW gov R&D           | external
TSMC Tainan Fab 18     | TSMC         | continuous      | N3, N2 lead      | ~ 100 k         | N2 volume target 2025-Q4 | TW gov               | external
TSMC Hsinchu N2 + A16  | TSMC         | $40 B+          | A16 (1.6 nm)     | TBD             | risk-prod 2026~27        | TW gov               | external
Samsung Pyeongtaek P3  | Samsung DS   | $30 B (single)  | SF2 (2 nm GAA)   | ~ 50 k logic    | SF2 risk-prod 2025-Q4    | KR gov               | mixed (foundry + S.LSI)
Samsung Pyeongtaek P4  | Samsung DS   | $25 B+ planned  | SF2P / SF1.4     | TBD             | construction 2026~27     | KR gov               | mixed
SK Hynix M16 (Icheon)  | SK Hynix     | $20 B           | HBM4 / 1c-nm DRAM| ~ 100 k DRAM    | HBM4 volume 2026         | KR gov               | DRAM/HBM merchant
SK Hynix Yongin (M-City)| SK Hynix    | $90 B (4 fabs)  | HBM5/HBM6, DRAM  | TBD             | groundbreaking 2025      | KR gov               | DRAM/HBM merchant
SMIC Shanghai SN1      | SMIC         | $7.6 B          | 14 nm FinFET     | ~ 35 k          | volume                   | CN gov heavy         | domestic (Huawei etc.)
SMIC Shanghai SN2      | SMIC         | est $8 B+       | 7 nm DUV multi-pat| ~ 25 k         | volume (claimed)         | CN gov heavy         | domestic
SMIC Beijing B1/B2     | SMIC         | est $7.6 B+ each| 28 nm / 14 nm    | ~ 35 k each     | volume                   | CN gov heavy         | domestic
YMTC Wuhan             | YMTC         | est $24 B       | 232L 3D NAND     | ~ 100 k         | volume (limited tools)   | CN gov heavy         | domestic NAND
CXMT Hefei             | CXMT         | est $11 B       | DDR4 / DDR5      | ~ 100 k         | volume (DDR4 majority)   | CN gov heavy         | domestic DRAM
Rapidus Hokkaido (IIM-1)| Rapidus    | est $33 B (¥5T) | 2 nm GAA (IBM IP)| ~ 10 k init     | tool-install target 2027 | JP gov $6 B+         | external (planned)
TSMC Kumamoto JASM-1   | TSMC/Sony/Denso| $8.6 B       | 22/28 nm + 12 nm | ~ 55 k          | volume 2024              | JP gov $4 B          | external (auto/imaging)
TSMC Kumamoto JASM-2   | TSMC/Sony    | $20 B           | 6 nm / 7 nm      | ~ 35 k          | construction 2026        | JP gov               | external
```

**East Asia reading**: TSMC + Samsung dominate frontier-node capacity
with a multi-decade head start. SMIC operates 7 nm via DUV multi-
patterning but cannot access EUV under US export controls — the node
ceiling is hard-capped at 5 nm without sanctions relief. Rapidus is
Japan's frontier-node bet but has no production history; the 2027
target is widely seen as aspirational. SK Hynix dominates HBM (HBM4
volume 2026) and is Terafab's most likely external HBM partner if
F-TERAFAB-2 fires (S3 in `scenarios.md` §3).

---

## §3 EU

```
Project                | Sponsor      | Capex announced | Node target      | Capacity (wspm) | Status (2026-Q2)         | Subsidy share        | Customer model
-----------------------+--------------+-----------------+------------------+-----------------+--------------------------+----------------------+----------------
Intel Magdeburg        | Intel        | $33 B (paused)  | 18A (planned)    | TBD             | indefinitely delayed     | EUR 9.9 B promised   | IDM (paused)
TSMC Dresden ESMC      | TSMC/Bosch/  | EUR 10 B        | 12 / 16 / 22 / 28| ~ 40 k          | construction 2025~26     | EUR 5 B EU Chips Act | JV external
                       |  Infineon/NXP|                 |   nm (auto)      |                 |   volume target 2027     |                      |
IMEC Leuven (R&D)      | IMEC consortium| ~$1B/yr R&D   | <1 nm research   | n/a             | continuous R&D           | EU + Belgian gov     | pre-competitive consortium
ST + GF Crolles 300    | ST/GF JV     | EUR 7.5 B       | 18 nm FD-SOI     | ~ 20 k          | construction 2024~26     | FR gov + EU          | external (auto/RF)
Wolfspeed Ensdorf SiC  | Wolfspeed/ZF | $3 B            | 200mm SiC power  | ~ 12 k          | delayed (financial)      | DE gov tentative     | external (EV power)
Infineon Dresden Smart Power| Infineon| EUR 5 B        | 300mm power      | ~ 25 k          | construction 2025~26     | EU Chips Act         | captive + external
```

**EU reading**: The EU strategy is **sovereignty + mature/automotive
nodes**, not frontier logic. Intel Magdeburg was the EU's frontier-
node bet and is now indefinitely paused after Intel's 2024 capex
retrenchment — leaving Europe dependent on TSMC Dresden (12-28 nm) and
IMEC R&D (pre-competitive). Terafab is not in direct EU competition
because the EU does not target frontier captive-fab capacity; the
sovereignty thesis competes with ITAR/CHIPS Act on a different axis.

---

## §4 South Asia / India

```
Project                | Sponsor      | Capex announced | Node target      | Capacity (wspm) | Status (2026-Q2)         | Subsidy share        | Customer model
-----------------------+--------------+-----------------+------------------+-----------------+--------------------------+----------------------+----------------
Tata Semiconductor     | Tata + PSMC  | $11 B           | 28 / 22 nm       | ~ 50 k planned  | construction 2024~27     | IN gov 50% + state   | external (auto/disp)
  Sanand (Gujarat)     |              |                 |                  |                 |   first wafer 2026~27    |                      |
Micron Sanand ATMP     | Micron + IN  | $2.75 B         | DRAM/NAND ATMP   | n/a (assembly)  | construction 2024~26     | IN gov 50% + state   | Micron captive ATMP
                       |  gov         |                 |   only (no fab)  |                 |   first product 2026     |                      |
CG Power + Renesas ATMP| CG Power     | $0.9 B          | OSAT (analog/MCU)| n/a             | construction 2025~26     | IN gov               | external OSAT
Kaynes Tech ATMP       | Kaynes       | $0.4 B          | OSAT             | n/a             | construction 2025~26     | IN gov               | external OSAT
Vedanta-Foxconn JV     | Vedanta      | cancelled 2023  | 28 nm planned    | n/a             | abandoned                | abandoned            | abandoned
```

**India reading**: India has **no frontier-node fab and no committed
EUV deliveries** as of 2026-Q2. The Tata Sanand fab targets 28 nm — an
automotive/display node that is two generations behind TSMC Kumamoto
and three behind Terafab's 14A target. India competes with Terafab
**only on government-subsidy attention** (CHIPS Act vs India
Semiconductor Mission funding pools), not on technology.

---

## §5 Where Terafab is uniquely positioned

Five dimensions where Terafab's announced topology is genuinely
distinctive in the global landscape (positive, but unverified):

1. **One-roof, one-owner topology** (`terafab.md` §1): no other megafab
   in §1–§4 claims architecture + design + process + packaging +
   accelerator + consciousness under a single owner. Closest is Intel
   IDM 2.0 (4 groups) and Samsung DS (5 groups for one process
   generation); both ship to **external customers**, breaking the
   captive-only invariant.

2. **Captive-customer model at frontier-node scale**: Terafab + Tesla
   AI5 + Optimus + xAI Grok + SpaceX Starlink-V3 = a single demand
   pipeline absorbing the full output. No other megafab in the table
   has a captive demand at 100 B+ chips/year scale; Apple is captive
   but routes through TSMC (no fab ownership).

3. **Orbital deployment channel** (`terafab.md` §4 Line B, 80%): no
   other fab has SpaceX as a logistics arm. The orbital share is
   contingent on Starship economics (F-TERAFAB-4) but **the channel
   itself is unique** regardless of cost outcome.

4. **In-fab memory + logic on a shared wafer flow** (claimed, unverified
   — F-TERAFAB-2): Samsung DS comes closest with adjacent Pyeongtaek P3
   (logic) + M16 (memory) but **does not share a wafer flow**. If the
   Terafab claim holds, this would be a genuine first.

5. **Single-decision capex deployment ($119 B prototype + $5–13 T full-
   scale)**: no government-subsidy negotiation, no consortium
   coordination — Musk decides, capital deploys. TSMC AZ took
   18 months of CHIPS Act negotiation; Terafab Texas filing was 46 days
   from announce (`terafab.md` §9 metrics).

Three dimensions where Terafab is **average or low**:

A. **Process node** (Intel 14A = 1.4 nm equivalent): same generation as
   Intel 18A volume (2025) and one generation behind TSMC A16 (1.6 nm,
   2026~27 risk-prod). **Not differentiating** — the differentiation is
   topology, not process.

B. **Capex per wafer-start** (if scale claims hold): $119 B for "few
   thousand wspm" prototype = $30–60 M per wspm of installed capacity.
   Comparable to TSMC AZ ($40 B / 20 k wspm = $2 M per wspm) only at
   full-scale; **prototype phase is 15–30× more expensive per wspm**
   than industry norms because it includes the in-fab memory and
   packaging lines. Whether the full-scale ratio normalises is open.

C. **Operational track record**: zero. TSMC has 30+ years of leading-
   edge production; Samsung has 20+; Intel 50+. The Register thesis
   ("zero fab-experience") is the single strongest external critique
   in `terafab.md` §15.

---

## §6 Where Terafab competes for the same scarce resources

```
scarce resource              | annual supply       | competing claimants                          | Terafab queue position
-----------------------------+---------------------+----------------------------------------------+------------------------
ASML High-NA EUV (EXE:5000)  | ~ 6 systems / yr    | Intel (committed), TSMC (committed),         | unconfirmed; Intel
                             |                     |   Samsung (committed), IMEC R&D (1)          |   may sub-allocate
ASML EUV (NXE:3800E)         | ~ 50–60 systems / yr| TSMC (~ 20), Samsung (~ 15), Intel (~ 10),   | unconfirmed; Intel
                             |                     |   SK Hynix (~ 5), others (~ 5)               |   may sub-allocate
Senior fab process engineers | ~ 500 US-domestic   | Intel AZ/Ohio, TSMC AZ, Samsung Taylor,      | hires from same pool;
  (US-located)               |   net new / yr      |   Micron NY, GF Malta                        |   F-TERAFAB-10 watch
ERCOT TX power               | ~ 8 GW peak headroom| TSMC AZ (1.5 GW peak), Samsung Taylor        | F-TERAFAB-9: > 500 MW
  interconnect (2026~30)     |   in queue          |   (1 GW), Tesla Gigafactory TX (~ 0.5 GW),   |   filing required
                             |                     |   Bitcoin miners, AI DCs                     |
Texas water (Austin / Grimes)| ~ 50 ML/day         | Samsung Taylor (~ 20 ML/day),                | F-TERAFAB-9: > 10 ML/day
  region                     |   industrial cap    |   Tesla Gigafactory (~ 5), municipal load    |   filing required
CHIPS Act funding            | $52 B total         | Intel ($8.5 B), TSMC ($6.6 B),               | unallocated as of
                             |   (largely allocated)|  Samsung ($6.4 B), Micron ($6.1 B), GF      |   2026-Q2; Terafab
                             |                     |   ($1.5 B), SK Hynix ($0.46 B)               |   subsidy share TBD
ASML metrology + Lam etch    | constrained         | All frontier-node fabs                       | unconfirmed
HBM4 / HBM6 supply (if S3)   | tight 2026~28       | NVIDIA, AMD, AWS, Google, Meta, Microsoft,   | Terafab would join
                             |                     |   Apple                                      |   the back of the queue
```

**Reading**: Terafab competes most acutely for **ASML High-NA EUV
deliveries** (Intel must sub-allocate from its own queue position) and
**ERCOT TX power interconnect** (where TSMC AZ, Samsung Taylor,
Gigafactory TX, and Bitcoin miners already absorb most headroom). The
CHIPS Act pool is functionally allocated; any Terafab subsidy would
require either a second appropriations round or reallocation from a
delayed project (Intel Ohio One or Magdeburg-equivalent).

---

## §7 Honest caveats

- **All numbers from public announcements**; actuals diverge by
  1.3–3× routinely. The TSMC AZ Fab 21 final phase-3 capex is now
  ~ 1.7× the original announce; Samsung Taylor moved from $17 B
  initial to $25 B revised; Intel Magdeburg was paused entirely.
- **China figures are systematically uncertain**: SMIC, YMTC, CXMT
  capex and capacity numbers are derived from satellite imagery,
  customs data, and gov-budget line items rather than audited
  disclosures. Treat as ±50% uncertainty bands.
- **Rapidus, Tata, Intel Magdeburg are pre-production** with high
  cancellation/delay probability. Vedanta-Foxconn was cancelled in
  2023 after announcement; precedent suggests 30–50% of pre-prod
  megafab announces do not reach first-wafer.
- **Capacity units are not always comparable**: "wafer-starts/month" at
  300mm 2 nm has very different economic content than "wafer-starts/
  month" at 200mm 28 nm. The table aggregates without normalising —
  use as a relative comparator, not an absolute metric.
- **Subsidy shares** are headline pledges; actual disbursements
  (especially CHIPS Act) lag announces by 12–24 months and are
  contingent on construction milestones being met.
- **Terafab's own numbers are particularly uncertain**: prototype
  capex was filed 2026-05-06 and has not been operationally tested;
  full-scale figures are analyst estimates, not committed budgets.
  See `falsifier-mk2-scaffold.md` §6 honesty caveats for the polling
  discipline that will tighten these bands.
- **Customer-model column** simplifies. "External" projects have
  varying degrees of captive-anchor (Apple at TSMC AZ, Samsung S.LSI
  at Samsung Taylor); "captive" projects may sell overflow externally
  (Intel IFS).

---

## §8 Cross-link

- `terafab/terafab.md` — meta-domain header (this document's parent)
- `terafab/falsifier-mk2-scaffold.md` — quarterly polling rubric for
  Terafab-specific watch sources
- `terafab/scenarios.md` — five-scenario projection that uses this
  landscape as the competitive backdrop
- `proposals/samsung-foundry-hexa-6stage.md` §8 — Samsung counter-
  strategy that this landscape contextualises
- `exynos/exynos.md` — Korean-fab heritage comparator (Samsung-specific
  detail)

### Primary sources for §1–§4 figures

Beyond `terafab.md` §15, the following are the public sources behind
the §1–§4 tables. All publicly available; no NDA / proprietary content.

- TSMC AZ: TSMC investor relations, US Department of Commerce CHIPS
  Act announcements
- Samsung Taylor: Samsung press releases, Texas economic-development
  filings, US DoC CHIPS Act announcements
- Intel AZ / Ohio: Intel investor day disclosures, US DoC CHIPS Act
- GlobalFoundries Malta: GF press releases, US DoC CHIPS Act
- Micron NY: Micron press releases, US DoC CHIPS Act
- SK Hynix West Lafayette: SK Hynix press releases, US DoC CHIPS Act
- TSMC Hsinchu / Tainan / A16: TSMC investor relations
- Samsung Pyeongtaek P3 / P4: Samsung DS press releases
- SK Hynix M16 / Yongin M-City: SK Hynix press releases
- SMIC, YMTC, CXMT: Bernstein / TechInsights public reports;
  SemiAnalysis coverage; treat as estimate
- Rapidus: Rapidus press releases, Japanese METI announcements
- TSMC Kumamoto JASM-1/2: TSMC + Sony + Denso press releases
- Intel Magdeburg: Intel press releases, EU Commission filings
- TSMC Dresden ESMC: ESMC consortium press releases, EU Chips Act
  notifications
- IMEC Leuven: IMEC annual reports
- ST + GF Crolles: ST + GF press releases
- Wolfspeed Ensdorf, Infineon Dresden: respective company press
- Tata Semiconductor Sanand: Tata press releases, India MeitY
  Semiconductor Mission filings
- Micron Sanand ATMP, CG Power, Kaynes: India MeitY filings
- Vedanta-Foxconn: industry press (project cancelled 2023)

---

**Provenance**: Industry landscape compiled 2026-05-11 from public
announcements only. No NDA / proprietary content. Terafab figures cross-
referenced to `terafab/terafab.md` §15. Re-snapshot quarterly per the
polling rubric in `falsifier-mk2-scaffold.md` §5; landscape changes
fastest at the China and EU rows.
