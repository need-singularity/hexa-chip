#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_macos" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate macOS Mx SoC (HEXA-MACOS)"
  brief = "The n=6 M-series next-generation architecture is the product of compromises accumulated over decades. Different pitches per core, different voltages per power rail, different headers per protocol."
  parent = "dancinlab/hexa-chip"
  sibling-md = "HEXA-MACOS.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-MACOS.md.
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
