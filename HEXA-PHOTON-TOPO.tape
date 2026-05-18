#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_photon_topo" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-PHOTON-TOPO -- Level 9 (광양자 위상 융합 칩) 아키텍처 설계"
  brief = "**Rating**: 7/10 -- n=6 광양자 융합: sigma=12 광 모드 + tau=4 위상 편조 + phi=2 편광 큐비트 + n=6 파장 WDM + Egyptian 전력 분배 + 상온-극저온 광 브릿지"
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-PHOTON-TOPO.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-PHOTON-TOPO.md.
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
