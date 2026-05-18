#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "learning_algorithm" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-LEARN — 궁극의 학습 알고리즘 아키텍처"
  brief = "**비전**: n=6 산술로 패러다임부터 서빙까지 관통하는 학습 시스템. 하이퍼파라미터 탐색 0회."
  parent = "dancinlab/hexa-chip"
  sibling-md = "LEARNING-ALGORITHM.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in LEARNING-ALGORITHM.md.
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
