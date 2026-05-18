#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "xn6_isa_24_spec" :: identity-claim [d=2026-05-14 active]
  kind = "Ultimate XN6 24-bit ISA Spec (HEXA-ISA24)"
  brief = "A J₂=24 slot instruction specification is the product of decades of accumulated trade-offs. Different pitch per core, different voltage per power source, different headers per protocol."
  parent = "dancinlab/hexa-chip"
  sibling-md = "XN6-ISA-24-SPEC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in XN6-ISA-24-SPEC.md.
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
