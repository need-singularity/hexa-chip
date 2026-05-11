<!-- @absorbed: 2026-05-12 -->
<!-- @parent: tsmc/tsmc.md (Wave I) -->
<!-- @scope: closure declaration for the tsmc meta-domain envelope -->
<!-- @sister: terafab/CLOSURE.md (Wave 6.x), exynos/CLOSURE.md (Wave 7) — same closure grammar -->
---
type: closure-declaration
parent: tsmc/tsmc.md
verdict: SPEC_PLUS_RUNNABLE
envelope: tsmc
groups_wrapped: 6
falsifiers_total: 7
nda_content: false
date: 2026-05-12
commit_basis: Wave I (tsmc + intel meta-domain envelopes)
---

# TSMC Meta-Domain — Closure Declaration

> **Closure scope**: this document declares closure for the
> **tsmc meta-domain envelope** only. Verb-level closure for
> hexa-chip's 29-verb / 6-group surface is governed by the separate
> `[closure]` block in `hexa.toml` and is unchanged by this declaration.

## §1 Closure verdict

**`verdict = SPEC_PLUS_RUNNABLE`**

The tsmc envelope ships with both (a) a complete spec surface
(15-section main doc + per-falsifier register + sources catalogue +
README) and (b) a runnable Python harness (`verify_tsmc.py`) that
exercises every cross-cutting invariant the envelope asserts.

Mirrors `hexa.toml` `[meta_domain_closure].verdict = "SPEC_PLUS_RUNNABLE"`
(single source of truth — re-derive at any time with the §6 recipe).

The tsmc envelope is the **third sister** in the meta-domain family:

- **Terafab** (Wave 6) — greenfield-vertical-megafab topology.
- **Exynos**  (Wave 7) — brownfield-IDM-heritage topology.
- **TSMC**    (Wave I, this envelope) — pure-play-foundry-leader topology.
- **Intel**   (Wave I, sister) — IDM-foundry-pivot topology.

All four share the 15-section grammar, all four wrap the same 6
hexa-chip groups, all four ship with stdlib-only Python verify
harnesses. The four envelopes are complementary, not redundant — they
encode the four publicly-observed fab topologies hexa-chip's 29-verb
surface has to be honestly evaluated against.

## §2 Closure inventory

Every file in `tsmc/` enumerated with line count, role, and closure tier.

| File | Lines | Role | Tier |
|---|---:|---|---|
| `tsmc.md`                  | ~620 | Main 15-section meta-domain spec (WHY · COMPARE · REQUIRES · STRUCT · FLOW · EVOLVE · VERIFY · IDEAS · METRICS · RISKS · DEPENDENCIES · TIMELINE · TOOLS · TEAM · REFERENCES) — TSMC pure-play-foundry anchor | SPEC_PLUS_RUNNABLE |
| `sources.md`               | ~390 | Annotated public-source catalogue (TSMC IR + Symposium + Arizona Commerce + SEC 6-K + IEEE/IEDM + DigiTimes / TrendForce / Nikkei Asia + competitor commentary) | SPEC |
| `README.md`                | ~150 | Directory README with badges, file table, quick-recall facts, falsifier summary, cross-link | SPEC |
| `verify_tsmc.py`           | ~240 | Runnable falsifier dispatcher (7 falsifiers + 6 hard checks; n=6 identity, Egyptian split, TSMC capex didactic, N2 cadence, AZ capex didactic, F-TSMC-7 χ² band) | RUNNABLE_ONLY |
| `CLOSURE.md`               | this | Closure declaration (this document) | SPEC |

**Tier legend**: `SPEC` = doc-only spec; `RUNNABLE_ONLY` = executable
sandbox without prose spec; `SPEC_PLUS_RUNNABLE` = both prose spec and
embedded/companion runnable.

## §3 Closure invariants asserted

The tsmc envelope holds the following invariants. Each is exercised
by `verify_tsmc.py` and/or the extended `terafab/cross_doc_audit.py`
(per §6 recipe):

1. **6 groups absorbed.** `hexa.toml [meta_domains.tsmc].absorbs`
   matches `[modules]` keys exactly; both equal
   `{architecture, design, process, packaging, accelerator, consciousness}`.
   Asserted by the extended `cross_doc_audit.py`.
2. **7 falsifiers registered.** F-TSMC-1..7 in `tsmc.md` §7;
   README.md summary table lists all 7. `verify_tsmc.py` dispatches
   all 7 in a single run.
3. **0 NDA content.** Every claim traces to the `tsmc.md` §15 source
   list (TSMC IR + Annual Report public filings, TSMC Technology
   Symposium 2024/2025 public keynotes, Arizona Commerce Authority,
   SEC 6-K, EU / Japan JV announcements, public industry trackers,
   IEEE IEDM / VLSI Symposium / ISSCC proceedings, competitor public
   commentary). **No TSMC-internal data, no proprietary PDK content,
   no trade secrets, no SOW-protected partnership detail.**
4. **29-verb / 6-group surface unchanged.** `hexa.toml [closure]`
   reports `verbs_total = 29` and `groups_total = 6`; the
   `[meta_domain_closure]` block asserts `verb_surface_unchanged = true`.
5. **All numbers traceable to `tsmc.md` §15.** N2 GAA target
   (2025-Q4 → 2026-H1), A16 (2026-H2 / 2027), A14 (2028), TSMC 2024
   revenue (≈ $90 B), TSMC 2024 capex (≈ $30 B), AZ Fab 21 cumulative
   capex (≈ $65 B), CHIPS Act award ($6.6 B + $5 B), foundry rank
   (#1, ≈ 61 %) — every figure appears in the §15 reference list with
   a public-source citation.
6. **Cross-doc agreement: tsmc.md ↔ hexa.toml ↔ README.md.**
   Enforced by the extended `terafab/cross_doc_audit.py` (which audits
   `[meta_domains.terafab]` + `[meta_domains.exynos]` +
   `[meta_domains.tsmc]` + `[meta_domains.intel]` blocks) and by
   `verify_catalog.py` (which audits CATALOG.md ↔ filesystem ↔
   hexa.toml agreement).
7. **F-TSMC-7 χ² test runs and yields documented honesty-band p.**
   `verify_tsmc.py:check_f_tsmc_7()` computes χ² ≈ 0.30, p ≈ 0.86
   (Mk.I weak; reformulation deferred to Mk.II per §6 of `tsmc.md`).
   The honest reading is that the §4 lattice table is a *registration
   of coincidences*, not a derivation.

## §4 Closure caveats (raw#10 honest C3)

Honest readings of what this closure does not yet prove:

- **F-TSMC-1..6 are bench-only at Mk.I.** Each falsifier's harness
  exists and dispatches cleanly, but the underlying real-world data
  has not yet arrived (2026-Q3+ quarterly IR for F-1 and F-2,
  Arizona Commerce + TSMC IR for F-3, DigiTimes / TrendForce CoWoS
  trackers for F-4, charter-level public scan for F-5, TSMC
  Symposium 2027/2028 keynotes for F-6, Arizona Commerce + TSMC IR
  2028 for F-7). All six return `DEFERRED` until per-falsifier data
  arrives.
- **F-TSMC-7 χ² is weak at Mk.I.** The Mk.I formulation in
  `tsmc.md` §7 scores the seven §4 lattice projection guesses and
  yields p ≈ 0.86 — statistically indistinguishable from random
  scatter (same weakness as Terafab F-7 and Exynos F-EXYNOS-7).
  Reformulation against measured N2 + A16 metrics is deferred to
  Mk.II (IEDM/ISSCC 2027 data window).
- **n=6 lattice projection is a coincidence registry, not a derivation.**
  The §4 STRUCT projection table in `tsmc.md` is a *registration of
  alignments* between TSMC-published process/site/customer parameters
  and n=6 constants; it is honestly labelled as such. TSMC's
  engineering teams did not design N2/A16/A14 against the n=6
  lattice. Some fits (e.g., 6 groups absorbed) are exact by
  definition; others (e.g., N2 nm = φ = 2) are coincidences worth
  noting and no more.
- **Closure is for the META-DOMAIN ENVELOPE only.** Verb-level closure
  for the 29-verb / 6-group surface is governed by `hexa.toml [closure]`
  and is unchanged by this declaration. Promoting an individual
  hexa-chip verb's tier (e.g., `advanced_packaging` from spec to
  runnable) is a separate event.
- **No NDA / no TSMC-internal data**. Every claim is sourced from
  publicly disclosed material. Korean editorial tone is heritage
  framing only — not proprietary content.
- **`tsmc/cross_doc_audit.py` is NOT shipped at Wave I.** The
  `terafab/cross_doc_audit.py` was extended to audit all four
  envelopes (Terafab, Exynos, TSMC, Intel) rather than creating
  parallel files. This keeps `[meta_domain_closure].envelopes_audited
  = 4` honestly (all four envelopes share one cross-doc audit
  harness).

## §5 What this closure does NOT claim

Negative declarations to keep the envelope honest:

- Does **NOT** validate any specific TSMC market-share projection —
  only that the figures cited in `tsmc.md` trace to public
  TrendForce / Counterpoint / IDC / DigiTimes quarterly reports.
- Does **NOT** claim TSMC will retain rank #1 — explicitly
  registers F-TSMC-1 (foundry-share floor falsifier) whose trigger
  can retire the rank-#1 thesis.
- Does **NOT** claim Arizona Fab 21 will succeed — explicitly
  registers F-TSMC-3 (AZ N2 HVM schedule) and F-TSMC-7 (Arizona as
  geopolitical hedge vs real leading-edge fab) as twin falsifiers
  against the AZ thesis.
- Does **NOT** add any verb to hexa-chip — the 29-verb / 6-group
  surface (and the line-by-line manifest) are governed by the
  separate `[closure]` block and unaffected.
- Does **NOT** modify the n=6 lattice or any verb's spec — the lattice
  is referenced as an external diagnostic tool only; F-TSMC-7 is
  *honest about* its own statistical weakness and defers reformulation
  to Mk.II.
- Does **NOT** include NDA / proprietary / TSMC-internal /
  Samsung-internal / Intel-internal data — every claim hyperlinks
  back to a public source in `tsmc.md` §15 or `sources.md`.
- Does **NOT** assert hexa-chip has any TSMC partnership — Korean
  editorial tone is heritage framing, not commercial alignment.

## §6 Re-verification recipe

Two commands to re-verify closure at any time. Both stdlib-only Python;
no external dependencies; idempotent.

```
python3 /home/summer/mac_home/core/hexa-chip/terafab/cross_doc_audit.py
python3 /home/summer/mac_home/core/hexa-chip/tsmc/verify_tsmc.py
```

Expected sentinels (both must appear):

- `cross_doc_audit.py` → `ALL FACTS AGREE — Terafab + Exynos + TSMC + Intel cross-doc audit PASS`
  (the audit was extended at Wave I to also assert
  `[meta_domains.tsmc]` and `[meta_domains.intel]` invariants; all
  four envelopes pass under one harness).
- `verify_tsmc.py`  → `N/N HARD checks PASS  (M DEFERRED Mk.II/III/V/VI)`
  where N = 7 hard checks (master identity, group count, Egyptian
  split, TSMC capex didactic, N2 cadence, AZ capex didactic,
  F-TSMC-7 χ² band) and M = 6 deferred falsifiers (F-TSMC-1..6).

A third complementary audit covers filesystem ↔ catalog ↔ manifest:

```
python3 /home/summer/mac_home/core/hexa-chip/verify_catalog.py
```

(Confirms `[meta_domains.tsmc]` is registered consistently with the
T2 ENVELOPE row in CATALOG.md.)

## §7 Sign-off

External-source absorption complete.

- **Date**: 2026-05-12
- **Commit basis**: Wave I (tsmc + intel meta-domain envelopes — full
  envelope: tsmc.md + verify_tsmc.py + CLOSURE.md + sources.md +
  README.md + `[meta_domains.tsmc]` + `[meta_domain_closure]`
  envelopes_total 2→4 + falsifiers_total 17→31 + extended
  `terafab/cross_doc_audit.py` + CATALOG.md T2 row update).
- **Author**: 박민우 <nerve011235@gmail.com>
- **License**: MIT (inherits from repository)
- **Provenance**: Public-source absorption 2026-05-12; zero NDA /
  proprietary / TSMC-internal content; every claim traces to
  `tsmc.md` §15 + `sources.md`.

---

**Closure verdict re-asserted**: `verdict = SPEC_PLUS_RUNNABLE`
(also recorded in `hexa.toml [meta_domain_closure].verdict` — single
source of truth; re-verify any time with the §6 recipe).
