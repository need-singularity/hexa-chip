#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_mram" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate MRAM (HEXA-MRAM)"
  brief = "n=6 STT-MRAM non-volatile memory is the product of compromises accumulated over decades. A different pitch per core, a different voltage per power supply, a different header per protocol."
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-MRAM.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-MRAM.md.
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
