<!-- @absorbed: 2026-05-11 -->
<!-- @parent: terafab/terafab.md (§1, §3, §4, §11) -->
<!-- @scope: per-group decomposition of the Terafab meta-domain envelope -->
---
type: group-integration
parent: terafab/terafab.md
group: architecture
verb_count: 3
terafab_tier: T0
maturity_gap: +2
---

# Group A — architecture × Terafab Meta-Domain

> Per-group decomposition of how the **architecture** group (3 verbs) sits
> inside the Terafab meta-domain envelope. Mirrors `terafab.md` §1, §3, §4,
> §11; honors `hexa.toml` `[modules.architecture]`.

## §1 Why this group is absorbed by Terafab

Terafab's meta-domain claim (per `terafab.md` §1) is that "every hexa-chip
group runs under one roof, on one wafer flow, owned by one entity." The
**architecture group** is the *first* tier of that envelope — it answers
the "what to build" question that gates every downstream group. In
Terafab's stated topology, architecture is owned by **xAI + Tesla SLP**
in-house: the Tesla AI5 5th-gen Autopilot SoC and the Optimus humanoid
inference ASIC are the two announced architecture targets, both designed
captively rather than licensed.

This makes architecture the **T0 design-loop** entry-point in `terafab.md`
§4. The group lands cleanly in T0 because all three of its verbs are spec-
upstream of process / packaging — they describe *intent*, not *fab output*.
Terafab's vertical-integration claim does not require new architecture
verbs; it requires the existing three to clear a higher 🛸 maturity bar so
they can sustain a single-owner roadmap across both edge (vehicle / robot)
and orbital (Starlink-V3 DC) product modes simultaneously.

## §2 Verb-by-verb mapping

| Verb | Scope (from README) | Terafab claim | Falsifier | Honest verdict |
|---|---|---|---|---|
| `architecture` | Top-level chip architecture spec | Tesla AI5 SoC + Optimus inference ASIC, single-owner roadmap | F-TERAFAB-1 (capex stays at $55 B / $119 B); F-TERAFAB-6 (Intel 14A on time) | clean fit — Tesla architecture team is real, AI5 is on the public roadmap |
| `isa_n6` | n=6-invariant ISA: σ=12 opcode classes / τ=4 modes | Dual-target ISA covering edge (AI5) + orbital (Line B) inference | F-TERAFAB-7 (n=6 lattice projection, currently p≈0.86) | **speculative** — Musk has NOT announced n=6 ISA adoption; this is a project-side projection, not a Terafab disclosure |
| `hexa1` | Reference hexagonal chip-1 floorplan + tiling | Reference floorplan template for AI5 die-shrinks at Intel 14A | (none direct) | speculative — hexagonal tiling is a hexa-chip convention; no public Tesla floorplan disclosure references it |

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
| `architecture` | 🛸7 | +2 | mainstream chip-arch maturity; gap is *organisational* (single-owner) more than technical |
| `isa_n6` | 🛸6 | +3 | n=6 ISA is research-tier; no production silicon implements σ=12 opcode classes |
| `hexa1` | 🛸6 | +3 | reference floorplan only; no tape-out anywhere |

**Bottleneck**: `isa_n6` and `hexa1` together. Both are n=6-derived
research artefacts; neither has been validated against Tesla AI5's actual
ISA (which, per public coverage, is closer to a Dojo-derived custom RISC
than to a σ=12 opcode lattice). The architecture *verb itself* clears the
bar comfortably; the **n=6-flavoured verbs are the gap**.

## §4 Cross-link to falsifiers

This group's maturity affects:

- **F-TERAFAB-1** (capex stability) — indirect: architecture re-spins drive
  budget overruns; weak coupling.
- **F-TERAFAB-6** (Intel 14A on time) — indirect: architecture freeze date
  must precede 14A pathfinder lots (Mk.III window 2027~2029).
- **F-TERAFAB-7** (n=6 lattice projection) — **direct**: `isa_n6` and
  `hexa1` are the two verbs the χ² test was originally formulated against.
  Currently p ≈ 0.86 (too weak); reformulation pending Mk.II data.

## §5 Korean fab heritage comparator

| verb | Korean-fab equivalent | heritage tone |
|---|---|---|
| `architecture` | Samsung S.LSI + Exynos design house | Exynos 2400 SoC architecture team; mainstream HEXA-EXYNOS lineage in `exynos/exynos.md` |
| `isa_n6` | (no direct Korean equivalent) | Samsung uses ARM/RISC-V external ISAs; n=6 invariant ISA is hexa-chip-internal |
| `hexa1` | Samsung 3nm GAA reference floorplan | analogous to Samsung's published GAA test-chip floorplans (no proprietary content invoked) |

The Samsung DS heritage maps best onto `architecture` itself. The two
n=6-flavoured verbs are hexa-chip-internal organising convention with no
direct Korean-fab analogue.

## §6 Honest caveats

- **Speculative mappings flagged**: `isa_n6` and `hexa1` are project-side
  n=6 projections, not Terafab disclosures. Musk has NOT announced n=6
  adoption in any form.
- **Meta-domain absorption does NOT change the verb's spec or maturity.**
  The 3 verbs remain at v1.0.0 spec-first; the `verify_<verb>.hexa`
  sandboxes still assert lattice arithmetic only, not Terafab-fit.
- **Zero NDA / proprietary content**: all Tesla AI5 and Optimus references
  are sourced from `terafab.md` §15 public references (Wikipedia, Tom's
  Hardware, TechCrunch). No internal Tesla / xAI documents are invoked.
- **Single-owner organisational claim** is the dominant gap, not the
  technical claim. `architecture` as a verb clears 🛸7 today via Tesla's
  existing AI4 production silicon; what doesn't clear is the *integrated*
  6-group maturity Terafab announces.

## §7 Cross-link

- Parent: [`terafab/terafab.md`](./terafab.md) §1 (group ownership table),
  §3 (REQUIRES), §4 (T0 STRUCT), §11 (DEPENDENCIES)
- Verb sources: [`../architecture/`](../architecture/),
  [`../isa_n6/`](../isa_n6/), [`../hexa1/`](../hexa1/)
- Korean comparator: [`../exynos/exynos.md`](../exynos/exynos.md) §1, §4
- Counter-strategy: [`../proposals/samsung-foundry-hexa-6stage.md`](../proposals/samsung-foundry-hexa-6stage.md) §8
- Manifest: `hexa.toml` `[modules.architecture]` (3 verbs) +
  `[meta_domains.terafab]` (envelope)

---

**Provenance**: Per-group decomposition authored 2026-05-11 alongside
`terafab.md`. All Terafab claims sourced from `terafab.md` §15 public
references. No NDA / proprietary content invoked. Verb scopes copied
verbatim from `README.md` §Verbs.
