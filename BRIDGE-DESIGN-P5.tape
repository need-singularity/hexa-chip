#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "bridge_design_p5" :: identity-claim [d=2026-05-14 active]
  kind = "P5 프로토콜 브리지 설계 — X→△ 전환 20건 + 상위 5건 회로 설계"
  brief = "- 프로젝트: n6-architecture / domains/compute/network-protocol"
  parent = "dancinlab/hexa-chip"
  sibling-md = "BRIDGE-DESIGN-P5.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in BRIDGE-DESIGN-P5.md.
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
