#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_pim" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-PIM: N6 Processing-in-Memory Architecture"
  brief = "HEXA-PIM은 HBM 메모리 스택 내부에 연산 유닛을 삽입하여 데이터 이동 없이"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-PIM.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-PIM.md.
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
