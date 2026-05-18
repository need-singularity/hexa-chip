#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_photonic" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-PHOTONIC -- Level 4 (광자 인터커넥트) 칩 아키텍처 설계"
  brief = "**Rating**: 9/10 -- 6 파장 WDM 광 인터커넥트 + sigma=12 채널 라우팅 + tau=4 마이크로링 스택 + Egyptian 광 전력 배분"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-PHOTONIC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-PHOTONIC.md.
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
