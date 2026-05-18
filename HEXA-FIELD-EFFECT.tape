#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_field_effect" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-FIELD-EFFECT -- Level 9 (장효과 컴퓨팅 칩) 아키텍처 설계"
  brief = "**Rating**: 5/10 -- n=6 장효과 격자 + sigma=12 장모드 커플링 + tau=4 장전파 깊이 + Egyptian 장에너지 분배 + 에너지 효율 10^6x"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-FIELD-EFFECT.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-FIELD-EFFECT.md.
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
