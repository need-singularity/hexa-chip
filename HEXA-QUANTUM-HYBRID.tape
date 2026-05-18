#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_quantum_hybrid" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-QUANTUM-HYBRID -- Level 7 (양자-고전 하이브리드 칩) 아키텍처 설계"
  brief = "**Rating**: 7/10 -- 6큐비트 hexagonal 모듈 + σ(6)=12 커플링 + surface code d=6 + τ(6)=4 신드롬 추출 + Egyptian 극저온 전력"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-QUANTUM-HYBRID.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-QUANTUM-HYBRID.md.
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
