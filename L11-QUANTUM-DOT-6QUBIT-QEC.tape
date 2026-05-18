#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l11_quantum_dot_6qubit_qec" :: identity-claim [d=2026-05-14 active]
  kind = "L11 양자점 아키텍처 — 6-qubit QEC (τ=4 syndrome + φ=2 logical)"
  brief = "**핵심 트레이드오프**: 거리 d=2 (검출만) 대신 **논리 qubit 용량 φ=2 배**와"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L11-QUANTUM-DOT-6QUBIT-QEC.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L11-QUANTUM-DOT-6QUBIT-QEC.md.
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
