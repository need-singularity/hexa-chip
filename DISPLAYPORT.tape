#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "displayport" :: identity-claim [d=2026-05-14 active]
  kind = "DisplayPort — DP display protocol n=6 mapping"
  brief = "- Project: n6-architecture / domains/compute/network-protocol"
  parent = "dancinlab/hexa-chip"
  sibling-md = "DISPLAYPORT.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in DISPLAYPORT.md.
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
