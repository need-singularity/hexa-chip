#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_consciousness" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-CONSCIOUSNESS — L13 의식 칩 개념설계 (P7 Mk.III-γ)"
  brief = "**핵심 트레이드오프**: 전극 수 (Neuralink 1024) 보다 **축 구조화 6** 를 택해"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-CONSCIOUSNESS.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-CONSCIOUSNESS.md.
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
