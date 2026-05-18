#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_design" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA Chip Design — n=6 6-Stage Roadmap (canonical index)"
  brief = "This document is the canonical index for the HEXA chip-design catalog. Each row"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-DESIGN.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-DESIGN.md.
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
