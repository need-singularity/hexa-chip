#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "certificates" :: identity-claim [d=2026-05-14 active]
  kind = "certificates — network-protocol certification sub-domain"
  brief = "This sub-domain tracks certification specifications for the `network-protocol` domain."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CERTIFICATES.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CERTIFICATES.md.
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
