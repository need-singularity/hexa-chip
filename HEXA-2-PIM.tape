#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_2_pim" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 Processing-In-Memory HEXA-2 (PIM, DRAM row-buffer compute)"
  brief = "Von Neumann 아키텍처는 60년간 **데이터 이동 에너지 = 연산 에너지 × 100** 이라는 근본 문제를 안고 있다."
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-2-PIM.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-2-PIM.md.
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
