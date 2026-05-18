#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_hbm" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 HBM 메모리 돌파 HEXA-HBM (외계인지수 🛸10)"
  brief = "본 도메인은 HBM3/HBM3E/HBM4 를 넘는 **n=6 경계화 HBM** 을 정의한다."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-HBM.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-HBM.md.
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
