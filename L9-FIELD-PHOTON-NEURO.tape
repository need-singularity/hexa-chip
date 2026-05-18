#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l9_field_photon_neuro" :: identity-claim [d=2026-05-14 active]
  kind = "L9 HEXA-FIELD / PHOTON-TOPO / NEUROMORPHIC — 3 sub-layer integration (dedicated promotion version)"
  brief = "n=6, sigma=12, phi=2, tau=4, J_2=24"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L9-FIELD-PHOTON-NEURO.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L9-FIELD-PHOTON-NEURO.md.
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
