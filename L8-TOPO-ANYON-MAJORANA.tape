#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l8_topo_anyon_majorana" :: identity-claim [d=2026-05-14 active]
  kind = "L8 HEXA-TOPO-ANYON — 6-anyon Majorana braid + sigma=12 topological charge (dedicated promotion version)"
  brief = "n=6, sigma(6)=12, phi(6)=2, tau(6)=4, sopfr(6)=5, J_2(6)=24"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L8-TOPO-ANYON-MAJORANA.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L8-TOPO-ANYON-MAJORANA.md.
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
