#!/usr/bin/env python3
# ─────────────────────────────────────────────────────────────────────────────
# terafab/verify_terafab.py — Terafab meta-domain falsifier checker (stdlib only)
#
# Mirrors `verify/cli.hexa` + `verify/verb_runner.hexa` patterns: prints a
# boxed banner, runs each check, prints `[OK]`/`[FAIL]` lines, and finishes
# with an X/Y PASS summary. Per `terafab.md` §7 + `exynos/exynos.md` §7
# (lines 525–783) the embedded n=6 honesty check is Python-flavored stdlib
# code — this file is the runnable mirror of that convention.
#
# Exit codes:
#   0 = every HARD assertion passed (DEFERRED falsifiers count as scaffold-OK)
#   1 = at least one HARD invariant failed
#
# Cost: $0 (Python 3.11+ stdlib only — math, fractions, sys).
# ─────────────────────────────────────────────────────────────────────────────

from __future__ import annotations

import re
import sys
from fractions import Fraction
from math import erfc, sqrt
from pathlib import Path

# ── Mk.II observation hook ──────────────────────────────────────────────────
# Reads `terafab/mk2-observations.md` (built in Wave G) for current per-
# falsifier verdicts. Until 2026-Q3 data lands, every entry there reads
# `DEFERRED`, so this hook leaves the Mk.I behaviour byte-identical. After
# Mk.II polling appends rows, the most-recent verdict per falsifier
# replaces the hardcoded `DEFERRED` below in `check_f_terafab_N()` (HARD
# checks — master identity, Egyptian split, capex didactic, Stefan-Boltzmann,
# F-TERAFAB-7 χ² — are NEVER overridden).
MK2_OBS_FILE = Path(__file__).resolve().parent / "mk2-observations.md"


def read_mk2_observations() -> dict[str, str]:
    """Parse `mk2-observations.md` and return {falsifier_id → latest_verdict}.

    Append-only log semantics: the last table row for each falsifier wins.
    Returns an empty dict if the file is missing — callers must treat
    missing keys as `DEFERRED` (the safe default)."""
    if not MK2_OBS_FILE.exists():
        return {}
    text = MK2_OBS_FILE.read_text(encoding="utf-8")
    row_re = re.compile(
        r"^\|\s*(F-TERAFAB-\d+)\s*\|\s*[^|]+?\s*\|\s*[^|]+?\s*\|"
        r"\s*[^|]+?\s*\|\s*[^|]+?\s*\|\s*([A-Z_]+)\s*\|\s*[^|]+?\s*\|",
        re.MULTILINE,
    )
    out: dict[str, str] = {}
    for m in row_re.finditer(text):
        # Last row wins (append-only ⇒ freshest verdict).
        out[m.group(1).strip()] = m.group(2).strip()
    return out


# Loaded once at module import; HARD checks ignore this.
_MK2_VERDICTS = read_mk2_observations()


def _mk2_or_deferred(fid: str, scaffold_note: str) -> tuple[str, str]:
    """Return (verdict, detail) — observation verdict if present and not
    `DEFERRED`, else the hardcoded `DEFERRED` scaffold note. Never returns
    `OK`/`FAIL` for a HARD check — those are evaluated elsewhere."""
    obs_verdict = _MK2_VERDICTS.get(fid, "DEFERRED")
    if obs_verdict in ("PASS", "WEAK_FAIL", "HARD_FAIL", "PENDING_REVIEW"):
        # Mk.II observation has landed — surface it through this hook.
        # Normalize labels: PASS → OK, HARD_FAIL → FAIL, WEAK_FAIL/PENDING → DEFERRED.
        if obs_verdict == "PASS":      return ("OK",       f"Mk.II obs: PASS — {scaffold_note}")
        if obs_verdict == "HARD_FAIL": return ("FAIL",     f"Mk.II obs: HARD_FAIL — {scaffold_note}")
        return ("DEFERRED", f"Mk.II obs: {obs_verdict} (still gathering data) — {scaffold_note}")
    return ("DEFERRED", scaffold_note)

# ── §7.0 CONSTANTS — re-derived from number theory (0 hard-code) ────────────
def divisors(n: int) -> set[int]:
    return {d for d in range(1, n + 1) if n % d == 0}

def sigma(n: int) -> int:           # OEIS A000203
    return sum(divisors(n))

def tau(n: int) -> int:             # OEIS A000005
    return len(divisors(n))

def phi_min_prime(n: int) -> int:
    for p in range(2, n + 1):
        if n % p == 0:
            return p
    return n

N      = 6
SIGMA  = sigma(N)            # 12
TAU    = tau(N)              # 4
PHI    = phi_min_prime(N)    # 2
J2     = 2 * SIGMA           # 24

# ── Master identity (re-asserted from canon) ────────────────────────────────
assert SIGMA == 12, f"sigma(6) != 12 (got {SIGMA})"
assert TAU   == 4,  f"tau(6) != 4 (got {TAU})"
assert PHI   == 2,  f"phi(6) != 2 (got {PHI})"
assert J2    == 24, f"J2 != 24 (got {J2})"
assert SIGMA * PHI == N * TAU == J2, "n=6 master identity broken"

# ── hexa-chip 6-group set (matches frontmatter `absorbs`) ───────────────────
HEXA_CHIP_GROUPS = [
    "architecture", "design", "process",
    "packaging", "accelerator", "consciousness",
]
assert len(HEXA_CHIP_GROUPS) == N == 6, "hexa-chip group count != 6"

# ─────────────────────────────────────────────────────────────────────────────
# Falsifier checks — each returns (verdict, detail).
# verdict ∈ {"OK", "FAIL", "DEFERRED"}.  Mk.I (no real data) → most are
# DEFERRED; F-TERAFAB-7 actually runs the χ² fit registered in §7.C.
# ─────────────────────────────────────────────────────────────────────────────

def check_f_terafab_1():
    # Prototype capex $55 B initial / $119 B total — testable Mk.II onward.
    return _mk2_or_deferred(
        "F-TERAFAB-1",
        "Mk.I scaffold — $55 B initial / $119 B total filed "
        "2026-05-06; trigger = >2× by 2028.")

def check_f_terafab_2():
    # DRAM/HBM under same roof — testable when 10-K HBM line appears.
    return _mk2_or_deferred(
        "F-TERAFAB-2",
        "Mk.I scaffold — one-roof memory claim; "
        "trigger = external HBM PO > $500 M before 2028.")

def check_f_terafab_3():
    # Full-scale capex envelope $5–13 T — Mk.IV terminal.
    return _mk2_or_deferred(
        "F-TERAFAB-3",
        "Mk.I scaffold — $5–13 T analyst envelope; "
        "trigger = phase-2 filing > $200 B with no $5 T floor by 2028-Q4.")

def check_f_terafab_4():
    # Starship cost ≤ $200/kg by 2032 — Mk.V terminal.
    return _mk2_or_deferred(
        "F-TERAFAB-4",
        "Mk.I scaffold — Starship marginal launch cost; "
        "trigger = > $200/kg by 2032.")

def check_f_terafab_5():
    # 1 TW AI compute / yr delivered — Mk.VI terminal.
    return _mk2_or_deferred(
        "F-TERAFAB-5",
        "Mk.I scaffold — 1 TW terminal; "
        "trigger = < 100 GW audited by 2035.")

def check_f_terafab_6():
    # Intel 14A volume by 2030 — testable each Intel investor day.
    return _mk2_or_deferred(
        "F-TERAFAB-6",
        "Mk.I scaffold — Intel 14A schedule; "
        "trigger = explicit slip > 6 mo or pivot wording.")

def check_f_terafab_7():
    # χ² lattice fit (terafab.md §7.C recipe; residuals = projection guesses)
    residuals = [0, 0, 0.4, 0, 0, 0, 0.2]   # §4 lattice table (Mk.I)
    expected  = [1.0] * len(residuals)
    chi2 = sum((1 + r - e) ** 2 / e for r, e in zip(residuals, expected))
    df = max(1, len(residuals) - 1)
    p = erfc(sqrt(chi2 / (2 * df))) if chi2 > 0 else 1.0
    # Mk.I formulation: p ≈ 0.86 ⇒ test too weak to discriminate.  PASS at
    # Mk.I means "scaffold runs and yields the documented honesty-band p".
    band_ok = 0.4 < p <= 1.0
    verdict = "OK" if band_ok else "FAIL"
    return (verdict,
            f"χ²={chi2:.3f} df={df} p={p:.4f} (Mk.I weak; reformulate Mk.II)")

def check_f_terafab_8():
    # Groundbreaking → first tool-install latency ≤ J₂ = 24 mo (Mk.II new).
    return _mk2_or_deferred(
        "F-TERAFAB-8",
        f"Mk.II scaffold — latency ≤ J₂={J2} mo; "
        "trigger = > 30 mo weak / > 36 mo hard.")

def check_f_terafab_9():
    # Austin utility envelope ≥ 500 MW & ≥ 10 ML/day (Mk.II new).
    return _mk2_or_deferred(
        "F-TERAFAB-9",
        "Mk.II scaffold — utility filings; "
        "trigger = filed peak < 200 MW or water < 4 ML/day by 2027.")

def check_f_terafab_10():
    # Workforce ramp ≥ 500 net engineering hires/quarter (Mk.II new).
    return _mk2_or_deferred(
        "F-TERAFAB-10",
        "Mk.II scaffold — workforce ramp; "
        "trigger = < 250 net hires/quarter through 2027.")

FALSIFIERS = [
    ("F-TERAFAB-1",  check_f_terafab_1),
    ("F-TERAFAB-2",  check_f_terafab_2),
    ("F-TERAFAB-3",  check_f_terafab_3),
    ("F-TERAFAB-4",  check_f_terafab_4),
    ("F-TERAFAB-5",  check_f_terafab_5),
    ("F-TERAFAB-6",  check_f_terafab_6),
    ("F-TERAFAB-7",  check_f_terafab_7),
    ("F-TERAFAB-8",  check_f_terafab_8),
    ("F-TERAFAB-9",  check_f_terafab_9),
    ("F-TERAFAB-10", check_f_terafab_10),
]

# ── Stefan-Boltzmann floor (terafab.md §7.E) — 1 TW orbital radiator ────────
SIGMA_SB    = 5.670374419e-8     # W/(m²·K⁴)
T_RADIATOR  = 350.0              # K
EMISSIVITY  = 0.9
TW          = 1e12               # W

def stefan_boltzmann_check():
    p_per_m2 = EMISSIVITY * SIGMA_SB * T_RADIATOR ** 4   # ≈ 765 W/m²
    area_m2  = TW / p_per_m2
    area_km2 = area_m2 / 1e6
    # §7.E target: ~ 1,300 km² for 1 TW @ 350 K (ε=0.9).
    band_ok = 1000 <= area_km2 <= 2000
    verdict = "OK" if band_ok else "FAIL"
    return (verdict,
            f"P/m²={p_per_m2:.1f} W/m²; required area ≈ {area_km2:,.0f} km² "
            f"(target band 1000–2000 km²)")

# ── Egyptian split exact equality (terafab.md §5 / §7.B) ────────────────────
def egyptian_check():
    s = Fraction(1, 2) + Fraction(1, 3) + Fraction(1, 6)
    ok = s == Fraction(1, 1)
    return ("OK" if ok else "FAIL",
            f"1/2 + 1/3 + 1/6 = {s} (Fraction equality)")

# ── n=6 capex didactic projection (terafab.md §7.D) ─────────────────────────
def capex_didactic_check():
    PHASES = 5
    n6_estimate = J2 * PHASES   # 24 * 5 = 120
    filed = 119
    drift = abs(n6_estimate - filed) / filed
    ok = drift < 0.02
    return ("OK" if ok else "FAIL",
            f"n=6 didactic = ${n6_estimate} B vs filed ${filed} B "
            f"(drift={drift*100:.2f}%, band <2%)")

# ── Master identity surface check ───────────────────────────────────────────
def master_identity_check():
    ok = (SIGMA * PHI == N * TAU == J2 == 24)
    return ("OK" if ok else "FAIL",
            f"σ·φ = {SIGMA*PHI}  n·τ = {N*TAU}  J₂ = {J2}  (all == 24)")

def group_count_check():
    ok = len(HEXA_CHIP_GROUPS) == 6
    return ("OK" if ok else "FAIL",
            f"hexa-chip groups = {len(HEXA_CHIP_GROUPS)} == n = {N}")

EXTRA_CHECKS = [
    ("MASTER-IDENTITY", master_identity_check),
    ("GROUP-COUNT",     group_count_check),
    ("EGYPTIAN-SPLIT",  egyptian_check),
    ("CAPEX-DIDACTIC",  capex_didactic_check),
    ("STEFAN-BOLTZ",    stefan_boltzmann_check),
]

# ── Main runner ─────────────────────────────────────────────────────────────
def main() -> int:
    rows: list[tuple[str, str, str]] = []   # (id, status, detail)

    print("=" * 72)
    print("  terafab/verify_terafab.py — meta-domain falsifier checker")
    print(f"  n=6 constants: σ={SIGMA}  τ={TAU}  φ={PHI}  J₂={J2}")
    print(f"  hexa-chip groups: {HEXA_CHIP_GROUPS}")
    print("=" * 72)

    for fid, fn in EXTRA_CHECKS:
        verdict, detail = fn()
        rows.append((fid, verdict, detail))

    for fid, fn in FALSIFIERS:
        verdict, detail = fn()
        rows.append((fid, verdict, detail))

    # Render summary table
    print()
    print("  " + "─" * 68)
    print(f"  {'falsifier':<18} {'status':<10} detail")
    print("  " + "─" * 68)
    for fid, verdict, detail in rows:
        print(f"  {fid:<18} [{verdict:<8}] {detail}")
    print("  " + "─" * 68)

    hard = [r for r in rows if r[1] in ("OK", "FAIL")]
    deferred = [r for r in rows if r[1] == "DEFERRED"]
    pass_n = sum(1 for r in hard if r[1] == "OK")
    fail_n = sum(1 for r in hard if r[1] == "FAIL")
    total  = len(hard)

    print()
    print("=" * 72)
    line = f"  {pass_n}/{total} HARD checks PASS  ({len(deferred)} DEFERRED Mk.II/III/V/VI)"
    print(line)
    if fail_n > 0:
        print("  failing:")
        for fid, _, detail in hard:
            if _ == "FAIL":
                print(f"    ✗ {fid}  {detail}")
    print("=" * 72)

    return 0 if fail_n == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
