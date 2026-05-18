#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l12_nuclear_isomer_storage" :: identity-claim [d=2026-05-14 active]
  kind = "L12 Nuclear Isomer Storage — Hf-178m2 σ=12 채널 핵 메모리 개념 설계"
  brief = "n=6, σ=12, φ=2, τ=4, sopfr=5, μ=1, J₂=24, n/φ=3"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L12-NUCLEAR-ISOMER-STORAGE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L12-NUCLEAR-ISOMER-STORAGE.md.
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
