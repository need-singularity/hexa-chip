#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_neuromorphic" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-NEUROMORPHIC -- Level 9 (뉴로모픽 칩) 아키텍처 설계"
  brief = "**Rating**: 7/10 -- n=6 뉴런 팬아웃 + sigma=12 시냅스 가중치 비트 + tau=4 스파이크 타이밍 + Egyptian 전력 분배 + 생물학적 에너지 효율 목표"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-NEUROMORPHIC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-NEUROMORPHIC.md.
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
