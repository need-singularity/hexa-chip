#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l14_cross_scale_tau4_fabric" :: identity-claim [d=2026-05-14 active]
  kind = "L14 Cross-Scale τ=4 Fabric — 4-scale quantum/nuclear/Monster/consciousness unified fabric"
  brief = "L14-CROSS-SCALE-TAU4-FABRIC per-domain ledger · sibling of L14-CROSS-SCALE-TAU4-FABRIC.md"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L14-CROSS-SCALE-TAU4-FABRIC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L14-CROSS-SCALE-TAU4-FABRIC.md.
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
