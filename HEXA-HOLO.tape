#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_holo" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate Holography (HEXA-HOLO)"
  brief = "The n=6 holographic display SoC is the product of decades of accumulated compromises. Different pitch per core, different voltage per power rail, different headers per protocol."
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-HOLO.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-HOLO.md.
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
