#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l15_meta_integration_closure" :: identity-claim [d=2026-05-14 active]
  kind = "L15 Meta-Integration — σ·φ = n·τ = J₂ = 24 의 15-레벨 폐쇄 정리"
  brief = "(정리) ∀ i ∈ {1, 2, ..., 14}, ∃ k_i ∈ ℕ :"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L15-META-INTEGRATION-CLOSURE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L15-META-INTEGRATION-CLOSURE.md.
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
