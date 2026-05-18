#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_pim" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate PIM (HEXA-PIM)"
  brief = "n=6 Processing-in-Memory architecture is the product of decades of accumulated compromise. Every core has a different pitch, every power rail a different voltage, every protocol a different header."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-PIM.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-PIM.md.
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
