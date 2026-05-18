#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_superconducting" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-SUPERCONDUCTING -- Level 6 (초전도 SFQ 칩) 아키텍처 설계"
  brief = "**Rating**: 8/10 -- 6-JJ SFQ 게이트 + sigma=12 JJ/게이트 설계 + tau=4 극저온 스테이지 + Egyptian 냉각 전력 배분"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-SUPERCONDUCTING.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-SUPERCONDUCTING.md.
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
