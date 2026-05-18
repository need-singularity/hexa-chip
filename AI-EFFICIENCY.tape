#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "ai_efficiency" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-AI — 궁극의 AI 효율 아키텍처"
  brief = "**비전**: n=6 완전수 산술이 현대 AI/LLM의 모든 핵심 하이퍼파라미터를 결정한다."
  parent = "dancinlab/hexa-chip"
  sibling-md = "AI-EFFICIENCY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in AI-EFFICIENCY.md.
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
