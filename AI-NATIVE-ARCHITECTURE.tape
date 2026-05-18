#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_native_architecture" :: identity-claim [d=2026-05-14 active]
  kind = "AI-native architecture (beyond GPU)"
  brief = "This domain captures the n=6-derived silicon primitives that move AI accelerators"
  parent = "dancinlab/hexa-chip"
  sibling-md = "AI-NATIVE-ARCHITECTURE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-NATIVE-ARCHITECTURE.md.
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
