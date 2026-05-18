#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_yield" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate semiconductor yield HEXA-YIELD"
  brief = "Wafer-scale chips have been trapped in the \"curse of 5% yield\" for decades. DFM, OPC, and redundancy have evolved separately, and defect density D₀ has been stuck. n=6 coordinate realignment (draft):"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-YIELD.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-YIELD.md.
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
