<!-- @absorbed: 2026-05-12 -->
<!-- @parent: intel/intel.md (Wave I) -->
<!-- @scope: closure declaration for the intel meta-domain envelope -->
<!-- @sister: terafab/CLOSURE.md (Wave 6.x), exynos/CLOSURE.md (Wave 7), tsmc/CLOSURE.md (Wave I) — same closure grammar -->
---
type: closure-declaration
parent: intel/intel.md
verdict: SPEC_PLUS_RUNNABLE
envelope: intel
groups_wrapped: 6
falsifiers_total: 7
nda_content: false
date: 2026-05-12
commit_basis: Wave I (tsmc + intel meta-domain envelopes)
---

# Intel Meta-Domain — Closure Declaration

> **Closure scope**: this document declares closure for the
> **intel meta-domain envelope** only. Verb-level closure for
> hexa-chip's 29-verb / 6-group surface is governed by the separate
> `[closure]` block in `hexa.toml` and is unchanged by this declaration.

## §1 Closure verdict

**`verdict = SPEC_PLUS_RUNNABLE`**

The intel envelope ships with both (a) a complete spec surface
(15-section main doc + per-falsifier register + sources catalogue +
README) and (b) a runnable Python harness (`verify_intel.py`) that
exercises every cross-cutting invariant the envelope asserts.

Mirrors `hexa.toml` `[meta_domain_closure].verdict = "SPEC_PLUS_RUNNABLE"`
(single source of truth — re-derive at any time with the §6 recipe).

The intel envelope is the **fourth sister** in the meta-domain family:

- **Terafab** (Wave 6) — greenfield-vertical-megafab topology.
- **Exynos**  (Wave 7) — brownfield-IDM-heritage topology.
- **TSMC**    (Wave I, sister) — pure-play-foundry-leader topology.
- **Intel**   (Wave I, this envelope) — IDM-foundry-pivot topology.

All four share the 15-section grammar, all four wrap the same 6
hexa-chip groups, all four ship with stdlib-only Python verify
harnesses. The four envelopes are complementary, not redundant — they
encode the four publicly-observed fab topologies hexa-chip's 29-verb
surface has to be honestly evaluated against. Intel is the structural
bridge between Exynos (full IDM) and TSMC (pure-play foundry) — the
only envelope mid-pivot at absorption date.

## §2 Closure inventory

Every file in `intel/` enumerated with line count, role, and closure tier.

| File | Lines | Role | Tier |
|---|---:|---|---|
| `intel.md`                  | ~620 | Main 15-section meta-domain spec (WHY · COMPARE · REQUIRES · STRUCT · FLOW · EVOLVE · VERIFY · IDEAS · METRICS · RISKS · DEPENDENCIES · TIMELINE · TOOLS · TEAM · REFERENCES) — Intel IDM-foundry-pivot anchor | SPEC_PLUS_RUNNABLE |
| `sources.md`                | ~390 | Annotated public-source catalogue (Intel 10-K SEC EDGAR + Investor Day + Foundry Direct Connect + Ohio One filings + Magdeburg + EU/US filings + IEEE/IEDM + The Register / Tom's Hardware / SemiAnalysis public-side) | SPEC |
| `README.md`                 | ~150 | Directory README with badges, file table, quick-recall facts, falsifier summary, cross-link | SPEC |
| `verify_intel.py`           | ~240 | Runnable falsifier dispatcher (7 falsifiers + 7 hard checks; n=6 identity, Egyptian split, Intel capex didactic, 5-nodes-4-years honesty, 18A→14A cadence, F-INTEL-7 χ² band) | RUNNABLE_ONLY |
| `CLOSURE.md`                | this | Closure declaration (this document) | SPEC |

**Tier legend**: `SPEC` = doc-only spec; `RUNNABLE_ONLY` = executable
sandbox without prose spec; `SPEC_PLUS_RUNNABLE` = both prose spec and
embedded/companion runnable.

## §3 Closure invariants asserted

The intel envelope holds the following invariants. Each is exercised
by `verify_intel.py` and/or the extended `terafab/cross_doc_audit.py`
(per §6 recipe):

1. **6 groups absorbed.** `hexa.toml [meta_domains.intel].absorbs`
   matches `[modules]` keys exactly; both equal
   `{architecture, design, process, packaging, accelerator, consciousness}`.
   Asserted by the extended `cross_doc_audit.py`.
2. **7 falsifiers registered.** F-INTEL-1..7 in `intel.md` §7;
   README.md summary table lists all 7. `verify_intel.py` dispatches
   all 7 in a single run.
3. **0 NDA content.** Every claim traces to the `intel.md` §15 source
   list (Intel 10-K SEC EDGAR public filings, Intel Foundry Direct
   Connect 2024-2025 public keynotes, Ohio One Campus public state
   filings, EU Chips Act filings, Magdeburg paused-project public
   announcements, public industry trackers and analysis,
   IEEE IEDM / VLSI Symposium / ISSCC proceedings). **No
   Intel-internal data, no proprietary process kits, no trade secrets,
   no SOW-protected partnership detail.**
4. **29-verb / 6-group surface unchanged.** `hexa.toml [closure]`
   reports `verbs_total = 29` and `groups_total = 6`; the
   `[meta_domain_closure]` block asserts `verb_surface_unchanged = true`.
5. **All numbers traceable to `intel.md` §15.** Intel 18A HVM
   target (2025-H2 → 2026-H1), Intel 14A HVM target (2027-Q4 → 2028),
   Intel 2024 revenue (≈ $53 B), Intel 2024 capex (≈ $25 B revised
   down), Ohio One ambition ($20 B → $100 B), CHIPS Act Intel award
   ($8.5 B + $11 B), Tower acquisition termination (2023-08),
   Magdeburg pause (2024-09), Gelsinger departure (2024-12-01),
   Tan appointment (2025-03-12), 5-nodes-4-years promise (4 real
   post-20A-cancellation) — every figure appears in the §15 reference
   list with a public-source citation.
6. **Cross-doc agreement: intel.md ↔ hexa.toml ↔ README.md.**
   Enforced by the extended `terafab/cross_doc_audit.py` (which audits
   `[meta_domains.terafab]` + `[meta_domains.exynos]` +
   `[meta_domains.tsmc]` + `[meta_domains.intel]` blocks) and by
   `verify_catalog.py` (which audits CATALOG.md ↔ filesystem ↔
   hexa.toml agreement).
7. **F-INTEL-7 χ² test runs and yields documented honesty-band p.**
   `verify_intel.py:check_f_intel_7()` computes χ² ≈ 0.25, p ≈ 0.87
   (Mk.I weak; reformulation deferred to Mk.II per §6 of `intel.md`).
   The honest reading is that the §4 lattice table is a *registration
   of coincidences*, not a derivation.
8. **Cross-envelope falsifier links registered.**
   - F-INTEL-3 (14A external first-customer = Tesla via Terafab) ↔
     F-TERAFAB-6 (Intel 14A volume). Same physical fact, two
     envelopes, joint verification.
   - F-INTEL-6 (Ohio One Phase 1 HVM) ↔ F-TSMC-3 (AZ Fab 21 N2 HVM).
     Joint US-sovereign-fab schedule signal.


Honest readings of what this closure does not yet prove:

- **F-INTEL-1..6 are bench-only at Mk.I.** Each falsifier's harness
  exists and dispatches cleanly, but the underlying real-world data
  has not yet arrived (2026-Q3+ quarterly 10-K for F-1 / F-5, Intel
  Foundry Direct Connect 2026 keynote for F-2, Terafab Mk.III window
  for F-3, Intel investor commentary 2029-Q1 for F-4, Ohio state
  filings 2027-Q4 for F-6). All six return `DEFERRED` until
  per-falsifier data arrives.
- **F-INTEL-7 χ² is weak at Mk.I.** The Mk.I formulation in
  `intel.md` §7 scores the seven §4 lattice projection guesses and
  yields p ≈ 0.87 — statistically indistinguishable from random
  scatter (same weakness as Terafab F-7, Exynos F-EXYNOS-7, TSMC
  F-TSMC-7). Reformulation against measured Intel 18A + 14A
  metrics is deferred to Mk.II (IEDM/ISSCC 2027 data window).
- **n=6 lattice projection is a coincidence registry, not a derivation.**
  The §4 STRUCT projection table in `intel.md` is a *registration of
  alignments* between Intel-published process/customer/site
  parameters and n=6 constants; it is honestly labelled as such.
  Intel's engineering teams did not design 18A/14A against the n=6
  lattice. Some fits (e.g., 6 groups absorbed) are exact by
  definition; others (e.g., 4 real nodes post-20A cancellation = τ)
  are coincidences worth noting and no more.
- **Closure is for the META-DOMAIN ENVELOPE only.** Verb-level closure
  for the 29-verb / 6-group surface is governed by `hexa.toml [closure]`
  and is unchanged by this declaration. Promoting an individual
  hexa-chip verb's tier (e.g., `advanced_packaging` from spec to
  runnable) is a separate event.
- **No NDA / no Intel-internal data**. Every claim is sourced from
  publicly disclosed material. Korean editorial tone is heritage
  framing only — not proprietary content.
- **`intel/cross_doc_audit.py` is NOT shipped at Wave I.** The
  `terafab/cross_doc_audit.py` was extended to audit all four
  envelopes (Terafab, Exynos, TSMC, Intel) rather than creating
  parallel files. This keeps `[meta_domain_closure].envelopes_audited
  = 4` honestly (all four envelopes share one cross-doc audit
  harness).
- **F-INTEL-3 ↔ F-TERAFAB-6 cross-link is honest correspondence,
  not derivation**. They are two views of the same physical fact
  (Tesla shipping volume Intel-14A silicon via the Terafab vehicle).
  If Terafab's Mk.III window closes with no volume Tesla-on-Intel-14A,
  both falsifiers register the same negative.

## §5 What this closure does NOT claim

Negative declarations to keep the envelope honest:

- Does **NOT** validate any specific Intel market-share projection —
  only that the figures cited in `intel.md` trace to public
  TrendForce / Counterpoint / Mercury Research / IDC quarterly reports.
- Does **NOT** claim Intel will catch TSMC at 18A or 14A — explicitly
  registers F-INTEL-1 (18A external customer count) and F-INTEL-2
  (Panther Lake schedule) as falsifiers.
- Does **NOT** claim Intel will survive the pivot — explicitly
  registers F-INTEL-7 (corporate survival 2033) as terminal falsifier.
- Does **NOT** claim Ohio One Phase 1 will land 2027 — explicitly
  registers F-INTEL-6 (Ohio Phase 1 HVM by 2027-Q4) whose trigger
  can retire the schedule thesis.
- Does **NOT** add any verb to hexa-chip — the 29-verb / 6-group
  surface (and the line-by-line manifest) are governed by the
  separate `[closure]` block and unaffected.
- Does **NOT** modify the n=6 lattice or any verb's spec — the lattice
  is referenced as an external diagnostic tool only; F-INTEL-7 is
  *honest about* its own statistical weakness and defers reformulation
  to Mk.II.
- Does **NOT** include NDA / proprietary / Intel-internal /
  Samsung-internal / TSMC-internal / Tesla-internal data — every
  claim hyperlinks back to a public source in `intel.md` §15 or
  `sources.md`.
- Does **NOT** assert hexa-chip has any Intel partnership — Korean
  editorial tone is heritage framing, not commercial alignment.

## §6 Re-verification recipe

Two commands to re-verify closure at any time. Both stdlib-only Python;
no external dependencies; idempotent.

```
python3 /home/summer/mac_home/core/hexa-chip/terafab/cross_doc_audit.py
python3 /home/summer/mac_home/core/hexa-chip/intel/verify_intel.py
```

Expected sentinels (both must appear):

- `cross_doc_audit.py` → `ALL FACTS AGREE — Terafab + Exynos + TSMC + Intel cross-doc audit PASS`
  (the audit was extended at Wave I to also assert
  `[meta_domains.tsmc]` and `[meta_domains.intel]` invariants; all
  four envelopes pass under one harness).
- `verify_intel.py` → `N/N HARD checks PASS  (M DEFERRED Mk.II/III/V/VI)`
  where N = 7 hard checks (master identity, group count, Egyptian
  split, Intel capex didactic, 5-nodes-4-years honesty, 18A→14A
  cadence, F-INTEL-7 χ² band) and M = 6 deferred falsifiers
  (F-INTEL-1..6).

A third complementary audit covers filesystem ↔ catalog ↔ manifest:

```
python3 /home/summer/mac_home/core/hexa-chip/verify_catalog.py
```

(Confirms `[meta_domains.intel]` is registered consistently with the
T2 ENVELOPE row in CATALOG.md.)

## §7 Sign-off

External-source absorption complete.

- **Date**: 2026-05-12
- **Commit basis**: Wave I (tsmc + intel meta-domain envelopes — full
  envelope: intel.md + verify_intel.py + CLOSURE.md + sources.md +
  README.md + `[meta_domains.intel]` + `[meta_domain_closure]`
  envelopes_total 2→4 + falsifiers_total 17→31 + extended
  `terafab/cross_doc_audit.py` + CATALOG.md T2 row update).
- **Author**: 박민우 <nerve011235@gmail.com>
- **License**: MIT (inherits from repository)
- **Provenance**: Public-source absorption 2026-05-12; zero NDA /
  proprietary / Intel-internal content; every claim traces to
  `intel.md` §15 + `sources.md`.

---

**Closure verdict re-asserted**: `verdict = SPEC_PLUS_RUNNABLE`
(also recorded in `hexa.toml [meta_domain_closure].verdict` — single
source of truth; re-verify any time with the §6 recipe).
