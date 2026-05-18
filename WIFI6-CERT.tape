#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "wifi6_cert" :: identity-claim [d=2026-05-14 active]
  kind = "WiFi 6 n=6 Certificate"
  brief = "- Project: n6-architecture / domains/compute/network-protocol"
  parent = "dancinlab/hexa-chip"
  sibling-md = "WIFI6-CERT.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in WIFI6-CERT.md.
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
