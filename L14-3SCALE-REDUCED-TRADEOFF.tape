#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l14_3scale_reduced_tradeoff" :: identity-claim [d=2026-05-14 active]
  kind = "L14 3-scale reduced alternative design — S1(nucleus)+S2(quantum)+S4(consciousness) tradeoff analysis"
  brief = "L13 M2-MISS-A        → Hf-178m2 NEET write σ_write < 10^-28 cm^2"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L14-3SCALE-REDUCED-TRADEOFF.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L14-3SCALE-REDUCED-TRADEOFF.md.
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
