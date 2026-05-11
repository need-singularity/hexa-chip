<!-- @absorbed: 2026-05-12 -->
<!-- @sources: tsmc.md §15 (canonical mirror) -->
<!-- @scope: structured citation database; zero new external claims -->
<!-- @sister: terafab/sources.md, exynos/sources.md — same DB grammar -->
---
type: citation-database
parent: tsmc/tsmc.md
target_window: Mk.I~Mk.II (2026-Q2 ~ 2028)
status: index (sources frozen at absorption date 2026-05-12)
n6_template: terafab/sources.md (sister citation database)
entries: 18
---

# TSMC — Source Database

> **Purpose**: turn the bullet list of links in `tsmc/tsmc.md` §15
> into a structured, falsifier-linked, snapshot-traceable citation
> database. Each entry declares **what claim the source supports**,
> **what falsifier it feeds**, and **how fresh the source is** so the
> Mk.II quarterly polling rubric (TSMC quarterly IR, TrendForce
> quarterly tracker, DigiTimes CoWoS tracker, Symposium 2026 + 2027
> keynotes, IEDM/VLSI Symposium/ISSCC annual proceedings) can operate
> on a known-quality input set.

## §1 What each source family is good for

The 18 sources cluster into six families with sharply different uses:

- **Primary — TSMC public disclosure** (TSMC IR, Annual Report,
  Symposium archive, press-release portal, SEC 6-K). Load-bearing for
  *roadmap claims* (N3 / N2 / A16 / A14 node cadence; CoWoS capacity
  guidance; AZ Fab 21 / JASM / ESMC phase timing). Re-checked
  annually at TSMC Technology Symposium and quarterly at TSMC IR.
- **US federal / state filings** (Arizona Commerce Authority, US
  Commerce CHIPS Act). Load-bearing for *Arizona Fab 21 capex +
  schedule claims* — feeds F-TSMC-3 (AZ N2 HVM schedule) and
  F-TSMC-7 (Arizona-as-hedge falsifier).
- **EU / Japan filings** (ESMC Dresden, JASM Kumamoto). Load-bearing
  for *geographic-diversification claims* — feeds F-TSMC-7 (whether
  the global expansion is real leading-edge or geopolitical hedge).
- **Industry trackers** (TrendForce, Counterpoint, IDC, DigiTimes,
  Nikkei Asia). Load-bearing for *quantitative market share* numbers
  and *CoWoS capacity rumours*. These are the primary feeds for
  F-TSMC-1 (foundry share durability) and F-TSMC-4 (CoWoS capacity ramp).
- **Peer-reviewed device physics** (IEEE IEDM, VLSI Symposium, ISSCC).
  Load-bearing for *physical-device claims* (GAA architecture, BSPDL
  at A16). Feed F-TSMC-7 reformulation (Mk.II will replace projection
  guesses with measured N2 + A16 metrics from these venues).
- **Competitor public commentary** (Samsung Foundry Forum, Intel
  Foundry Direct Connect). Load-bearing for *out-side-view-on-TSMC* —
  competitor public commentary often explicitly mentions TSMC as
  benchmark.

## §2 Source × falsifier quality matrix

Reading: rows are the 18 sources, columns are the 7 F-TSMC-N
falsifiers from `tsmc.md` §7. Cells: `H` = high-relevance (source
directly supplies the signal), `M` = medium (corroborates), `L` = low
(peripheral), `·` = no link.

```
source                          F1  F2  F3  F4  F5  F6  F7
------------------------------- --- --- --- --- --- --- ---
SRC-TSMC-001  TSMC IR            H   H   H   H   H   H   M
SRC-TSMC-002  TSMC Symposium     M   H   H   M   ·   H   M
SRC-TSMC-003  TSMC press         M   H   H   M   M   H   M
SRC-TSMC-004  SEC 6-K            H   M   H   ·   H   M   ·
SRC-TSMC-005  AZ Commerce        ·   ·   H   ·   ·   ·   H
SRC-TSMC-006  CHIPS Act award    ·   ·   H   ·   ·   ·   H
SRC-TSMC-007  ESMC Dresden       ·   ·   M   ·   ·   ·   M
SRC-TSMC-008  JASM Kumamoto      ·   ·   M   ·   ·   ·   M
SRC-TSMC-009  TrendForce         H   H   M   H   ·   ·   M
SRC-TSMC-010  Counterpoint       H   M   ·   ·   ·   ·   ·
SRC-TSMC-011  IDC Foundry        H   M   M   M   ·   ·   ·
SRC-TSMC-012  DigiTimes          M   H   H   H   M   M   M
SRC-TSMC-013  Nikkei Asia        M   M   M   M   M   M   H
SRC-TSMC-014  IEEE IEDM          ·   H   ·   M   ·   M   H
SRC-TSMC-015  Wikipedia-TSMC     M   M   M   ·   M   M   M
SRC-TSMC-016  HSP statistics     ·   ·   ·   ·   ·   ·   M
SRC-TSMC-017  Samsung Forum      M   M   ·   ·   ·   M   M
SRC-TSMC-018  Intel Direct Conn  M   M   M   ·   ·   M   M
```

Reading the matrix: F-TSMC-3 (Arizona N2 HVM schedule) has the
densest US-side source support — Arizona Commerce, CHIPS Act award,
TSMC IR, TSMC Symposium, TSMC press, DigiTimes. F-TSMC-7 (Arizona
geopolitical-hedge vs real-fab thesis) is fed primarily by Nikkei
Asia, IEEE IEDM, Arizona Commerce, CHIPS Act award. F-TSMC-5
(pure-play charter durability) is thinly fed because the falsifier
is structural — only TSMC IR and SEC 6-K can disclose a
charter-level pivot. The Mk.II reformulation of F-TSMC-7 will pull
N2 + A16 device metrics from IEDM 2027 / ISSCC 2027 proceedings.

## §3 Source entries

### Primary — TSMC public disclosure

```yaml
---
id: SRC-TSMC-001
title: "TSMC Investor Relations — quarterly + Annual Report"
url: https://investor.tsmc.com/
access_date: 2026-05-12
publisher: TSMC
type: ir-filing
key_claims:
  - TSMC 2024 revenue ≈ $90 B (NT$2.9 T)
  - TSMC 2024 capex ≈ $30 B
  - quarterly conference-call transcripts
  - CoWoS capacity guidance (35→80 kWPM 2024→2026)
freshness: quarterly
falsifier_links: [F-TSMC-1, F-TSMC-2, F-TSMC-3, F-TSMC-4, F-TSMC-5, F-TSMC-6]
archive: https://web.archive.org/web/2026*/investor.tsmc.com/
note: |
  TSMC IR is the canonical primary source. Quarterly call transcripts
  contain explicit guidance on CoWoS capacity, Arizona phase schedule,
  and customer-set commentary that feeds 6 of the 7 falsifiers.
---

---
id: SRC-TSMC-002
title: "TSMC Technology Symposium — annual public keynote archive"
url: https://www.tsmc.com/english/news-events
access_date: 2026-05-12
publisher: TSMC
type: vendor-keynote
key_claims:
  - N3 / N2 / A16 / A14 public node-shrink roadmap
  - GAA from N2 onward (publicly disclosed)
  - BSPDL (backside power delivery) from A16 onward (publicly disclosed)
  - CoWoS-L / CoWoS-S / InFO / SoIC / 3DFabric advanced packaging family
  - High-NA EUV evaluation publicly underway
freshness: annual (Symposium is yearly, typically April in Hsinchu)
falsifier_links: [F-TSMC-2, F-TSMC-3, F-TSMC-6]
archive: https://web.archive.org/web/2026*/www.tsmc.com/english/news-events
note: |
  Symposium keynotes are the canonical public source for the TSMC
  roadmap. Mirrored across TSMC's own site + media coverage. No NDA.
---

---
id: SRC-TSMC-003
title: "TSMC press releases — Arizona / Japan / Germany / Symposium"
url: https://pr.tsmc.com/
access_date: 2026-05-12
publisher: TSMC
type: press-release
key_claims:
  - Arizona Fab 21 phase 1/2/3 announcements
  - Japan JASM phase 1 HVM milestone
  - Germany ESMC phase 1 schedule
  - Symposium summary press
freshness: event-driven
falsifier_links: [F-TSMC-2, F-TSMC-3, F-TSMC-5, F-TSMC-6]
archive: https://web.archive.org/web/2026*/pr.tsmc.com/
---

---
id: SRC-TSMC-004
title: "SEC EDGAR — TSMC 6-K filings (foreign-private-issuer ADR)"
url: https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0001046179
access_date: 2026-05-12
publisher: US SEC
type: regulatory-filing
key_claims:
  - audited annual reports (Form 20-F equivalent)
  - quarterly 6-K filings with revenue + segment data
  - material-event disclosures (capex revisions, AZ award details)
freshness: quarterly
falsifier_links: [F-TSMC-1, F-TSMC-3, F-TSMC-5]
archive: (SEC EDGAR is the canonical archive)
note: |
  TSMC trades on NYSE as TSM (ADR); 6-K is the foreign-private-issuer
  equivalent of 8-K. All filings are public-by-law.
---
```

### US federal / state filings (Arizona Fab 21)

```yaml
---
id: SRC-TSMC-005
title: "Arizona Commerce Authority — TSMC Arizona announcements"
url: https://www.azcommerce.com/
access_date: 2026-05-12
publisher: Arizona Commerce Authority
type: state-government
key_claims:
  - Fab 21 phase 1/2/3 capex commitments
  - Arizona-specific workforce + tax-incentive structure
  - phase 1 grand-opening event timeline
freshness: event-driven
falsifier_links: [F-TSMC-3, F-TSMC-7]
archive: https://web.archive.org/web/2026*/www.azcommerce.com/
---

---
id: SRC-TSMC-006
title: "US Commerce CHIPS Act — TSMC Arizona preliminary award"
url: https://www.commerce.gov/news/press-releases/2024/04/biden-harris-administration-announces-preliminary-terms-tsmc-arizona
access_date: 2026-05-12
publisher: US Department of Commerce
type: federal-award
key_claims:
  - $6.6 B direct funding commitment
  - $5 B loans commitment
  - tied to phase 1/2/3 milestones
freshness: event-driven (2024-04 initial; addenda as phases hit milestones)
falsifier_links: [F-TSMC-3, F-TSMC-7]
archive: (Commerce.gov is canonical)
---
```

### EU / Japan filings

```yaml
---
id: SRC-TSMC-007
title: "ESMC (Dresden, Germany) — TSMC + Infineon + NXP + Bosch JV"
url: https://esmc.com/
access_date: 2026-05-12
publisher: ESMC GmbH
type: jv-announcement
key_claims:
  - Dresden HVM target 2027-Q4 → 2028
  - EU Chips Act award ~€5 B
  - 22/28 nm + N12 / N16 target node mix
freshness: event-driven
falsifier_links: [F-TSMC-3, F-TSMC-7]
archive: https://web.archive.org/web/2026*/esmc.com/
---

---
id: SRC-TSMC-008
title: "JASM (Kumamoto, Japan) — TSMC + Sony + Denso JV"
url: https://www.jasm-jp.com/en/
access_date: 2026-05-12
publisher: JASM
type: jv-announcement
key_claims:
  - Kumamoto phase 1 HVM 2024-Q4 (N28 / N22 target node mix)
  - Japan METI subsidies disclosed
  - phase 2 expansion under public discussion
freshness: event-driven
falsifier_links: [F-TSMC-3, F-TSMC-7]
archive: https://web.archive.org/web/2026*/www.jasm-jp.com/
---
```

### Industry trackers (public quarterly data)

```yaml
---
id: SRC-TSMC-009
title: "TrendForce — Foundry quarterly tracker"
url: https://www.trendforce.com
access_date: 2026-05-12
publisher: TrendForce
type: market-tracker
key_claims:
  - quarterly foundry-share (TSMC ~ 61 %, Samsung ~ 11 %, other ~ 28 %)
  - CoWoS capacity tracker
  - quarterly TSMC capex revisions
freshness: quarterly
falsifier_links: [F-TSMC-1, F-TSMC-2, F-TSMC-4]
archive: (TrendForce reports paywalled; key facts mirrored in press)
---

---
id: SRC-TSMC-010
title: "Counterpoint Research — Smartphone SoC + foundry tracker"
url: https://www.counterpointresearch.com
access_date: 2026-05-12
publisher: Counterpoint Research
type: market-tracker
key_claims:
  - smartphone SoC shipments (Apple A-series, Snapdragon, Dimensity)
  - quarterly foundry-share corroboration
freshness: quarterly
falsifier_links: [F-TSMC-1]
archive: (Counterpoint reports paywalled; press echoes free)
---

---
id: SRC-TSMC-011
title: "IDC — Foundry tracker"
url: https://www.idc.com
access_date: 2026-05-12
publisher: IDC
type: market-tracker
key_claims:
  - quarterly foundry reports
  - long-term TAM forecasts
freshness: quarterly
falsifier_links: [F-TSMC-1, F-TSMC-3, F-TSMC-4]
archive: (IDC reports paywalled; press echoes free)
---

---
id: SRC-TSMC-012
title: "DigiTimes Asia — Taiwan-based daily semi coverage"
url: https://www.digitimes.com/
access_date: 2026-05-12
publisher: DigiTimes
type: tech-press
key_claims:
  - Taiwan-side N2 customer-set leaks
  - CoWoS capacity rumour-tracker (Apple / NVIDIA / AMD share)
  - Hsinchu / Tainan fab-cluster commentary
freshness: high (daily)
falsifier_links: [F-TSMC-2, F-TSMC-3, F-TSMC-4]
archive: https://web.archive.org/web/2026*/www.digitimes.com/
---

---
id: SRC-TSMC-013
title: "Nikkei Asia — Semiconductors beat"
url: https://asia.nikkei.com/Business/Tech/Semiconductors
access_date: 2026-05-12
publisher: Nikkei
type: tech-press
key_claims:
  - Japan-side covering TSMC + JASM
  - China-export-control coverage
  - geopolitical context for TSMC global expansion
freshness: high (daily)
falsifier_links: [F-TSMC-3, F-TSMC-7]
archive: https://web.archive.org/web/2026*/asia.nikkei.com/Business/Tech/Semiconductors
---
```

### Peer-reviewed device physics

```yaml
---
id: SRC-TSMC-014
title: "IEEE IEDM 2023 / 2024 / 2025 proceedings — TSMC papers"
url: https://ieee-iedm.org
access_date: 2026-05-12
publisher: IEEE
type: peer-reviewed
key_claims:
  - TSMC N3 / N2 / A16 device-physics papers
  - GAA + BSPDL public disclosure venue
freshness: annual (December)
falsifier_links: [F-TSMC-2, F-TSMC-6, F-TSMC-7]
archive: (IEEE Xplore canonical archive)
note: |
  Primary feed for the Mk.II reformulation of F-TSMC-7: replaces
  projection guesses with measured N2 / A16 / A14 device metrics.
---
```

### Encyclopedia + site statistics

```yaml
---
id: SRC-TSMC-015
title: "TSMC — Wikipedia"
url: https://en.wikipedia.org/wiki/TSMC
access_date: 2026-05-12
publisher: Wikipedia
type: encyclopedia
key_claims:
  - TSMC founding 1987 (Morris Chang)
  - per-node history table
  - corporate-history milestones (Fab 12, Fab 14, Fab 18, AZ, JASM, ESMC)
freshness: community-edited (high)
falsifier_links: [F-TSMC-1, F-TSMC-5]
archive: https://web.archive.org/web/2026*/en.wikipedia.org/wiki/TSMC
---

---
id: SRC-TSMC-016
title: "Hsinchu Science Park public statistics"
url: https://www.sipa.gov.tw/
access_date: 2026-05-12
publisher: Taiwan SIPA (Science and Industrial Park Administration)
type: government-statistics
key_claims:
  - Hsinchu fab cluster footprint
  - employment + revenue aggregates
freshness: monthly
falsifier_links: [F-TSMC-7]
archive: https://web.archive.org/web/2026*/www.sipa.gov.tw/
---
```

### Competitor public commentary

```yaml
---
id: SRC-TSMC-017
title: "Samsung Foundry Forum — competitor public archive"
url: https://semiconductor.samsung.com/foundry/
access_date: 2026-05-12
publisher: Samsung
type: competitor-keynote
key_claims:
  - SF2 / SF1.4 / SF1.0 roadmap (competitor framing)
  - Samsung Foundry capacity claims
freshness: annual (Forum)
falsifier_links: [F-TSMC-1]
archive: https://web.archive.org/web/2026*/semiconductor.samsung.com/foundry/
---

---
id: SRC-TSMC-018
title: "Intel Foundry Direct Connect — competitor public archive"
url: https://www.intel.com/content/www/us/en/foundry/overview.html
access_date: 2026-05-12
publisher: Intel Foundry Services
type: competitor-keynote
key_claims:
  - Intel 18A / 14A roadmap (competitor framing vs TSMC N2 / A16)
  - IFS external-customer commentary
freshness: annual (Direct Connect)
falsifier_links: [F-TSMC-1, F-TSMC-6]
archive: https://web.archive.org/web/2026*/www.intel.com/content/www/us/en/foundry/overview.html
---
```

## §4 Refresh policy

- **Primary TSMC** (001, 002, 003, 004): re-fetch every TSMC IR
  quarter (typically January / April / July / October); re-fetch
  TSMC Technology Symposium keynote (annually, typically April).
- **US filings** (005, 006): re-fetch event-driven (AZ phase
  announcements, CHIPS Act addenda).
- **EU / Japan filings** (007, 008): re-fetch quarterly at JV-board
  cadence.
- **Trackers** (009, 010, 011): re-fetch quarterly; promote any
  rank / share delta into a Mk.II addendum entry.
- **DigiTimes / Nikkei Asia** (012, 013): re-fetch quarterly at IR
  cycle; cherry-pick per major rumour event (CoWoS capacity revision,
  N2 customer-set leak, AZ schedule shift).
- **IEEE** (014): re-fetch annually at IEDM proceedings publication
  (typically late December / early January).
- **Competitor** (017, 018): re-fetch annually at competitor Forum /
  Direct Connect cadence.

## §5 Sources NOT yet in this database (Mk.II additions expected)

The following are not yet entries here because no TSMC-specific
recent disclosure has landed against them at Mk.I:

- TSMC Annual Report 2025 (not yet published as of 2026-05-12;
  expected 2026-Q2)
- TSMC Symposium 2026 keynote (deck not yet published; expected
  2026-Q2)
- IEDM 2026 proceedings (publication December 2026)
- VLSI Symposium 2026 proceedings (publication June 2026)
- AZ Fab 21 Phase-1 first-100-customer-tape-out disclosure (event
  not yet announced)
- ESMC Dresden HVM-readiness public update (expected 2027-Q4)

These will be added as `SRC-TSMC-019+` once a TSMC-specific document
is publicly available against any of them.

---

**Provenance**: Citation database derived 1:1 from `tsmc.md` §15.
Zero new external claims. Archive URLs are speculative Wayback Machine
templates for snapshots that may or may not exist at access date; the
canonical mirrors are the publisher sites themselves. **No NDA, no
proprietary PDK content, no TSMC-internal data, no SOW-protected
partnership detail.** Korean editorial tone (in `tsmc.md`) is heritage
framing only — not commercial alignment, not partnership claim.
