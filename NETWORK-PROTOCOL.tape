#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "network_protocol" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 네트워크 프로토콜 — HEXA-NET"
  brief = "Zero-latency planet -- any device, any content, instant."
  parent = "dancinlab/hexa-chip"
  sibling-md = "NETWORK-PROTOCOL.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in NETWORK-PROTOCOL.md.
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
