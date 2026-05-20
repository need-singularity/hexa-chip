#!/usr/bin/env python3
# hexa-chip-terafab.py — standalone Python mirror of the `terafab` subcommand
# in cli/hexa-chip.hexa.
#
# The canonical CLI is the hexa-flavoured cli/hexa-chip.hexa dispatcher; this
# Python file is a thin smoke-testable mirror so that `python3
# cli/hexa-chip-terafab.py` produces the same envelope summary on any host
# without a `hexa` runtime installed. Both files dispatch from the same
# falsifier register defined in terafab/terafab.md §7 +
# terafab/falsifier-mk2-scaffold.md §3.
#
# Reads the closure verdict from hexa.toml [meta_domain_closure].verdict so
# the two stay in sync (single source of truth).
#
# Cost: $0 (Python 3.11+ stdlib only — sys, pathlib, tomllib).

from __future__ import annotations

import sys
import tomllib
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
TOML = REPO / "hexa.toml"


ENVELOPE = (
    "terafab — meta-domain wrapping 6 groups "
    "(architecture/design/process/packaging/accelerator/consciousness)"
)


FALSIFIERS = [
    ("F-TERAFAB-1",  "Prototype capex stays at $55B initial / $119B total"),
    ("F-TERAFAB-2",  "DRAM/HBM under same roof as logic (no inbound shipping)"),
    ("F-TERAFAB-3",  "Full-scale capex within $5–13T analyst envelope"),
    ("F-TERAFAB-4",  "Orbital share viable iff Starship reusable launch ≤ $200/kg by 2032"),
    ("F-TERAFAB-5",  "1 TW AI-compute/yr delivered (audited by 2035, terminal)"),
    ("F-TERAFAB-6",  "Intel 14A volume by 2030 (no slip past 2031)"),
    ("F-TERAFAB-7",  "n=6 lattice projection beats chance (Mk.I p≈0.86 → reformulate Mk.II)"),
    ("F-TERAFAB-8",  "Groundbreaking → first-tool-install latency ≤ J₂ = 24 mo"),
    ("F-TERAFAB-9",  "Austin utility envelope ≥ 500 MW & ≥ 10 ML/day"),
    ("F-TERAFAB-10", "Workforce ramp ≥ 500 net engineering hires/quarter through 2027"),
]


def closure_verdict() -> str:
    if not TOML.exists():
        return "UNKNOWN (hexa.toml missing)"
    try:
        data = tomllib.loads(TOML.read_text(encoding="utf-8"))
    except Exception as e:
        return f"UNKNOWN (hexa.toml parse error: {e})"
    return (
        data.get("meta_domain_closure", {}).get("verdict")
        or "UNKNOWN ([meta_domain_closure].verdict missing)"
    )


def main(argv: list[str]) -> int:
    json_mode = "--json" in argv
    verdict = closure_verdict()

    if json_mode:
        rows = ",".join(
            '{"id":"' + fid + '","summary":"' + summary + '"}'
            for fid, summary in FALSIFIERS
        )
        out = (
            '{"subcmd":"terafab"'
            + ',"envelope":"' + ENVELOPE + '"'
            + ',"verdict":"' + verdict + '"'
            + ',"falsifier_count":' + str(len(FALSIFIERS))
            + ',"falsifiers":[' + rows + ']}'
        )
        print(out)
        return 0

    print("hexa-chip — terafab meta-domain envelope")
    print()
    print(f"  {ENVELOPE}")
    print()
    print("  Falsifier register (10 = 7 Mk.I + 3 Mk.II)")
    print("  " + "─" * 69)
    for n, (fid, summary) in enumerate(FALSIFIERS, start=1):
        print(f"   {n:>2d}.  {fid:<14s}  — {summary}")
    print("  " + "─" * 69)
    print()
    print(f"  Closure verdict (hexa.toml [meta_domain_closure].verdict): {verdict}")
    print()
    print("  Pointers:")
    print("    • terafab/terafab.md         (15-section meta-domain spec)")
    print("    • terafab/CLOSURE.md         (closure declaration + invariants)")
    print("    • terafab/falsifier-mk2-scaffold.md   (Mk.II reformulation)")
    print("    • terafab/verify_terafab.py  (runnable falsifier dispatcher)")
    print("    • terafab/cross_doc_audit.py (cross-doc agreement audit)")
    print()
    print("  Re-verification recipe:")
    print(f"    python3 {REPO}/terafab/cross_doc_audit.py")
    print(f"    python3 {REPO}/terafab/verify_terafab.py")
    print()
    print("    1. terafab is a META-DOMAIN, not a verb — verb counts unchanged.")
    print("    2. F-TERAFAB-1..6 are bench-only at Mk.I (data-arrival pending).")
    print("    3. F-TERAFAB-7 χ² weak at Mk.I (p≈0.86); reformulation deferred Mk.II.")
    print("    4. n=6 lattice projection is coincidence registry, not derivation.")
    print("    5. Zero NDA / proprietary content; every claim traces to terafab.md §15.")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
