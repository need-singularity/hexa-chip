#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "cryptography" :: identity-claim [d=2026-05-14 active]
  kind = "궁극의 암호학 — HEXA-CRYPTO"
  brief = "Zero-trust world: every bit encrypted, every proof verified, every key quantum-safe."
  parent = "dancinlab/hexa-chip"
  sibling-md = "CRYPTOGRAPHY.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CRYPTOGRAPHY.md.
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
