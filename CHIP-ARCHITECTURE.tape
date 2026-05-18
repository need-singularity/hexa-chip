#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_architecture" :: identity-claim [d=2026-05-14 active]
  kind = "N6 칩 아키텍처 — 완전수 산술 반도체 설계"
  brief = "Hardware design principles derived from n=6 arithmetic for energy-efficient AI accelerators."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-ARCHITECTURE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-ARCHITECTURE.md.
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
