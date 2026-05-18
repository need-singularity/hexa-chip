#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_dna_molecular" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-DNA-MOLECULAR -- Level 10 (DNA/분자 컴퓨팅 칩) 아키텍처 설계"
  brief = "**Rating**: 4/10 -- DNA 코돈 6-염기쌍 단위 + sigma=12 동시 반응 웰 + tau=4 분자 게이트 + sopfr=5 파이프라인 + Egyptian 에너지 분배"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-DNA-MOLECULAR.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-DNA-MOLECULAR.md.
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
