#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "gpgpu" :: identity-claim [d=2026-05-14 active]
  kind = "GPGPU Programming Model — vendor-agnostic SSOT"
  brief = "GPU silicon today divides cleanly into 6 ecosystems — NVIDIA (CUDA), AMD"
  parent = "dancinlab/hexa-chip"
  sibling-md = "GPGPU.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in GPGPU.md.
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
