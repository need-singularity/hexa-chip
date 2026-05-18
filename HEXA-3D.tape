#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_3d" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-3D: N6 3D Compute-on-Memory Architecture"
  brief = "**Codename: HEXA-3D**"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-3D.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-3D.md.
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
