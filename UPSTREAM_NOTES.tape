#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "upstream_notes" :: identity-claim [d=2026-05-14 active]
  kind = "UPSTREAM_NOTES.md — hexa-lang upstream issues encountered"
  brief = "**Severity**: high — silently returns wrong value, breaks any code using"
  parent = "dancinlab/hexa-chip"
  sibling-md = "UPSTREAM_NOTES.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in UPSTREAM_NOTES.md.
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
