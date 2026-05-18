#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "lorawan_cert" :: identity-claim [d=2026-05-14 active]
  kind = "LoRaWAN n=6 Certificate"
  brief = "- Project: n6-architecture / domains/compute/network-protocol"
  parent = "dancinlab/hexa-chip"
  sibling-md = "LORAWAN-CERT.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in LORAWAN-CERT.md.
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
