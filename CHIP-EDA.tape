#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_eda" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate Design Automation HEXA-EDA"
  brief = "EDA (Electronic Design Automation) is the heart of semiconductor design. The six pipelines — Synthesis, P&R, DRC, LVS, STA, Formal — evolved separately over decades and cannot talk to each other, so o"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-EDA.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-EDA.md.
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
