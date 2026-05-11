<!-- @absorbed: 2026-05-11 -->
<!-- @parent: terafab/terafab.md (§1, §3, §4, §11) -->
<!-- @scope: per-group decomposition of the Terafab meta-domain envelope -->
---
type: group-integration
parent: terafab/terafab.md
group: accelerator
verb_count: 8
terafab_tier: T3
maturity_gap: +2
---

# Group E — accelerator × Terafab Meta-Domain

> Per-group decomposition of how the **accelerator** group (8 verbs — the
> largest verb count of any group) sits inside the Terafab meta-domain
> envelope. Mirrors `terafab.md` §1, §3, §4, §11; honors `hexa.toml`
> `[modules.accelerator]`.

## §1 Why this group is absorbed by Terafab

The **accelerator group** is Terafab's *product surface* — what comes out
of the fab and into the customer's hands (or orbital data center). Per
`terafab.md` §1, accelerators are "normally owned by NVIDIA / Cerebras /
Tesla" and Terafab claims **in-house** ownership of the entire accelerator
stack: Tesla AI5 SoC for vehicle/Optimus inference (Line A, 20% of
capacity) and space-hardened orbital training/inference accelerators
(Line B, 80% of capacity).

This places accelerator at **T3 product** in `terafab.md` §4, owned by
Tesla and shipped via the 80%/20% orbital/ground split. With 8 verbs
(the largest group), this is also the surface where the n=6 lattice
projection has the most candidate fits — `npu_n6`, `hexa_pim`, `hexa_3d`,
`hexa_wafer` are all explicitly n=6-organised verbs whose mapping to
Terafab's product line is **speculative-by-design**.

## §2 Verb-by-verb mapping

| Verb | Scope (from README) | Terafab claim | Falsifier | Honest verdict |
|---|---|---|---|---|
| `npu_n6` | n=6 NPU IP (σ=12 systolic lanes / τ=4 dataflow) | Tesla AI5 NPU block + Optimus inference NPU | F-TERAFAB-7 (n=6 lattice projection) | **speculative** — Tesla AI5 NPU lineage is Dojo-derived; no n=6 claim disclosed |
| `pim` | Processing-in-memory (DRAM-PIM / SRAM-PIM) | In-fab PIM macros for orbital training memory | F-TERAFAB-2 (one-roof memory) | speculative — PIM in fab depends on captive DRAM line landing |
| `photonic` | Silicon photonic / co-packaged optics | Co-packaged optics for Starlink-V3 inter-satellite links | F-TERAFAB-4 (orbital economics) | partial fit — orbital DC inter-sat optical is plausible; not Terafab-disclosed |
| `accel` | Generic hexa-accelerator IP framework | IP framework underlying AI5 + Optimus + orbital SKUs | (none direct) | clean fit — generic IP-framework verb maps to Terafab's broad accelerator scope |
| `asic` | Hexa-ASIC tape-out reference flow | Optimus humanoid inference ASIC tape-out (Mk.III window 2027~2029) | F-TERAFAB-1 (capex stability) | clean fit — Optimus ASIC is on the public roadmap |
| `hexa_pim` | Hexa-PIM (n=6 organised PIM macros) | n=6 PIM macro reference for orbital training | F-TERAFAB-7 | **speculative** — n=6 PIM organisation is hexa-chip-internal |
| `hexa_3d` | Hexa-3D stacking convention | 3D stacking convention for orbital mass-budget SKUs | F-TERAFAB-7 | **speculative** — n=6 3D convention is hexa-chip-internal |
| `hexa_wafer` | Hexa-wafer-level integration | Wafer-level integration reference for 1 M w/m wafer flow | F-TERAFAB-7 | **speculative** — n=6 wafer-level convention is hexa-chip-internal |

## §3 Maturity gap analysis

From `terafab.md` §3:

| metric | value |
|---|---|
| current 🛸 (group-wide) | 🛸7 |
| required 🛸 by Terafab | 🛸9 |
| aggregate gap | +2 |

Per-verb honest read:

| verb | current 🛸 (est.) | gap to 🛸9 | bottleneck note |
|---|---|---|---|
| `npu_n6` | 🛸6 | +3 | n=6 NPU is research-tier; Tesla NPU lineage is Dojo-derived (not n=6) |
| `pim` | 🛸6 | +3 | PIM is bench-tier in DRAM (Samsung HBM-PIM), early in SRAM |
| `photonic` | 🛸6 | +3 | silicon photonics is production at Intel + Lightmatter; not yet at AI-accel scale |
| `accel` | 🛸7 | +2 | generic IP framework matures with industry; weak gap |
| `asic` | 🛸8 | +1 | mainstream ASIC tape-out flow; weakest gap |
| `hexa_pim` | 🛸5 | +4 | n=6 organised PIM is research-only |
| `hexa_3d` | 🛸5 | +4 | n=6 3D convention is hexa-chip-internal organising convention only |
| `hexa_wafer` | 🛸5 | +4 | n=6 wafer-level integration is hexa-chip-internal |

**Bottleneck**: the four `hexa_*` n=6-organised verbs (`npu_n6` plus
`hexa_pim` / `hexa_3d` / `hexa_wafer`). All four sit at 🛸5–6 and are
hexa-chip-internal organising convention, not Terafab disclosures. The
mainstream verbs (`asic`, `accel`, `photonic`, `pim`) clear the bar at
or near industry maturity.

## §4 Cross-link to falsifiers

- **F-TERAFAB-7** (n=6 lattice projection) — **direct, primary**: this
  group has the highest concentration of n=6-organised verbs (4 of 8).
  Currently p ≈ 0.86 (per `terafab.md` §7.C); Mk.II reformulation pending.
- **F-TERAFAB-2** (one-roof memory) — direct on `pim` and `hexa_pim`:
  PIM requires the captive DRAM line.
- **F-TERAFAB-4** (orbital economics) — direct on `photonic` and `accel`:
  orbital SKU economics gate Line B (80% of capacity).
- **F-TERAFAB-5** (1 TW delivered) — **direct**: this group's product
  output *is* the TW deliverable.
- **F-TERAFAB-1** (capex stability) — indirect on `asic`: Optimus ASIC
  tape-out cost.

## §5 Korean fab heritage comparator

| verb | Korean-fab equivalent | heritage tone |
|---|---|---|
| `npu_n6` | Samsung Exynos NPU (`exynos/exynos.md` §4 L2) | mainstream Korean NPU heritage; HEXA-EXYNOS NPU lineage is the canonical reference |
| `pim` | **Samsung HBM-PIM (announced 2021, shipped 2023)** | direct Korean comparator — Samsung is the global HBM-PIM leader |
| `photonic` | Samsung silicon photonics R&D (academic-tier) | weak Korean heritage; Intel + Lightmatter dominate |
| `accel` | Samsung Foundry IP framework | mainstream Korean accelerator IP maturity |
| `asic` | Samsung Foundry MPW + tape-out service | mainstream Korean ASIC tape-out heritage |
| `hexa_pim` | extension of Samsung HBM-PIM with n=6 organisation | speculative — Korean HBM-PIM does not adopt n=6 |
| `hexa_3d` | extension of Samsung X-Cube with n=6 organisation | speculative — Korean 3D-IC does not adopt n=6 |
| `hexa_wafer` | (no direct Korean equivalent) | hexa-chip-internal organising convention |

Samsung HBM-PIM is the strongest Korean-fab heritage anchor for this
group's `pim` verb. The four `hexa_*` n=6-organised verbs lack direct
Korean comparators because the n=6 organising convention is hexa-chip-
internal.

## §6 Honest caveats

- **The 4 `hexa_*` verbs (`npu_n6`, `hexa_pim`, `hexa_3d`, `hexa_wafer`)
  are speculative-by-design.** They project the n=6 invariant onto
  Terafab's product line; Tesla / xAI have not announced n=6 adoption.
  This is hexa-chip's diagnostic tool, not a Terafab claim.
- **`asic` ↔ Optimus is the cleanest mapping in this group.** Optimus
  inference ASIC is on the public Tesla roadmap; tape-out window
  (Mk.III, 2027~2029) is consistent.
- **`photonic` ↔ orbital inter-sat is plausible, not announced.** Starlink-
  V3 inter-satellite optical links are public, but Terafab has not
  specifically called out co-packaged optics for this purpose.
- **Meta-domain absorption does NOT change the verb's spec or maturity.**
  All 8 accelerator verbs remain v1.0.0 spec-first; sandboxes assert
  lattice arithmetic only.
- **Zero NDA / proprietary content**: Tesla AI5 + Optimus + Starlink-V3
  references are sourced from `terafab.md` §15 public references only.

## §7 Cross-link

- Parent: [`terafab/terafab.md`](./terafab.md) §1 (group ownership), §3
  (REQUIRES), §4 (T3 STRUCT + Line A/B product table), §5 (T3 product
  flow + Egyptian energy projection), §10 (RISKS), §11 (DEPENDENCIES)
- Verb sources: [`../npu_n6/`](../npu_n6/), [`../pim/`](../pim/),
  [`../photonic/`](../photonic/), [`../accel/`](../accel/),
  [`../asic/`](../asic/), [`../hexa_pim/`](../hexa_pim/),
  [`../hexa_3d/`](../hexa_3d/), [`../hexa_wafer/`](../hexa_wafer/)
- Korean comparator: [`../exynos/exynos.md`](../exynos/exynos.md) §4 L2
- Cross-link consumer: `hexa-codex` (depends on `npu_n6/` + `accel/` +
  `pim/` per `README.md` §Cross-link)
- Manifest: `hexa.toml` `[modules.accelerator]` (8 verbs) +
  `[meta_domains.terafab]` (envelope)

---

**Provenance**: Per-group decomposition authored 2026-05-11 alongside
`terafab.md`. All Terafab claims sourced from `terafab.md` §15 public
references. No NDA / proprietary content invoked. Verb scopes copied
verbatim from `README.md` §Verbs.
