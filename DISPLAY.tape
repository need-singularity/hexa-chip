#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "display" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-DISPLAY --- N6 Display Ultimate Architecture (8-Level)"
  brief = "**n=6 산술 기반, 소재(QD/uLED) ~ 홀로그래픽 ~ 뇌-시각 인터페이스까지 관통하는 8단 디스플레이 아키텍처**"
  parent = "dancinlab/hexa-chip"
  sibling-md = "DISPLAY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in DISPLAY.md.
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
