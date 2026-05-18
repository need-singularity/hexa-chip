#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "mk3_roadmap_l1_l15_audit" :: identity-claim [d=2026-05-14 active]
  kind = "Mk.III 칩 로드맵 L1~L15 총괄 감사 (2026-04-15)"
  brief = "- **대상**: Mk.III 칩 로드맵 L1~L15 전 레벨"
  parent = "dancinlab/hexa-chip"
  sibling-md = "MK3-ROADMAP-L1-L15-AUDIT.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in MK3-ROADMAP-L1-L15-AUDIT.md.
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
