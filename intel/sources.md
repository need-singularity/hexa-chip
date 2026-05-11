<!-- @absorbed: 2026-05-12 -->
<!-- @sources: intel.md §15 (canonical mirror) -->
<!-- @scope: structured citation database; zero new external claims -->
<!-- @sister: terafab/sources.md, exynos/sources.md, tsmc/sources.md — same DB grammar -->
---
type: citation-database
parent: intel/intel.md
target_window: Mk.I~Mk.II (2026-Q2 ~ 2028)
status: index (sources frozen at absorption date 2026-05-12)
n6_template: terafab/sources.md (sister citation database)
entries: 18
---

# Intel — Source Database

> **Purpose**: turn the bullet list of links in `intel/intel.md` §15
> into a structured, falsifier-linked, snapshot-traceable citation
> database. Each entry declares **what claim the source supports**,
> **what falsifier it feeds**, and **how fresh the source is** so the
> Mk.II quarterly polling rubric (Intel quarterly 10-K + Investor
> Day + Foundry Direct Connect + Ohio filings + Magdeburg watch +
> IEDM/VLSI Symposium/ISSCC annual proceedings) can operate on a
> known-quality input set.

## §1 What each source family is good for

The 18 sources cluster into six families with sharply different uses:

- **Primary — Intel public disclosure** (Intel IR, SEC EDGAR 10-K /
  10-Q / 8-K, Foundry Direct Connect, press releases). Load-bearing
  for *roadmap claims* (Intel 18A / 14A node cadence; IFS external
  customer announcements; Ohio One / Magdeburg / Tower / CHIPS Act
  schedule). Re-checked annually at Foundry Direct Connect and
  quarterly at Intel investor calls.
- **US federal / state filings** (Ohio One Licking County, JobsOhio,
  US Commerce CHIPS Act). Load-bearing for *Ohio One schedule +
  CHIPS Act conditionality* — feeds F-INTEL-6 (Ohio Phase 1 HVM).
- **EU filings** (EU Chips Act Magdeburg, German federal). Load-bearing
  for *Magdeburg pause vs cancel binary* — feeds F-INTEL-4.
- **Industry trackers** (TrendForce, Counterpoint, Mercury Research).
  Load-bearing for *quantitative market share* — Intel x86 vs AMD
  in server / client; Intel Foundry share.
- **Public-side industry press** (The Register, Tom's Hardware,
  SemiAnalysis public-side, AnandTech archive). Load-bearing for
  *commentary + leaks*. SemiAnalysis specifically does NDA-aware
  analysis; we use only the publicly-readable portion.
- **Peer-reviewed device physics** (IEEE IEDM, VLSI Symposium, ISSCC).
  Load-bearing for *physical-device claims* (RibbonFET, PowerVia,
  High-NA EUV adoption at 14A). Feeds F-INTEL-7 reformulation
  (Mk.II will replace projection guesses with measured Intel 18A +
  14A metrics from these venues).

## §2 Source × falsifier quality matrix

Reading: rows are the 18 sources, columns are the 7 F-INTEL-N
falsifiers from `intel.md` §7. Cells: `H` = high-relevance (source
directly supplies the signal), `M` = medium (corroborates), `L` = low
(peripheral), `·` = no link.

```
source                          F1  F2  F3  F4  F5  F6  F7
------------------------------- --- --- --- --- --- --- ---
SRC-INTEL-001  Intel IR + IR    H   H   M   H   H   H   M
SRC-INTEL-002  SEC EDGAR 10-K   H   H   M   H   H   H   M
SRC-INTEL-003  IFDC 2024-2025   H   H   H   M   H   M   M
SRC-INTEL-004  Intel press      M   H   M   H   M   H   M
SRC-INTEL-005  Ohio One LC      ·   ·   ·   ·   ·   H   ·
SRC-INTEL-006  JobsOhio         ·   ·   ·   ·   ·   H   ·
SRC-INTEL-007  CHIPS Act award  ·   ·   ·   ·   M   H   ·
SRC-INTEL-008  EU Magdeburg     ·   ·   ·   H   ·   ·   M
SRC-INTEL-009  TrendForce       H   M   ·   ·   M   ·   ·
SRC-INTEL-010  Counterpoint     H   M   ·   ·   ·   ·   ·
SRC-INTEL-011  Mercury Research H   M   ·   ·   ·   ·   ·
SRC-INTEL-012  The Register     M   H   M   H   M   H   M
SRC-INTEL-013  Tom's Hardware   M   H   M   M   M   M   M
SRC-INTEL-014  SemiAnalysis     H   H   H   M   H   M   M
SRC-INTEL-015  AnandTech arch   M   M   ·   ·   ·   ·   M
SRC-INTEL-016  IEEE IEDM        ·   H   ·   ·   ·   ·   H
SRC-INTEL-017  Wikipedia-Intel  M   M   M   M   M   M   M
SRC-INTEL-018  Wikipedia-IFS    M   M   M   M   H   M   ·
```

Reading the matrix: F-INTEL-1 (18A external customer count) and
F-INTEL-2 (Panther Lake schedule) are the most densely sourced —
Intel IR / 10-K / IFDC / SemiAnalysis / Mercury / TrendForce.
F-INTEL-4 (Magdeburg unpause vs cancel) is uniquely fed by the EU
public dossier (SRC-INTEL-008) supplemented by Intel 10-K commentary.
F-INTEL-6 (Ohio Phase 1) is fed by the densest US-side state set
(Licking County + JobsOhio + CHIPS Act). The Mk.II reformulation
of F-INTEL-7 will pull Intel 18A + 14A device metrics from IEDM
2027 / ISSCC 2027 proceedings.

## §3 Source entries

### Primary — Intel public disclosure

```yaml
---
id: SRC-INTEL-001
title: "Intel Investor Relations — quarterly investor calls + 10-K index"
url: https://www.intc.com/
access_date: 2026-05-12
publisher: Intel
type: ir-filing
key_claims:
  - Intel 2024 revenue ≈ $53 B
  - Intel 2024 capex ≈ $25 B (revised down from $30 B)
  - IFS segment commentary
  - Ohio / Magdeburg schedule commentary
freshness: quarterly
falsifier_links: [F-INTEL-1, F-INTEL-2, F-INTEL-4, F-INTEL-5, F-INTEL-6]
archive: https://web.archive.org/web/2026*/www.intc.com/
note: |
  Intel IR is the canonical primary source. Quarterly call transcripts
  contain explicit guidance on Ohio Phase 1 schedule, Magdeburg pause
  status, IFS segment revenue, and external-customer announcements.
---

---
id: SRC-INTEL-002
title: "SEC EDGAR — Intel 10-K / 10-Q / 8-K filings"
url: https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0000050863
access_date: 2026-05-12
publisher: US SEC
type: regulatory-filing
key_claims:
  - audited annual reports (10-K) with segment breakdown
  - quarterly 10-Q with capex / revenue detail
  - material-event 8-K disclosures (Tower terminate, CEO transitions, Magdeburg pause)
freshness: quarterly (10-Q) + event-driven (8-K)
falsifier_links: [F-INTEL-1, F-INTEL-2, F-INTEL-4, F-INTEL-5, F-INTEL-6]
archive: (SEC EDGAR is the canonical archive)
note: |
  All filings are public-by-law. Form 8-K material-event filings cover
  CEO transitions (Gelsinger 2024-12-01, Tan 2025-03-12) and Tower
  Semiconductor acquisition termination (2023-08).
---

---
id: SRC-INTEL-003
title: "Intel Foundry Direct Connect 2024-2025 — annual public keynote"
url: https://www.intel.com/content/www/us/en/foundry/overview.html
access_date: 2026-05-12
publisher: Intel
type: vendor-keynote
key_claims:
  - Intel 18A / 14A public node-shrink roadmap
  - RibbonFET + PowerVia at 18A (publicly disclosed)
  - High-NA EUV introduction at 14A (publicly disclosed)
  - IFS external-customer LOI announcements (Microsoft, AWS, DoD)
  - 14A first-customer commitment commentary
freshness: annual (typically February)
falsifier_links: [F-INTEL-1, F-INTEL-2, F-INTEL-3, F-INTEL-5]
archive: https://web.archive.org/web/2026*/www.intel.com/content/www/us/en/foundry/overview.html
note: |
  Direct Connect is the canonical public source for the Intel Foundry
  pivot roadmap. Mirrored across Intel's own site + media coverage.
---

---
id: SRC-INTEL-004
title: "Intel press releases — Ohio / Magdeburg / IFS / 18A / 14A"
url: https://www.intc.com/news-events/press-releases
access_date: 2026-05-12
publisher: Intel
type: press-release
key_claims:
  - Ohio One groundbreaking (2022-09)
  - Magdeburg paused (2024-09)
  - CEO Gelsinger departure (2024-12-01)
  - CEO Tan appointment (2025-03-12)
  - Tower Semiconductor acquisition termination (2023-08)
freshness: event-driven
falsifier_links: [F-INTEL-2, F-INTEL-4, F-INTEL-6]
archive: https://web.archive.org/web/2026*/www.intc.com/news-events/press-releases
---
```

### US federal / state filings (Ohio One)

```yaml
---
id: SRC-INTEL-005
title: "Ohio One Campus — Licking County public filings"
url: https://www.lcounty.com/
access_date: 2026-05-12
publisher: Licking County, Ohio
type: county-government
key_claims:
  - Ohio One zoning + permits
  - tax-incentive structure
  - phase 1 schedule commitments
freshness: event-driven
falsifier_links: [F-INTEL-6]
archive: https://web.archive.org/web/2026*/www.lcounty.com/
---

---
id: SRC-INTEL-006
title: "JobsOhio — Intel Ohio announcements"
url: https://www.jobsohio.com/
access_date: 2026-05-12
publisher: JobsOhio (Ohio state economic-development)
type: state-government
key_claims:
  - Ohio state-level Intel commitment
  - workforce + tax-incentive structure
freshness: event-driven
falsifier_links: [F-INTEL-6]
archive: https://web.archive.org/web/2026*/www.jobsohio.com/
---

---
id: SRC-INTEL-007
title: "US Commerce CHIPS Act — Intel preliminary award (2024-03)"
url: https://www.commerce.gov/news/press-releases/2024/03/biden-harris-administration-announces-preliminary-terms-intel
access_date: 2026-05-12
publisher: US Department of Commerce
type: federal-award
key_claims:
  - $8.5 B direct funding commitment
  - $11 B loans commitment
  - tied to Ohio + AZ + NM + Oregon milestones
freshness: event-driven (2024-03 initial; addenda 2025)
falsifier_links: [F-INTEL-5, F-INTEL-6]
archive: (Commerce.gov is canonical)
---
```

### EU filings (Magdeburg paused)

```yaml
---
id: SRC-INTEL-008
title: "EU Chips Act — Intel Magdeburg public dossier"
url: https://commission.europa.eu/strategy-and-policy/priorities-2019-2024/europe-fit-digital-age/european-chips-act_en
access_date: 2026-05-12
publisher: European Commission
type: eu-policy-filing
key_claims:
  - Magdeburg Fab 29 subsidy commitments
  - 2022-03 announcement + 2024-09 pause
  - German federal-government counterparty commitments
freshness: event-driven
falsifier_links: [F-INTEL-4, F-INTEL-7]
archive: https://web.archive.org/web/2026*/commission.europa.eu/strategy-and-policy/priorities-2019-2024/europe-fit-digital-age/european-chips-act_en
---
```

### Industry trackers (public quarterly data)

```yaml
---
id: SRC-INTEL-009
title: "TrendForce — Foundry quarterly tracker (Intel angle)"
url: https://www.trendforce.com
access_date: 2026-05-12
publisher: TrendForce
type: market-tracker
key_claims:
  - Intel Foundry share commentary (<5% global 2024-Q4)
  - quarterly capex/revenue cross-check
freshness: quarterly
falsifier_links: [F-INTEL-1, F-INTEL-5]
archive: (TrendForce reports paywalled; press echoes free)
---

---
id: SRC-INTEL-010
title: "Counterpoint Research — Client-CPU + foundry tracker"
url: https://www.counterpointresearch.com
access_date: 2026-05-12
publisher: Counterpoint Research
type: market-tracker
key_claims:
  - Intel Core Ultra client-CPU share (vs AMD, vs ARM)
  - foundry-share corroboration
freshness: quarterly
falsifier_links: [F-INTEL-1]
archive: (Counterpoint reports paywalled; press echoes free)
---

---
id: SRC-INTEL-011
title: "Mercury Research — x86 CPU market share tracker"
url: https://www.mercuryresearch.com/
access_date: 2026-05-12
publisher: Mercury Research
type: market-tracker
key_claims:
  - quarterly Intel-vs-AMD x86 server + client share
  - data-center vs client split
freshness: quarterly
falsifier_links: [F-INTEL-1]
archive: (Mercury reports paywalled; press echoes free)
---
```

### Industry press (public-side analysis)

```yaml
---
id: SRC-INTEL-012
title: "The Register — Intel beat"
url: https://www.theregister.com/
access_date: 2026-05-12
publisher: The Register (UK)
type: tech-press
key_claims:
  - Intel + Foundry coverage; CEO transitions
  - Ohio / Magdeburg schedule commentary
  - 18A / 14A leak coverage
freshness: high (daily)
falsifier_links: [F-INTEL-2, F-INTEL-4, F-INTEL-6]
archive: https://web.archive.org/web/2026*/www.theregister.com/
---

---
id: SRC-INTEL-013
title: "Tom's Hardware — Intel CPU + GPU + node coverage"
url: https://www.tomshardware.com/
access_date: 2026-05-12
publisher: Tom's Hardware
type: tech-press
key_claims:
  - Intel client-CPU benchmarks
  - Intel GPU (Battlemage, Celestial) coverage
  - Intel 18A / 14A roadmap commentary
freshness: high (daily)
falsifier_links: [F-INTEL-2]
archive: https://web.archive.org/web/2026*/www.tomshardware.com/
---

---
id: SRC-INTEL-014
title: "SemiAnalysis (public-side, Dylan Patel)"
url: https://www.semianalysis.com/
access_date: 2026-05-12
publisher: SemiAnalysis LLC
type: tech-analysis
key_claims:
  - public Intel pivot commentary
  - public 18A / 14A capacity analysis
  - public IFS external-customer commentary
freshness: variable (weekly / event-driven)
falsifier_links: [F-INTEL-1, F-INTEL-2, F-INTEL-3, F-INTEL-5]
archive: https://web.archive.org/web/2026*/www.semianalysis.com/
note: |
  IMPORTANT: SemiAnalysis paid reports are NDA-aware. This envelope
  uses only the publicly-readable portion. No paid-tier content; no
  NDA-derived content.
---

---
id: SRC-INTEL-015
title: "AnandTech archive (Ian Cutress historical Intel coverage)"
url: https://www.anandtech.com/
access_date: 2026-05-12
publisher: AnandTech (archive retained post-shutdown)
type: tech-press-archive
key_claims:
  - historical Intel CPU + node analysis
  - Intel 4 / Intel 3 deep-dive analysis
freshness: archive (no new content post-2024-shutdown)
falsifier_links: [F-INTEL-1, F-INTEL-7]
archive: https://web.archive.org/web/2026*/www.anandtech.com/
---
```

### Peer-reviewed device physics

```yaml
---
id: SRC-INTEL-016
title: "IEEE IEDM 2023 / 2024 / 2025 proceedings — Intel papers"
url: https://ieee-iedm.org
access_date: 2026-05-12
publisher: IEEE
type: peer-reviewed
key_claims:
  - Intel 18A RibbonFET + PowerVia device-physics papers
  - High-NA EUV transition-node papers
freshness: annual (December)
falsifier_links: [F-INTEL-2, F-INTEL-7]
archive: (IEEE Xplore canonical archive)
note: |
  Primary feed for the Mk.II reformulation of F-INTEL-7: replaces
  projection guesses with measured Intel 18A / 14A device metrics.
---
```

### Encyclopedia

```yaml
---
id: SRC-INTEL-017
title: "Intel — Wikipedia"
url: https://en.wikipedia.org/wiki/Intel
access_date: 2026-05-12
publisher: Wikipedia
type: encyclopedia
key_claims:
  - Intel founding 1968 (Noyce/Moore/Grove)
  - per-node history table
  - corporate-history milestones (Tower acquisition, Ohio, Magdeburg, CEO transitions)
freshness: community-edited (high)
falsifier_links: [F-INTEL-1, F-INTEL-5, F-INTEL-7]
archive: https://web.archive.org/web/2026*/en.wikipedia.org/wiki/Intel
---

---
id: SRC-INTEL-018
title: "Intel Foundry Services — Wikipedia"
url: https://en.wikipedia.org/wiki/Intel_Foundry_Services
access_date: 2026-05-12
publisher: Wikipedia
type: encyclopedia
key_claims:
  - IFS pivot history (2021-03 IDM 2.0 announce → 2024-Q1 rebrand)
  - external-customer announcement history
freshness: community-edited (high)
falsifier_links: [F-INTEL-1, F-INTEL-5]
archive: https://web.archive.org/web/2026*/en.wikipedia.org/wiki/Intel_Foundry_Services
---
```

## §4 Refresh policy

- **Primary Intel** (001, 002, 003, 004): re-fetch every Intel
  earnings quarter (typically January / April / July / October);
  re-fetch Intel Foundry Direct Connect keynote (annually, typically
  February).
- **US filings** (005, 006, 007): re-fetch event-driven (Ohio Phase 1
  schedule updates, CHIPS Act addenda).
- **EU filings** (008): re-fetch event-driven (Magdeburg pause /
  cancel binary watch).
- **Trackers** (009, 010, 011): re-fetch quarterly; promote any
  rank / share delta into a Mk.II addendum entry.
- **Industry press** (012, 013, 014, 015): re-fetch event-driven;
  SemiAnalysis specifically every major Intel-pivot move.
- **IEEE** (016): re-fetch annually at IEDM proceedings publication
  (typically late December / early January).
- **Encyclopedia** (017, 018): re-fetch quarterly as a corroboration
  check (community-edited).

## §5 Sources NOT yet in this database (Mk.II additions expected)

The following are not yet entries here because no Intel-specific
recent disclosure has landed against them at Mk.I:

- Intel 10-K FY2025 (not yet published as of 2026-05-12; expected
  2026-Q2 with January 2026 filing)
- Intel Foundry Direct Connect 2026 keynote (deck not yet published;
  expected 2026-Q1)
- IEDM 2026 proceedings (publication December 2026)
- VLSI Symposium 2026 proceedings (publication June 2026)
- Ohio One Phase 1 first-customer-tape-out disclosure (event not yet
  announced)
- Intel 14A High-NA EUV first-lots disclosure (event not yet announced)
- Tesla-on-Intel-14A volume disclosure (target Terafab Mk.III window
  2028-2030 — F-INTEL-3 + F-TERAFAB-6 joint event)

These will be added as `SRC-INTEL-019+` once an Intel-specific
document is publicly available against any of them.

---

**Provenance**: Citation database derived 1:1 from `intel.md` §15.
Zero new external claims. Archive URLs are speculative Wayback Machine
templates for snapshots that may or may not exist at access date; the
canonical mirrors are the publisher sites themselves. **No NDA, no
proprietary process kits, no Intel-internal data, no SOW-protected
partnership detail.** Korean editorial tone (in `intel.md`) is
heritage framing only — not commercial alignment, not partnership
claim. SemiAnalysis paid-tier content is explicitly excluded; only
publicly-readable portion is used.
