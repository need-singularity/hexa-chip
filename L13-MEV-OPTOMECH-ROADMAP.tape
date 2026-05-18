#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l13_mev_optomech_roadmap" :: identity-claim [d=2026-05-14 active]
  kind = "L13 MeV optomech bottleneck B1 resolution roadmap — 2027~2029 τ=4 intermediate-conversion experimental spec"
  brief = "L13-MEV-OPTOMECH-ROADMAP per-domain ledger · sibling of L13-MEV-OPTOMECH-ROADMAP.md"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L13-MEV-OPTOMECH-ROADMAP.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L13-MEV-OPTOMECH-ROADMAP.md.
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
