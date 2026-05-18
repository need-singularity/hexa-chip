#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_wafer" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-WAFER: N6 Wafer-Scale Engine"
  brief = "**Codename: HEXA-WAFER**"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-WAFER.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-WAFER.md.
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
