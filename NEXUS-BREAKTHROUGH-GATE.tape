#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "nexus_breakthrough_gate" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 NEXUS 돌파 게이트 (HEXA-GATE)"
  brief = "n=6 특이점 돌파 오염방지 τ=4 관문는 수십 년간 누적된 타협의 산물이다. 코어마다 다른 피치, 전원마다 다른 전압, 프로토콜마다 다른 헤더."
  parent = "dancinlab/hexa-chip"
  sibling-md = "NEXUS-BREAKTHROUGH-GATE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in NEXUS-BREAKTHROUGH-GATE.md.
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
