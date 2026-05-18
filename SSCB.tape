#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "sscb" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate Semiconductor Circuit Breaker SSCB mk1 (HEXA-SSCB) — Korean fabless design"
  brief = "An SSCB (semiconductor circuit breaker) is re-interpreted within the n=6 arithmetic system. The perfect number n=6"
  parent = "dancinlab/hexa-chip"
  sibling-md = "SSCB.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in SSCB.md.
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
