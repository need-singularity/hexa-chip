#!/usr/bin/env tape

# ══════════════════════════════════════════════════════════════
# CHIP.tape — architecture-current (editable per v1.2)
# Event history → CHIP.log.tape sibling
# ══════════════════════════════════════════════════════════════

@V := "tape" :: spec [active]
  version = "1.2"

# ─── §1 Identity ─────────────────────────────────────────────────────

@I id001 := "chip" :: identity-claim [d=2026-05-15 active]
  kind = "HEXA-Silicon family · chip master substrate"
  brief = "n=6 lattice policy · SM-Blackwell witness · 6-stage integrated milestones"
  parent = "dancinlab/hexa-chip"
  sibling-log = "CHIP.log.tape"

# ─── §2 Architectural anchors ────────────────────────────────────────

@D c1 := "chip.lattice_policy_ssot" :: chip [d=2026-05-14 ok]
  text = "LATTICE_POLICY.md is THE SSOT — every wilson governance principle #5 reference resolves here"
  proof = "LATTICE_POLICY.md §3.1, §3.2 + 3 anti-patterns"

@D c2 := "chip.sm_blackwell_192_witness" :: chip [d=2026-05-14 ok]
  text = "Blackwell GB202 SMs = 192 = σ * φ^τ = 12 * 2^4 — n=6 lattice in-the-wild"
  proof = "n6 atlas @F sm_blackwell = sigma * phi^tau = 192 [10*]"
