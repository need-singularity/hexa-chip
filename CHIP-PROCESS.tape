#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_process" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate semiconductor process HEXA-PROCESS"
  brief = "semiconductor process 1500+ Stage  of \"via recipe\" . EUV/High-NA + τ=4 deposition technique + σ=12 plasma chemistry n=6 coordinatesystem at rexvalue  kinds wasteratio disappears:"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-PROCESS.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-PROCESS.md.
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
