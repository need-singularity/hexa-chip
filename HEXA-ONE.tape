#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_one" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-ONE --- 궁극의 단일 통합 웨어러블 아키텍처 (8단)"
  brief = "**n=6 산술 기반, 하나의 안경 디바이스가 인간의 전 감각을 sigma=12배 확장하는 궁극의 통합 웨어러블**"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-ONE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-ONE.md.
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
