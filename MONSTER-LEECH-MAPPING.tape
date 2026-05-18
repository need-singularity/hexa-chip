#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "monster_leech_mapping" :: identity-claim [d=2026-05-14 active]
  kind = "Monster Group × Leech Lattice → 반도체 칩 레이아웃 구조 대응"
  brief = "**탐구 질문**: BT-18 (Vacuum Energy Chain: n=6 → Monster) 의 수학 체인이"
  parent = "dancinlab/hexa-chip"
  sibling-md = "MONSTER-LEECH-MAPPING.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in MONSTER-LEECH-MAPPING.md.
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
