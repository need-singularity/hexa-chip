#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_photonic" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate Photonic Chip (HEXA-PHOTONIC)"
  brief = "n=6 silicon photonics integration is the product of decades of accumulated trade-offs. Each core has a different pitch, each power rail a different voltage, each protocol a different header."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-PHOTONIC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-PHOTONIC.md.
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
