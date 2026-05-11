<!-- @absorbed: 2026-05-11 -->
<!-- @parent: terafab/terafab.md (§1, §3, §4, §11) -->
<!-- @scope: per-group decomposition of the Terafab meta-domain envelope -->
---
type: group-integration
parent: terafab/terafab.md
group: design
verb_count: 5
terafab_tier: T0
maturity_gap: +2
---

# Group B — design × Terafab Meta-Domain

> Per-group decomposition of how the **design** group (5 verbs) sits inside
> the Terafab meta-domain envelope. Mirrors `terafab.md` §1, §3, §4, §11;
> honors `hexa.toml` `[modules.design]`.

## §1 Why this group is absorbed by Terafab

Terafab's announced topology (per `terafab.md` §1) collapses the design-
house / EDA-vendor / verification-IP boundary into a **single in-house
design loop owned by xAI + Tesla SLP**. Where today Tesla designs at AI4
generation using a mix of in-house RTL and TSMC-owned EDA flow integration,
Terafab announces that the entire design loop — from spec through RTL,
synthesis, P&R, DRC/LVS, and tape-out — runs captively under one roof.

The **design group** lands in T0 alongside architecture (per `terafab.md`
§4). It is the *operational* tier that converts architecture intent into
GDSII. xAI's "AI-assisted RTL" claim is the headline differentiator: if it
works, design becomes the first hexa-chip group whose maturity is gated by
LLM-tool quality rather than human EDA-engineer headcount. None of the 5
verbs requires renaming or re-scoping; they need **integration cohesion**
inside the single xAI / Tesla SLP envelope.

## §2 Verb-by-verb mapping

| Verb | Scope (from README) | Terafab claim | Falsifier | Honest verdict |
|---|---|---|---|---|
| `design` | RTL-down design methodology spec | xAI + Tesla SLP single design house, captive methodology | F-TERAFAB-2 (one-roof scope) | clean fit — Tesla design team exists today, the gap is *aggregating EDA in-house* |
| `dse_pipeline` | Design-space exploration pipeline | DSE compressed by AI-assisted search across AI5 / Optimus / orbital SKU variants | (none direct) | partial fit — public xAI tooling does not yet expose a DSE pipeline |
| `rtl_gen` | RTL generation (LLM-assisted Verilog/Chisel) | xAI-proprietary LLM RTL generator (announced "AI-assisted RTL") | F-TERAFAB-2 indirectly | **speculative-headline** — xAI has stated this; no public benchmark exists |
| `eda` | EDA flow integration (Cadence/Synopsys/Mentor) | Cadence + Synopsys retained externally; no in-house EDA disclosed yet (per `terafab.md` §13) | F-TERAFAB-2 indirectly | clean fit — Terafab does NOT claim to displace Cadence/Synopsys; they remain the canonical implementation surface |
| `verify_test` | Verification + DFT + post-Si test methodology | In-line wafer probe + final test (per `terafab.md` §5 T3) | F-TERAFAB-2 (one-roof OSAT) | clean fit for in-line test; speculative for DFT methodology |

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
| `design` | 🛸7 | +2 | Tesla design house clears 🛸7 today; gap is captive-EDA integration |
| `dse_pipeline` | 🛸6 | +3 | DSE tooling is research-tier; AI-assisted DSE not at production maturity |
| `rtl_gen` | 🛸5 | +4 | **biggest gap** — LLM RTL generation is bench-only; no production silicon |
| `eda` | 🛸8 | +1 | Cadence/Synopsys retained external = mature; only weak coupling |
| `verify_test` | 🛸7 | +2 | mainstream DFT/test maturity; in-line claim is the lift |

**Bottleneck**: `rtl_gen`. The "AI-assisted RTL" headline is the most
ambitious single technical claim inside the design group. Today (May 2026)
no shipping production SoC has been taped out from LLM-generated RTL; the
gap from 🛸5 to 🛸9 is at least one hardware generation.

## §4 Cross-link to falsifiers

- **F-TERAFAB-2** (one-roof scope) — **direct**: if design is captive but
  EDA / DFT / probe / test are outsourced, the one-roof claim weakens. The
  `eda` verb's deliberately-external status (per `terafab.md` §13) is
  honest scope-trimming, not a contradiction.
- **F-TERAFAB-6** (Intel 14A on time) — indirect: design freeze must align
  to 14A PDK lock dates.
- **F-TERAFAB-1** (capex stability) — indirect: each design re-spin drives
  mask-set re-cost (~$30 M / mask set at 2 nm class).

## §5 Korean fab heritage comparator

| verb | Korean-fab equivalent | heritage tone |
|---|---|---|
| `design` | Samsung S.LSI design house | mainstream Exynos lineage; HEXA-EXYNOS architecture team in `exynos/exynos.md` §4 |
| `dse_pipeline` | Samsung internal DSE flow (proprietary) | no public Korean equivalent disclosed; mirror of internal Synopsys DSO.ai usage |
| `rtl_gen` | Samsung × Synopsys VCS-AI partnership (public 2025) | Samsung announced AI-assisted verification; RTL generation remains future-looking on both sides |
| `eda` | Samsung Foundry EDA partnership (Cadence + Synopsys) | identical posture — Korean fabs do NOT displace Cadence/Synopsys; tone matches Terafab |
| `verify_test` | Samsung DFT + Hynix wafer-probe lineage | mainstream Korean fab DFT maturity; clean comparator |

## §6 Honest caveats

- **`rtl_gen` is the most speculative verb in this group**. The "AI-assisted
  RTL" claim is announced but unproven; no public benchmarks of xAI's RTL
  output quality exist as of 2026-05-11.
- **`eda` is honest about staying external**. Per `terafab.md` §13, Cadence
  + Synopsys are retained — Terafab does NOT claim to replace them. This is
  consistent with hexa-chip's `not_scope` in `hexa.toml` ("EDA tool
  replacement (Cadence/Synopsys/Mentor stays canonical)").
- **Meta-domain absorption does NOT change the verb's spec or maturity.**
  All 5 design verbs remain v1.0.0 spec-first; sandboxes assert lattice
  arithmetic only.
- **Zero NDA / proprietary content**: xAI's RTL tooling is referenced via
  public Musk announcements only; no Tesla / xAI internal repos invoked.

## §7 Cross-link

- Parent: [`terafab/terafab.md`](./terafab.md) §1 (group ownership), §3
  (REQUIRES), §4 (T0 STRUCT), §5 (T0 DESIGN LOOP wafer flow), §11
  (DEPENDENCIES), §13 (TOOLS)
- Verb sources: [`../design/`](../design/),
  [`../dse_pipeline/`](../dse_pipeline/),
  [`../rtl_gen/`](../rtl_gen/), [`../eda/`](../eda/),
  [`../verify_test/`](../verify_test/)
- Korean comparator: [`../exynos/exynos.md`](../exynos/exynos.md) §4 K2
- Manifest: `hexa.toml` `[modules.design]` (5 verbs) +
  `[meta_domains.terafab]` (envelope)

---

**Provenance**: Per-group decomposition authored 2026-05-11 alongside
`terafab.md`. All Terafab claims sourced from `terafab.md` §15 public
references. No NDA / proprietary content invoked. Verb scopes copied
verbatim from `README.md` §Verbs.
