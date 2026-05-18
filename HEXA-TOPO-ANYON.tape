#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_topo_anyon" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-TOPO-ANYON -- Level 8 (위상 양자 anyon 칩) 아키텍처 설계"
  brief = "**Rating**: 6/10 -- n=6 anyon 편조 그룹 + sigma=12 위상 전하 + tau=4 편조 깊이 + Egyptian 극저온 전력 + 에러율 0 목표"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-TOPO-ANYON.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-TOPO-ANYON.md.
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
