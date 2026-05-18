#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "blockchain" :: identity-claim [d=2026-05-14 active]
  kind = "N6 Coin — 완전수 산술 블록체인 아키텍처"
  brief = "<!-- @allow-empty-section -->"
  parent = "dancinlab/hexa-chip"
  sibling-md = "BLOCKCHAIN.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in BLOCKCHAIN.md.
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
