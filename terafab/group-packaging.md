<!-- @absorbed: 2026-05-11 -->
<!-- @parent: terafab/terafab.md (§1, §3, §4, §11) -->
<!-- @scope: per-group decomposition of the Terafab meta-domain envelope -->
---
type: group-integration
parent: terafab/terafab.md
group: packaging
verb_count: 6
terafab_tier: T2
maturity_gap: +3
---

# Group D — packaging × Terafab Meta-Domain

> Per-group decomposition of how the **packaging** group (6 verbs) sits
> inside the Terafab meta-domain envelope. Mirrors `terafab.md` §1, §3, §4,
> §11; honors `hexa.toml` `[modules.packaging]`.

## §1 Why this group is absorbed by Terafab

The **packaging group** is the second-most load-bearing claim in Terafab's
announce. Per `terafab.md` §1, packaging is "normally owned by ASE / Amkor
/ TSMC CoWoS" — and Terafab's announce claims **in-house** ownership of
the entire OSAT stack, *plus* in-fab DRAM/HBM production. The phrase "no
inbound shipping" in `terafab.md` §5 (T2) is the operational signature: if
memory and packaging happen at the same TX site as logic fab, the one-roof
claim closes; if either is outsourced, F-TERAFAB-2 fires.

This places packaging at **T2 memory + advanced packaging** in
`terafab.md` §4, owned by Tesla-ops at the prototype TX site. With 6
verbs (the largest group by verb count), packaging carries the most
internal surface area for the F-TERAFAB-2 falsifier to hit. The +3
maturity gap matches process — these two groups are the heaviest lifts.

## §2 Verb-by-verb mapping

| Verb | Scope (from README) | Terafab claim | Falsifier | Honest verdict |
|---|---|---|---|---|
| `packaging` | Conventional packaging (FCBGA / wirebond) | In-fab conventional packaging line (no Amkor/ASE handoff) | F-TERAFAB-2 (one-roof scope) | speculative — captive FCBGA at 2 nm-class volume has no greenfield precedent |
| `advanced_packaging` | CoWoS / FOPLP / chiplet integration | In-fab CoWoS-class chiplet integration; displaces TSMC CoWoS | F-TERAFAB-2 (one-roof scope) | **highly speculative** — CoWoS is TSMC's deepest moat; greenfield reproduction is years out |
| `chip_3d` | 3D-IC stacking (TSV / hybrid bonding) | In-fab 3D-IC stacking + hybrid bonding | F-TERAFAB-2; F-TERAFAB-5 (1 TW thermal) | speculative — hybrid bonding maturity is tier-1 only at TSMC SoIC + Intel Foveros |
| `hbm` | HBM stack spec (HBM3 / HBM4 / HBM-PIM) | In-fab DRAM/HBM line (per `terafab.md` §1 "memory production"); no Hynix/Samsung/Micron shipping | F-TERAFAB-2 (direct, primary) | **most speculative** — Terafab claims in-fab DRAM, but no DRAM expertise has been disclosed |
| `interconnect` | On-package + off-package interconnect | UCIe-class on-package + chiplet die-to-die for AI5/Optimus | (none direct) | clean fit at industry-standard maturity |
| `sc` | SC-chip substrate (depended on by hexa-rtsc) | Substrate carrier for orbital SKU mass-budget package | F-TERAFAB-4 (orbital economics) | partial fit — SC substrate concept aligns with orbital "no FR-4" requirement (per `terafab.md` §4) |

## §3 Maturity gap analysis

From `terafab.md` §3:

| metric | value |
|---|---|
| current 🛸 (group-wide) | 🛸7 |
| required 🛸 by Terafab | 🛸10 |
| aggregate gap | **+3 (largest in the meta-domain, tied with process)** |

Per-verb honest read:

| verb | current 🛸 (est.) | gap to 🛸10 | bottleneck note |
|---|---|---|---|
| `packaging` | 🛸8 | +2 | mature FCBGA technology; weakest individual gap |
| `advanced_packaging` | 🛸6 | +4 | CoWoS-class capability is TSMC-only at production maturity |
| `chip_3d` | 🛸6 | +4 | hybrid bonding remains a 2-foundry market (TSMC + Intel) |
| `hbm` | 🛸4 | +6 | **biggest gap in entire packaging group** — no Tesla/xAI DRAM heritage exists |
| `interconnect` | 🛸8 | +2 | UCIe is industry-standard; weak gap |
| `sc` | 🛸6 | +4 | substrate carriers are mainstream; orbital qual is the lift |

**Bottleneck**: `hbm`. Terafab's "memory + logic same roof" claim (per
`terafab.md` §1 Korean comparator table) requires standing up a captive
DRAM line. SK Hynix and Samsung each took *decades* to reach HBM4-class
maturity; Micron joined the HBM market in 2024 with significant catch-up
cost. No public Terafab disclosure has named a DRAM technology partner,
which makes F-TERAFAB-2 (one-roof memory integration) the binding test.

## §4 Cross-link to falsifiers

- **F-TERAFAB-2** (one-roof memory integration) — **direct, primary**:
  this group is the entire surface F-TERAFAB-2 tests. If memory ships in
  by Mk.III, F-TERAFAB-2 fires.
- **F-TERAFAB-5** (1 TW delivered) — **direct**: packaging thermal envelope
  + interconnect bandwidth gate the deliverable.
- **F-TERAFAB-4** (orbital economics) — **direct on `sc`**: orbital SKU
  requires mass-budget package optimization (no FR-4 substrate).
- **F-TERAFAB-1** (capex stability) — indirect: packaging tools (TCB,
  hybrid bonders, FOPLP lines) are 7-figure capex per tool.

## §5 Korean fab heritage comparator

| verb | Korean-fab equivalent | heritage tone |
|---|---|---|
| `packaging` | Samsung TSP (Test & System Package) | mainstream Korean OSAT capability |
| `advanced_packaging` | Samsung X-Cube + I-Cube | direct comparator to TSMC CoWoS; Korean alternative reference |
| `chip_3d` | SK Hynix hybrid bonding (announced 2024) + Samsung 3D Ball stacking | tier-1 Korean 3D-IC heritage |
| `hbm` | **SK Hynix HBM4 + Samsung HBM3E** (per `terafab.md` §2 Korean comparator) | **the dominant global HBM heritage** — Korean fabs hold ~80% of HBM market |
| `interconnect` | Samsung UCIe contributions | mainstream Korean interconnect work |
| `sc` | SK Hynix substrate carrier IP | mainstream substrate-carrier maturity |

The HBM verb has the strongest Korean-fab heritage anchor in the entire
hexa-chip framework. SK Hynix M16 (Icheon) is the global HBM volume leader;
any honest comparison of Terafab's "in-fab HBM" claim has to start there.
The hexa-chip framework's heritage tone applies most cleanly here.

## §6 Honest caveats

- **`hbm` is the most speculative single verb in the packaging group.**
  No public Terafab disclosure names a DRAM technology partner. The "in-fab
  memory production" claim is the heart of F-TERAFAB-2.
- **`advanced_packaging` ↔ CoWoS displacement is highly speculative.**
  CoWoS is TSMC's deepest competitive moat; greenfield reproduction has no
  historical precedent.
- **`sc` ↔ orbital fit is genuine.** The orbital SKU's no-FR-4 mass-budget
  requirement aligns with the SC-substrate concept; this is one of the few
  packaging-group mappings with a clean rationale.
- **Meta-domain absorption does NOT change the verb's spec or maturity.**
  All 6 packaging verbs remain v1.0.0 spec-first; sandboxes assert lattice
  arithmetic only.
- **Zero NDA / proprietary content**: SK Hynix HBM and Samsung X-Cube
  references are sourced from public industry coverage only; no Korean-fab
  internal documents invoked.

## §7 Cross-link

- Parent: [`terafab/terafab.md`](./terafab.md) §1 (group ownership), §2
  (Korean-fab comparator), §3 (REQUIRES), §4 (T2 STRUCT), §5 (T2 memory +
  packaging wafer flow), §10 (RISKS), §11 (DEPENDENCIES)
- Verb sources: [`../packaging/`](../packaging/),
  [`../advanced_packaging/`](../advanced_packaging/),
  [`../chip_3d/`](../chip_3d/), [`../hbm/`](../hbm/),
  [`../interconnect/`](../interconnect/), [`../sc/`](../sc/)
- Korean comparator: `terafab.md` §2 (Pyeongtaek P3 + M16 row);
  [`../exynos/exynos.md`](../exynos/exynos.md) §4 K3
- Cross-link consumer: `hexa-rtsc` (depends on `sc/`)
- Manifest: `hexa.toml` `[modules.packaging]` (6 verbs) +
  `[meta_domains.terafab]` (envelope)

---

**Provenance**: Per-group decomposition authored 2026-05-11 alongside
`terafab.md`. All Terafab claims sourced from `terafab.md` §15 public
references. No NDA / proprietary content invoked. Verb scopes copied
verbatim from `README.md` §Verbs.
