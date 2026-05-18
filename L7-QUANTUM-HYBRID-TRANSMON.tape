#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l7_quantum_hybrid_transmon" :: identity-claim [d=2026-05-14 active]
  kind = "L7 HEXA-QUANTUM-HYBRID — 6-qubit hexagonal transmon + σ=12 coupling (dedicated promotion version)"
  brief = "n=6, sigma(6)=12, phi(6)=2, tau(6)=4, sopfr(6)=5, J_2(6)=24"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L7-QUANTUM-HYBRID-TRANSMON.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L7-QUANTUM-HYBRID-TRANSMON.md.
# New per-domain history entries land here as typed events:
#
#   @A commit_<hash> :: <domain> [d=<YYYY-MM-DD> ok]
#     <- <prev-id>
#     => "<one-line description>"
#
#   @D <id> := "<decision-name>" :: <domain> [<grades>]
#     <- <evidence-id>
#     |> <verifier>
#
# See ~/core/tape/spec/tape.md for full grammar.
