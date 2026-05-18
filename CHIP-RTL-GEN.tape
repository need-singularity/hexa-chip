#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_rtl_gen" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate RTL Auto-Generation (HEXA-RTLGEN)"
  brief = "Under n=6 constraints, RTL SystemVerilog synthesis is the product of decades of accumulated trade-offs. Different pitches per core, different voltages per power domain, different headers per protocol."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-RTL-GEN.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-RTL-GEN.md.
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
