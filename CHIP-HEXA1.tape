#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_hexa1" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate HEXA-1 Digital Integrated SoC"
  brief = "The Stage-1 baseline of the 6-stage chip roadmap is the product of compromises accumulated over decades. Different pitch per core, different voltage per power rail, different header per protocol."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-HEXA1.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-HEXA1.md.
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
