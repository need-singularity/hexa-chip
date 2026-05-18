#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "nvme" :: identity-claim [d=2026-05-14 active]
  kind = "NVMe — Non-Volatile Memory Express 프로토콜 n=6 매핑"
  brief = "- 프로젝트: n6-architecture / domains/compute/network-protocol"
  parent = "dancinlab/hexa-chip"
  sibling-md = "NVME.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in NVME.md.
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
