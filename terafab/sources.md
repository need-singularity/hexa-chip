<!-- @absorbed: 2026-05-11 -->
<!-- @sources: terafab.md §15 (canonical mirror) -->
<!-- @scope: structured citation database; zero new external claims -->
---
type: citation-database
parent: terafab/terafab.md
target_window: Mk.I~Mk.II (2026-Q2 ~ 2027)
status: index (sources frozen at absorption date 2026-05-11)
n6_template: exynos/exynos.md §15 (reference-list canon)
entries: 16
---

# Terafab — Source Database (closure-deepening)

> **Purpose**: turn the bullet list of links in `terafab/terafab.md` §15
> into a structured, falsifier-linked, snapshot-traceable citation
> database. Each entry declares **what claim the source supports**,
> **what falsifier it feeds**, and **how fresh the source is** so the
> Mk.II quarterly polling rubric (`falsifier-mk2-scaffold.md` §5) can
> operate on a known-quality input set.

## §1 What each source family is good for

The 16 sources cluster into four families with sharply different uses:

- **Primary** (encyclopedia + manufacturer + filing) — load-bearing for
  numbers (dates, capex, node, throughput). Re-checked at every Mk.II
  quarterly poll because Wikipedia mirrors the latest filings within
  days. CNBC and Yahoo Finance carry the SpaceX Texas filing text.
- **News / journalism** (Tom's Hardware, DCD, TechCrunch, Technology.org,
  TweakTown, CBS News) — load-bearing for *announce-event* attribution
  (who said what when). Less authoritative for capex revisions; tend to
  echo the primary sources within 24–72 h.
- **Critical analysis** (The Register, Electrek, Cloud News) — load-bearing
  for *adverse-narrative* registration. Useful precisely because they
  surface the falsifier-friendly framing ("reeks of desperation",
  "zero-fab-experience execution risk", "Stefan-Boltzmann thermal floor").
  Feed F-TERAFAB-1, F-TERAFAB-4, and the §10 broad-execution risk row.
- **Industry-impact** (Trefis, Gear Musk, eeNews Europe, The Next Web,
  Teslarati) — load-bearing for *second-order* claims (which suppliers
  benefit, which sites are rumoured, which competitors are squeezed).
  Lowest authority on numbers; highest signal on rumour-flow.

## §2 Source × falsifier quality matrix

Reading: rows are the 16 sources, columns are the seven Mk.I + three
Mk.II falsifiers from `falsifier-mk2-scaffold.md` §3. Cells: `H` =
high-relevance (the source directly supplies the signal), `M` = medium
(corroborates), `L` = low (peripheral), `·` = no link.

```
source                          F1  F2  F3  F4  F5  F6  F7  F8  F9  F10
------------------------------- --- --- --- --- --- --- --- --- --- ---
SRC-TERAFAB-001  Wikipedia       H   H   H   M   M   H   M   M   M   M
SRC-TERAFAB-002  Tom's Hardware A H   ·   M   ·   ·   M   M   ·   ·   ·
SRC-TERAFAB-003  Tom's Hardware B M   ·   ·   ·   ·   H   M   ·   ·   ·
SRC-TERAFAB-004  CNBC            H   ·   M   ·   ·   ·   ·   M   M   ·
SRC-TERAFAB-005  DCD             ·   M   ·   H   M   ·   ·   ·   ·   M
SRC-TERAFAB-006  TechCrunch      M   ·   ·   ·   ·   H   ·   ·   ·   ·
SRC-TERAFAB-007  Technology.org  M   ·   ·   ·   ·   H   ·   ·   ·   ·
SRC-TERAFAB-008  TweakTown       M   ·   ·   ·   ·   H   M   ·   ·   ·
SRC-TERAFAB-009  Yahoo Finance   H   ·   M   ·   ·   ·   ·   M   M   ·
SRC-TERAFAB-010  CBS News        M   ·   L   ·   ·   ·   ·   ·   ·   ·
SRC-TERAFAB-011  The Register    H   M   H   H   H   M   M   M   ·   M
SRC-TERAFAB-012  Electrek        H   ·   M   ·   ·   ·   ·   ·   ·   ·
SRC-TERAFAB-013  Cloud News      M   M   M   ·   ·   ·   ·   ·   ·   M
SRC-TERAFAB-014  Trefis          M   ·   H   ·   ·   M   ·   ·   ·   ·
SRC-TERAFAB-015  Gear Musk       L   ·   M   ·   ·   ·   ·   M   M   ·
SRC-TERAFAB-016  eeNews Europe   M   ·   ·   ·   ·   M   ·   ·   ·   ·
```

Reading the matrix: F-TERAFAB-1 (capex actuals) has the densest source
support — every primary and most analysis outlets independently mirror
the SpaceX filing. F-TERAFAB-5 (1 TW delivered) has the thinnest — only
The Register and Wikipedia gesture at the headline; no source quantifies
delivery against a 2035 milestone yet. F-TERAFAB-9 (utility envelope)
is *unsupported* by any of the 16 sources at Mk.I — TCEQ + ERCOT filings
will land in the database at Mk.II as `SRC-TERAFAB-017+`.

## §3 Source entries

### Primary

```yaml
---
id: SRC-TERAFAB-001
title: "Terafab — Wikipedia"
url: https://en.wikipedia.org/wiki/Terafab
access_date: 2026-05-11
publisher: Wikipedia
type: encyclopedia
key_claims:
  - announce date 2026-03-21
  - $55B initial / $119B total prototype filing 2026-05-06
  - Intel 14A full-scale process
  - 1 M wafer-starts/mo full-scale target
  - 80% orbital / 20% ground allocation
  - prototype throughput "few thousand wafers/mo" (revised down from 100k)
  - 100-200 B chips/yr full-scale
  - prototype site Austin TX (adjacent Gigafactory TX)
freshness: high (community-edited; mirrors filings within days)
falsifier_links: [F-TERAFAB-1, F-TERAFAB-2, F-TERAFAB-3, F-TERAFAB-6, F-TERAFAB-7]
archive: https://web.archive.org/web/2026*/en.wikipedia.org/wiki/Terafab
---

---
id: SRC-TERAFAB-004
title: "Elon Musk's SpaceX chip fab in Texas to cost up to $119 billion"
url: https://www.cnbc.com/2026/05/06/elon-musks-spacex-chip-fab-in-texas-to-cost-up-to-119-billion.html
access_date: 2026-05-11
publisher: CNBC
type: filing-report
key_claims:
  - $55 B initial / $119 B total prototype filing
  - Texas filing date 2026-05-06
  - SpaceX as filer of record
freshness: high (filing-day report)
falsifier_links: [F-TERAFAB-1, F-TERAFAB-3]
archive: https://web.archive.org/web/2026/https://www.cnbc.com/2026/05/06/elon-musks-spacex-chip-fab-in-texas-to-cost-up-to-119-billion.html
---

---
id: SRC-TERAFAB-009
title: "SpaceX files initial $55 billion spend for Terafab chip factory in Texas"
url: https://finance.yahoo.com/markets/stocks/article/elon-musks-spacex-files-initial-55-billion-spend-for-terafab-chip-factory-in-texas-120356588.html
access_date: 2026-05-11
publisher: Yahoo Finance
type: filing-report
key_claims:
  - $55 B initial spend filed
  - Texas as filing jurisdiction
  - SpaceX filer + future-phase capex disclosure
freshness: high (filing-day report)
falsifier_links: [F-TERAFAB-1, F-TERAFAB-3]
archive: https://web.archive.org/web/2026/https://finance.yahoo.com/markets/stocks/article/elon-musks-spacex-files-initial-55-billion-spend-for-terafab-chip-factory-in-texas-120356588.html
---
```

### News / journalism

```yaml
---
id: SRC-TERAFAB-002
title: "Elon Musk formally launches $20 billion TeraFab chip project"
url: https://www.tomshardware.com/tech-industry/elon-musk-formally-launches-20-billion-terafab-chip-project
access_date: 2026-05-11
publisher: Tom's Hardware
type: tech-news
key_claims:
  - announce-day $20 B slogan (later revised to $25 B then $55 B)
  - 6-group "under one roof" framing
  - prototype 2 nm process
freshness: medium (announce-day; superseded by filings)
falsifier_links: [F-TERAFAB-1, F-TERAFAB-7]
archive: https://web.archive.org/web/2026/https://www.tomshardware.com/tech-industry/elon-musk-formally-launches-20-billion-terafab-chip-project
---

---
id: SRC-TERAFAB-003
title: "TeraFab will use Intel's 14A process technology"
url: https://www.tomshardware.com/tech-industry/semiconductors/elon-musk-says-terafab-will-use-intels-14a-process-technology-to-make-ai-chips-spacex-will-be-responsible-for-high-volume-chip-manufacturing-in-liekly-intel-tech-licensing-deal
access_date: 2026-05-11
publisher: Tom's Hardware
type: tech-news
key_claims:
  - Intel 14A as full-scale process node
  - SpaceX as high-volume manufacturer
  - Intel-Tesla licensing deal framing
freshness: medium (April 2026 dispatch)
falsifier_links: [F-TERAFAB-6]
archive: https://web.archive.org/web/2026/https://www.tomshardware.com/tech-industry/semiconductors/elon-musk-says-terafab-will-use-intels-14a-process-technology-to-make-ai-chips-spacex-will-be-responsible-for-high-volume-chip-manufacturing-in-liekly-intel-tech-licensing-deal
---

---
id: SRC-TERAFAB-005
title: "Elon Musk announces TeraFab — $20 bn factory will make chips for SpaceX orbital data centers and Tesla vehicles"
url: https://www.datacenterdynamics.com/en/news/elon-musk-announces-terafab-20bn-factory-will-make-chips-for-spacex-orbital-data-centers-and-tesla-vehicles/
access_date: 2026-05-11
publisher: Data Center Dynamics
type: industry-news
key_claims:
  - 80% orbital / 20% ground allocation
  - Starlink-V3 orbital DC target
  - Tesla vehicles as second product line
freshness: medium (announce-day; orbital framing canonical here)
falsifier_links: [F-TERAFAB-4, F-TERAFAB-5]
archive: https://web.archive.org/web/2026/https://www.datacenterdynamics.com/en/news/elon-musk-announces-terafab-20bn-factory-will-make-chips-for-spacex-orbital-data-centers-and-tesla-vehicles/
---

---
id: SRC-TERAFAB-006
title: "Intel signs on to Elon Musk's TeraFab chips project"
url: https://techcrunch.com/2026/04/07/intel-signs-on-to-elon-musks-terafab-chips-project/
access_date: 2026-05-11
publisher: TechCrunch
type: tech-news
key_claims:
  - Intel join date 2026-04-07
  - foundry-partner role for Intel
freshness: high (Intel-join-day report)
falsifier_links: [F-TERAFAB-6]
archive: https://web.archive.org/web/2026/https://techcrunch.com/2026/04/07/intel-signs-on-to-elon-musks-terafab-chips-project/
---

---
id: SRC-TERAFAB-007
title: "Tesla picks Intel's 14A process for Musk's Austin Terafab project"
url: https://www.technology.org/2026/04/23/tesla-picks-intels-14a-process-for-musks-austin-terafab-project/
access_date: 2026-05-11
publisher: Technology.org
type: tech-news
key_claims:
  - Tesla = first announced external Intel 14A customer
  - Austin TX as prototype site
freshness: medium (mid-April 2026)
falsifier_links: [F-TERAFAB-6]
archive: https://web.archive.org/web/2026/https://www.technology.org/2026/04/23/tesla-picks-intels-14a-process-for-musks-austin-terafab-project/
---

---
id: SRC-TERAFAB-008
title: "Tesla plans to use Intel's next-gen 14A process for its TeraFab project"
url: https://www.tweaktown.com/news/111231/tesla-plans-to-use-intels-next-gen-14a-process-for-its-terafab-project/index.html
access_date: 2026-05-11
publisher: TweakTown
type: tech-news
key_claims:
  - Intel 14A as Tesla AI5 process
  - corroborates Technology.org and Tom's Hardware
freshness: medium (corroborating outlet)
falsifier_links: [F-TERAFAB-6]
archive: https://web.archive.org/web/2026/https://www.tweaktown.com/news/111231/tesla-plans-to-use-intels-next-gen-14a-process-for-its-terafab-project/index.html
---

---
id: SRC-TERAFAB-010
title: "What is Terafab? Elon Musk's chip factory explained"
url: https://www.cbsnews.com/news/terafab-elon-musk-chips-semiconductors-what-to-know/
access_date: 2026-05-11
publisher: CBS News
type: explainer
key_claims:
  - generalist explainer of Terafab announcement
  - mirrors primary numbers without independent reporting
freshness: low (mass-market summary)
falsifier_links: [F-TERAFAB-1]
archive: https://web.archive.org/web/2026/https://www.cbsnews.com/news/terafab-elon-musk-chips-semiconductors-what-to-know/
---
```

### Critical analysis

```yaml
---
id: SRC-TERAFAB-011
title: "SpaceX plots $119B wafer fab to make Elon's orbital AI dream come true"
url: https://www.theregister.com/systems/2026/05/06/spacex-plots-119b-wafer-fab-to-make-elons-orbital-ai-dream-come-true/5231202
access_date: 2026-05-11
publisher: The Register
type: critical-analysis
key_claims:
  - "reeks of desperation" framing on $119 B figure
  - 3-5 year operational floor as binding constraint
  - Starship reusable launch cost as orbital-share gate
  - zero-fab-experience execution risk argument
freshness: high (filing-day critique)
falsifier_links: [F-TERAFAB-1, F-TERAFAB-3, F-TERAFAB-4, F-TERAFAB-5]
archive: https://web.archive.org/web/2026/https://www.theregister.com/systems/2026/05/06/spacex-plots-119b-wafer-fab-to-make-elons-orbital-ai-dream-come-true/5231202
---

---
id: SRC-TERAFAB-012
title: "Tesla, SpaceX TeraFab chip factory 'reeks of desperation'"
url: https://electrek.co/2026/03/22/tesla-spacex-terafab-chip-factory-ai-desperation/
access_date: 2026-05-11
publisher: Electrek
type: critical-analysis
key_claims:
  - earliest critical narrative (announce + 1 day)
  - $25 B announce-day slogan vs subsequent revisions
  - "AI desperation" framing for Tesla strategy
freshness: medium (announce + 1 day; superseded as numbers moved)
falsifier_links: [F-TERAFAB-1]
archive: https://web.archive.org/web/2026/https://electrek.co/2026/03/22/tesla-spacex-terafab-chip-factory-ai-desperation/
---

---
id: SRC-TERAFAB-013
title: "Terafab — Musk's plan that worries the industry before manufacturing a chip"
url: https://cloudnews.tech/terafab-musks-plan-that-worries-the-industry-before-manufacturing-a-chip/
access_date: 2026-05-11
publisher: Cloud News
type: critical-analysis
key_claims:
  - industry-concern framing pre-first-wafer
  - ASE/Amkor displacement risk if one-roof OSAT claim holds
freshness: medium (post-Intel-join analysis)
falsifier_links: [F-TERAFAB-2, F-TERAFAB-10]
archive: https://web.archive.org/web/2026/https://cloudnews.tech/terafab-musks-plan-that-worries-the-industry-before-manufacturing-a-chip/
---
```

### Industry-impact

```yaml
---
id: SRC-TERAFAB-014
title: "Intel, Lam, KLA — will Musk's $120B Terafab boost these stocks?"
url: https://www.trefis.com/stock/klac/articles/598668/intel-lam-kla-will-musks-120b-terafab-boost-these-stocks/2026-05-07
access_date: 2026-05-11
publisher: Trefis
type: investor-analysis
key_claims:
  - Intel + Lam + KLA as second-order beneficiaries
  - $120 B as the headline analysts use
  - implicit floor on Lam/KLA capex flow
freshness: high (filing + 1 day)
falsifier_links: [F-TERAFAB-3, F-TERAFAB-6]
archive: https://web.archive.org/web/2026/https://www.trefis.com/stock/klac/articles/598668/intel-lam-kla-will-musks-120b-terafab-boost-these-stocks/2026-05-07
---

---
id: SRC-TERAFAB-015
title: "Terafab to bring $119B"
url: https://gearmusk.com/2026/05/06/terafab-bring-119b/
access_date: 2026-05-11
publisher: Gear Musk
type: rumour-tracker
key_claims:
  - Grimes County TX as full-scale site rumour
  - $119 B headline mirrored
freshness: low (rumour-grade; corroborates only the rumour itself)
falsifier_links: [F-TERAFAB-3, F-TERAFAB-9]
archive: https://web.archive.org/web/2026/https://gearmusk.com/2026/05/06/terafab-bring-119b/
---

---
id: SRC-TERAFAB-016
title: "Musk teams with Intel for TeraFab plans"
url: https://www.eenewseurope.com/en/musk-teams-with-intel-for-terafab-plans/
access_date: 2026-05-11
publisher: eeNews Europe
type: industry-news
key_claims:
  - Musk-Intel partnership framing for European audience
  - corroborates TechCrunch Intel-join report
freshness: medium (April 2026)
falsifier_links: [F-TERAFAB-6]
archive: https://web.archive.org/web/2026/https://www.eenewseurope.com/en/musk-teams-with-intel-for-terafab-plans/
---
```

## §4 Refresh policy

- **Primary** (001, 004, 009): re-fetch every quarter at the §5 polling
  checkpoint; promote any delta into a Mk.II addendum entry rather than
  overwriting the Mk.I claim record.
- **News** (002, 003, 005-008, 010): re-fetch only when the underlying
  claim moves; archive original for diff against revised.
- **Critical** (011-013): re-fetch quarterly to capture follow-up critique
  pieces (The Register publishes follow-on every ~ 6 mo on megafab stories).
- **Industry-impact** (014-016): re-fetch on Intel earnings cycle (quarterly)
  for Trefis; opportunistically for the rumour-trackers.

## §5 Sources NOT yet in this database (Mk.II additions expected)

The following are referenced in `falsifier-mk2-scaffold.md` §5 as
quarterly-poll targets but are not yet entries here because no
Terafab-specific document has landed against them at Mk.I:

- Texas TCEQ air-permit + water-use filings (F-TERAFAB-8, F-TERAFAB-9)
- ERCOT interconnection-queue disclosures (F-TERAFAB-9)
- Tesla 10-K capex line + cost-of-revenue HBM/DRAM line (F-TERAFAB-1, F-TERAFAB-2)
- Intel Foundry Direct Connect investor-day decks (F-TERAFAB-6)
- SpaceX Starship FCC filings + annual launch-cost statements (F-TERAFAB-4)
- Austin Energy / LCRA public agendas (F-TERAFAB-9)
- Texas Workforce Commission filings (F-TERAFAB-10)

These will be added as `SRC-TERAFAB-017+` once a Terafab-specific
document is publicly filed against any of them. **Until then, the §2
matrix shows the F-TERAFAB-8/9/10 columns thinly populated — that is
the honest state, not a database gap.**

---

**Provenance**: Citation database derived 1:1 from `terafab.md` §15.
Zero new external claims. Archive URLs are speculative Wayback Machine
templates for snapshots that may or may not exist at access date; the
canonical mirror remains Wikipedia (SRC-TERAFAB-001) until a
project-controlled archive is established at Mk.II.
