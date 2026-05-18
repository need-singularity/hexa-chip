#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "protocol_bridge_20_rtl" :: identity-claim [d=2026-05-14 active]
  kind = "Protocol Bridge 20건 RTL Sketch — 2026-04-14 / CHIP-P5-2"
  brief = "- 프로젝트: n6-architecture / domains/compute/chip-architecture"
  parent = "dancinlab/hexa-chip"
  sibling-md = "PROTOCOL-BRIDGE-20-RTL.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in PROTOCOL-BRIDGE-20-RTL.md.
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
