#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "session_log_2026_05_12" :: identity-claim [d=2026-05-14 active]
  kind = "Session Log — 2026-05-12"
  brief = "Single working day on `hexa-chip` covering Wave 6 → Wave H landing on"
  parent = "dancinlab/hexa-chip"
  sibling-md = "SESSION_LOG_2026-05-12.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in SESSION_LOG_2026-05-12.md.
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
