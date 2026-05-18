#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "catalog" :: identity-claim [d=2026-05-14 active]
  kind = "CATALOG.md — hexa-chip repository classification"
  brief = "7-tier non-invasive taxonomy of every directory and root file in `hexa-chip/`,"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CATALOG.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CATALOG.md.
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
