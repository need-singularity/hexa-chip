#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "vt_6tier_terminal" :: identity-claim [d=2026-05-14 active]
  kind = "VT 6-tier Terminal 프로토콜 (HEXA-VT-6)"
  brief = "터미널 렌더링·입력·스트림·보안·OS 브리지·AI 네이티브 6 계층으로 분해한 n=6 터미널 프로토콜 스펙. `hexa-macos` / `hexa-ios` SoC 위에서 VOID 에디터와 1:1 통신하며, 기존 VT100/ANSI/xterm 누적 부채를 버리고 τ(6)=4 파이프 + σ(6)=12 채널로 재설계."
  parent = "dancinlab/hexa-chip"
  sibling-md = "VT-6TIER-TERMINAL.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in VT-6TIER-TERMINAL.md.
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
