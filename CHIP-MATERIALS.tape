#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_materials" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate Semiconductor Materials HEXA-MATERIALS"
  brief = "For a century, semiconductor materials have been a \"trial-and-error alchemy\" of single-material Si dependence plus empirical doping recipes. By repositioning six boundary materials — Diamond, SiC, GaN"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-MATERIALS.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-MATERIALS.md.
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
