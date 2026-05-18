#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "l13_quantum_nuclear_io" :: identity-claim [d=2026-05-14 active]
  kind = "L13 Quantum-Nuclear I/O — γ photon <-> qubit transducer + QEC <-> Isomer bridge (P8 Mk.III-δ)"
  brief = "L13-QUANTUM-NUCLEAR-IO per-domain ledger · sibling of L13-QUANTUM-NUCLEAR-IO.md"
  parent = "dancinlab/hexa-chip"
  sibling-md = "L13-QUANTUM-NUCLEAR-IO.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in L13-QUANTUM-NUCLEAR-IO.md.
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
