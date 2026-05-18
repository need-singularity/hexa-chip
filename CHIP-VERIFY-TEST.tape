#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "chip_verify_test" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate Verification·test HEXA-VERIFY-TEST"
  brief = "semiconductor Verification(UVM / Formal / Emulation) and fabrication test(ATE / DFT / BIST / Burn-in)   as transformresolve . designsystem Stage at  simulation coverage 80% limit, fabrication Stage at"
  parent = "dancinlab/hexa-chip"
  sibling-md = "CHIP-VERIFY-TEST.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CHIP-VERIFY-TEST.md.
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
