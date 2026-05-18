#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_sc" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate Superconducting Chip (HEXA-SC-CHIP)"
  brief = "n=6 SFQ/RSFQ Josephson-junction compute is the product of decades of accumulated compromise. Different pitch per core, different voltages per power rail, different headers per protocol."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-SC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-SC.md.
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
