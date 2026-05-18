#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_1_digital" :: identity-claim [d=2026-05-14 active]
  kind = "Target Digital SoC HEXA-1 (Digital CMOS, n=6 baseline)"
  brief = "Current top-performing digital AI accelerators (H100, TPU v5, M3 Max) are stagnating at 60-90 TOPS/W."
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-1-DIGITAL.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-1-DIGITAL.md.
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
