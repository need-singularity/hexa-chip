<!-- @absorbed: 2026-05-11 -->
<!-- @parent: terafab/terafab.md (§1, §3, §4, §11) -->
<!-- @scope: per-group decomposition of the Terafab meta-domain envelope -->
---
type: group-integration
parent: terafab/terafab.md
group: process
verb_count: 5
terafab_tier: T1
maturity_gap: +3
---

# Group C — process × Terafab Meta-Domain

> Per-group decomposition of how the **process** group (5 verbs) sits inside
> the Terafab meta-domain envelope. Mirrors `terafab.md` §1, §3, §4, §11;
> honors `hexa.toml` `[modules.process]`.

## §1 Why this group is absorbed by Terafab

The **process group** is the *single most load-bearing* group in the
Terafab meta-domain claim. Per `terafab.md` §1, process is "normally owned
by TSMC / Samsung / Intel" — and Terafab's announce explicitly claims
**in-house (Intel-licensed 14A)** ownership. Without process captivity, the
"one-roof, one-owner, one-wafer-flow" topology degrades to a Tesla-of-AI4
posture (TSMC-fabbed Tesla architecture), which is exactly what Terafab is
announced *not* to be.

This puts process at **T1 wafer-fab** in `terafab.md` §4, owned by SpaceX-
ops at the prototype TX site, with all 5 verbs operating under the Intel
14A process basis (RibbonFET + PowerVia + EUV / High-NA EUV mix). The
maturity gap (+3, the largest in the meta-domain) reflects the historical
difficulty of standing up a 2 nm-class greenfield fab — Intel itself, with
60 years of process heritage, is still ramping 14A in 2026.

## §2 Verb-by-verb mapping

| Verb | Scope (from README) | Terafab claim | Falsifier | Honest verdict |
|---|---|---|---|---|
| `process` | Front-end process spec (FEOL / lithography) | Intel 14A licensed; 2 nm prototype line; full-scale 1.4 nm RibbonFET | F-TERAFAB-6 (Intel 14A on time) | clean fit — process node naming aligns directly with Terafab disclosure |
| `materials` | Substrate / dielectric / metal materials | Intel materials stack inherited via 14A licensing | (none direct) | clean fit — materials follow process; no Terafab-specific material claim |
| `wafer` | Wafer-level handling, defect density, scribe | 1 M wafer-starts/mo at full-scale (per `terafab.md` §1 headline) | F-TERAFAB-3 (full-scale capex) | speculative-volume — 1 M w/m would make Terafab the largest single-site fab in history |
| `yield` | Yield ramp / binning / defect Pareto | Greenfield yield ramp from 2 nm prototype → 14A volume | F-TERAFAB-1 (capex stability) | **biggest concern** — zero-fab-experience execution (per `terafab.md` §10) puts yield ramp at high risk |
| `thermal_power` | Thermal envelope + power delivery network | 1 TW AI compute output requires fab-side power infra; orbital radiator constraint | F-TERAFAB-5 (1 TW delivered); §7.E Stefan-Boltzmann floor | clean fit for fab-side; orbital thermal envelope is hard-floor constrained (~1,300 km² radiator per `terafab.md` §7.E) |

## §3 Maturity gap analysis

From `terafab.md` §3:

| metric | value |
|---|---|
| current 🛸 (group-wide) | 🛸7 |
| required 🛸 by Terafab | 🛸10 |
| aggregate gap | **+3 (largest in the meta-domain, tied with packaging)** |

Per-verb honest read:

| verb | current 🛸 (est.) | gap to 🛸10 | bottleneck note |
|---|---|---|---|
| `process` | 🛸7 | +3 | Intel 14A is real but unshipped at volume; 14A delays beyond 2031 break the basis |
| `materials` | 🛸8 | +2 | mature materials science; weakest individual gap |
| `wafer` | 🛸6 | +4 | 1 M w/m volume is unprecedented; even TSMC Fab 18 peaks ~150k w/m |
| `yield` | 🛸5 | +5 | **biggest gap in the entire meta-domain** — greenfield 2 nm yield is the single hardest engineering problem |
| `thermal_power` | 🛸6 | +4 | fab-side thermal/power scales with capex; orbital side has Stefan-Boltzmann floor |

**Bottleneck**: `yield`. Per `terafab.md` §10, "zero-fab-experience
execution risk" is rated *high*. SpaceX has never operated a fab; Intel's
process licensing transfers IP but not yield-ramp tribal knowledge.
Historical comparator: Samsung Taylor TX (a single-fab greenfield with a
tier-1 fab operator) is still ramping yield 4 years after groundbreaking.

## §4 Cross-link to falsifiers

This group's maturity affects **the most falsifiers of any group**:

- **F-TERAFAB-1** (capex stability) — **direct**: yield ramp slippage is
  the single largest historical driver of fab capex overruns.
- **F-TERAFAB-3** (full-scale capex within $5–13 T) — **direct**: process
  node and wafer-volume targets set the full-scale figure.
- **F-TERAFAB-5** (1 TW delivered) — **direct**: process throughput × yield
  × utilization sets the TW deliverable.
- **F-TERAFAB-6** (Intel 14A on time) — **direct, primary**: this group
  *is* the 14A bet; if 14A slips past 2031, Terafab loses its process
  basis.
- **F-TERAFAB-7** (n=6 lattice projection) — partial: process-node 2 nm =
  φ = 2 fits exactly (per `terafab.md` §4), but this is coincidence-tier.

## §5 Korean fab heritage comparator

| verb | Korean-fab equivalent | heritage tone |
|---|---|---|
| `process` | Samsung Foundry SF2 / Samsung Pyeongtaek P3 (per `terafab.md` §2 Korean comparator) | direct comparator: SF2 GAA at Pyeongtaek P3 is the closest Korean analog to the Intel 14A bet |
| `materials` | Samsung DS materials lab + SK Hynix substrate research | mature Korean materials heritage; no proprietary content invoked |
| `wafer` | Samsung Pyeongtaek P3 wafer-fab; SK Hynix M16 wafer ops | P3 + M16 collectively run ~150 k w/m — Terafab's 1 M target is ~7× this |
| `yield` | Samsung DS yield-ramp methodology (industry-standard discipline) | hexa-chip honors Korean yield-ramp tribal knowledge as the heritage tone reference |
| `thermal_power` | SK Hynix HBM thermal envelope; Samsung HBM power-delivery | mainstream Korean thermal/power maturity |

The Korean fab heritage is **the most directly applicable comparator** for
this group, because process / wafer / yield are exactly the disciplines
where Samsung DS and SK Hynix hold tier-1 global standing. The honest
reading: Terafab's process group is announced to *match* what the Korean
fabs already do — and historically, no greenfield IDM has cleared that bar
in under a decade.

## §6 Honest caveats

- **`yield` is the bottleneck of the entire meta-domain.** Greenfield 2 nm
  yield ramp at 1 M w/m volume has no historical precedent. This is the
  single highest-leverage gap.
- **`process` ↔ Intel 14A is a clean technology basis**, but 14A itself is
  unshipped at volume as of May 2026. F-TERAFAB-6 is the binding constraint.
- **`thermal_power` orbital constraint** is *physics-floored* by Stefan-
  Boltzmann (per `terafab.md` §7.E). 1 TW orbital → ~1,300 km² radiator
  area. No engineering can repeal this.
- **Meta-domain absorption does NOT change the verb's spec or maturity.**
  All 5 process verbs remain v1.0.0 spec-first; sandboxes assert lattice
  arithmetic only, not foundry-fit.
- **Zero NDA / proprietary content**: Intel 14A details are sourced from
  public Intel roadmap disclosures; no PDK content vendored (per
  `hexa.toml` `not_scope`).

## §7 Cross-link

- Parent: [`terafab/terafab.md`](./terafab.md) §1 (group ownership), §3
  (REQUIRES), §4 (T1 STRUCT), §5 (T1 wafer flow), §7.E (Stefan-Boltzmann
  orbital floor), §10 (RISKS), §11 (DEPENDENCIES)
- Verb sources: [`../process/`](../process/),
  [`../materials/`](../materials/), [`../wafer/`](../wafer/),
  [`../yield/`](../yield/), [`../thermal_power/`](../thermal_power/)
- Korean comparator: [`../exynos/exynos.md`](../exynos/exynos.md) §4 K1;
  `terafab.md` §2 Korean-fab table
- Counter-strategy: [`../proposals/samsung-foundry-hexa-6stage.md`](../proposals/samsung-foundry-hexa-6stage.md)
- Manifest: `hexa.toml` `[modules.process]` (5 verbs) +
  `[meta_domains.terafab]` (envelope)

---

**Provenance**: Per-group decomposition authored 2026-05-11 alongside
`terafab.md`. All Terafab claims sourced from `terafab.md` §15 public
references. No NDA / proprietary content invoked. Verb scopes copied
verbatim from `README.md` §Verbs.
