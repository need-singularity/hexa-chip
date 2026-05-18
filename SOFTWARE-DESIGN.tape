#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "software_design" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 소프트웨어 설계 — HEXA Software Architecture"
  brief = "n = 6    σ(6) = 12    τ(6) = 4    φ(6) = 2"
  parent = "dancinlab/hexa-chip"
  sibling-md = "SOFTWARE-DESIGN.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in SOFTWARE-DESIGN.md.
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
