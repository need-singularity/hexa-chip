#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_thermal_power" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate heat·power supply HEXA-THERMAL-POWER"
  brief = "large datacenter of   case computationspeed not ** column and power supply**. NVIDIA H100 1large TDP 700W, GPT-4 learning one at MW power, server temperature management at baseratio of 40% available a"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-THERMAL-POWER.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-THERMAL-POWER.md.
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
