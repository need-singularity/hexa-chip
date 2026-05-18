#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "isocell_comms" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 ISOCELL 이미지센서 통신 (HEXA-ISO)"
  brief = "n=6 픽셀 다이얼로그 임베디드 통신는 수십 년간 누적된 타협의 산물이다. 코어마다 다른 피치, 전원마다 다른 전압, 프로토콜마다 다른 헤더."
  parent = "dancinlab/hexa-chip"
  sibling-md = "ISOCELL-COMMS.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in ISOCELL-COMMS.md.
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
