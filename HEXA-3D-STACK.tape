#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_3d_stack" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-3D-STACK -- Level 3 (3D 적층) 칩 아키텍처 설계"
  brief = "**Rating**: 9/10 -- 6층 TSV 수직 적층 + Egyptian 전력 분배 + 미세유체 열관리"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-3D-STACK.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-3D-STACK.md.
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
