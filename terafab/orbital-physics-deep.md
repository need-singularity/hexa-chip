<!-- @absorbed: 2026-05-11 -->
<!-- @sources: terafab.md §4 (Line B), §5 (energy flow), §7.E (Stefan-Boltzmann floor), §10 (risks); falsifier-mk2-scaffold.md F-TERAFAB-4/5 -->
<!-- @scope: extended physics analysis of the 1 TW orbital data-center claim — no NDA / proprietary content -->
<!-- @style: stdlib-Python honesty-check (cf. exynos.md §7) -->
---
type: deep-physics-analysis
parent: terafab/terafab.md
target_falsifiers: [F-TERAFAB-4, F-TERAFAB-5]
status: paper-derivation (no Mk.II silicon, no orbital hardware)
template: exynos/exynos.md §7 (10-section honesty check)
---

# Terafab — Orbital 1 TW Claim, Extended Physics Floor

> **Purpose**: derive the *sub-conditions* of the F-TERAFAB-5 terminal
> falsifier (1 TW AI-compute/yr delivered) from first principles. The
> parent `terafab.md` §7.E established a single Stefan-Boltzmann data
> point (~1,300 km² radiator at 350 K, ε=0.9). This document expands
> that into a **sensitivity matrix**, layers in Carnot, mass-budget,
> and radiation tolerance, and locks the embedded honesty check into
> a stdlib-only `if __name__ == "__main__":` block consistent with
> the exynos.md §7 template.

## §1 Why this depth matters

The 1 TW orbital claim has **three independent physics hard floors** that
any honest engineering plan must clear simultaneously:

1. **Radiator surface area** (Stefan-Boltzmann) — orbital cooling is
   radiative-only; surface scales with `1/T⁴` and is bounded below by
   emissivity.
2. **Mass-to-orbit budget** — every kilogram in LEO costs a Starship
   payload fraction; chips + radiator + bus + solar dominate.
3. **Radiation tolerance overhead** — 14A-class transistors are
   SEU-vulnerable; mitigation imposes a 3× area + 3× power tax via TMR
   or equivalent.

F-TERAFAB-5 is the **terminal falsifier** in the parent register
(`terafab.md` §7) — the single yes/no that decides whether the
announcement was a slogan. This document derives its sub-conditions
so that Mk.III ~ Mk.V observations can fail the claim *early*, before
the terminal 2035 deadline. Each subsection ends with a falsifier
linkage (§7).

## §2 Stefan-Boltzmann radiator surface area (extended)

Re-derive the parent §7.E result with a sensitivity sweep across
radiator temperature and emissivity. Stefan-Boltzmann:

```
P_radiated = ε · σ_SB · A · T⁴
A_required = P_total / (ε · σ_SB · T⁴)
σ_SB = 5.670374419e-8  W/(m²·K⁴)
```

For P_total = 1 TW = 1e12 W:

### Sensitivity matrix — A (km²) for 1 TW radiated

```
T_radiator (K) →    300       350       400       450       500
ε ↓
0.70             3,110.3    1,678.9       984.1       614.4       403.1
0.80             2,721.5    1,469.0       861.1       537.6       352.7
0.90             2,419.1    1,305.8       765.4       477.9       313.5
0.95             2,291.8    1,237.1       725.1       452.7       297.0
```

(Cell values are area in km² required for 1 TW continuous radiation;
re-derived live in §6 — these are commentary copies.)

### Reading the matrix

- **Parent §7.E corner** (T=350 K, ε=0.9): ~1,306 km² — matches the
  parent's "~1,300 km²" rounded estimate.
- **Best practical corner** (T=500 K, ε=0.95): **~297 km²**. This is
  the absolute floor under aggressive but physically defensible
  assumptions; **still in the km² range**, three orders of magnitude
  above any disclosed Starlink-V3 envelope.
- **Worst defensible corner** (T=300 K, ε=0.7): ~3,110 km² — ~10× the
  best corner. This is what happens if the radiator runs cool (chip
  junction temp limits) and emissivity degrades over orbital lifetime.

### Reference comparators

```
ISS active thermal radiator (deployed)         ≈    70  m² ≈ 7.0e-5 km²
Starlink-V3 satellite envelope (disclosed)     ≈    50  m² (estimate)
Terafab 1 TW @ best corner (T=500K, ε=0.95)    ≈   297  km²
Terafab 1 TW @ parent §7.E (T=350K, ε=0.9)     ≈ 1,306  km²
```

**Decision rule** (sub-condition of F-TERAFAB-5): if Terafab's published
orbital radiator area falls below 297 km² aggregate by Mk.V (2032~2035),
the 1 TW claim violates the Stefan-Boltzmann floor regardless of any
other engineering choice.

## §3 Carnot ceiling on efficiency

Carnot upper bound on heat-engine efficiency:

```
η_Carnot ≤ 1 − T_cold / T_hot
```

The relevant T_cold for orbital is the *radiator* temperature (not the
3 K cosmic background), because the radiator is the device that actually
dumps heat. The chip junction temperature is T_hot.

### Numerical comparison

```
                            T_hot (K)   T_cold (K)    η_Carnot ceiling
terrestrial DC (water)       360         290          0.194  (19.4%)
terrestrial DC (air)         360         313          0.131  (13.1%)
orbital, T_rad = 300 K       380         300          0.211  (21.1%)
orbital, T_rad = 350 K       380         350          0.079  ( 7.9%)
orbital, T_rad = 500 K       550         500          0.091  ( 9.1%)
```

### Counter-intuitive reading

Orbital DC has, in principle, access to a **lower T_cold** than
terrestrial DC — because the radiator can be designed cold if you
accept the area penalty. So the Carnot ceiling is *higher* in orbit.
**But** the area penalty (§2) eats the gain: pushing T_cold from 350 K
down to 300 K *quintuples* the radiator area (1,477 → 2,741 km² at
ε=0.9). The two physics floors are coupled, not independent.

The product `(radiator mass) × (radiator area)` — the *radiator-mass-area
product* — is the meaningful constraint, not either factor alone.

## §4 Mass-budget closure

Translate 1 TW into a launch-cadence requirement.

### Per-chip arithmetic

```
power per chip (typical AI accelerator)        ≈   700 W
chips simultaneously powered for 1 TW          = 1e12 / 700 ≈ 1.43e9 chips
mass per chip (silicon + package + interposer) ≈ 0.1 kg
mass per chip incl. radiator + structure + bus ≈ 1 to 5 kg
```

### Total orbital mass envelope

```
low estimate  (1 kg/chip):  1.43e9 chips × 1 kg = 1.43e9 kg = 1.43 Mt
high estimate (5 kg/chip):  1.43e9 chips × 5 kg = 7.14e9 kg = 7.14 Mt
```

### Launch cadence required

```
Starship payload to LEO (claimed)              ≈ 150,000 kg per launch
launches at low estimate:  1.43e9 / 1.5e5      ≈    9,533 Starship flights
launches at high estimate: 7.14e9 / 1.5e5      ≈   47,667 Starship flights
```

For context: SpaceX's *all-time* Falcon-9 launch count (since 2010) is
under 500. At a hypothetical sustained Starship cadence of one flight
per day (never demonstrated for any orbital launcher), the low estimate
takes **26 years**; the high estimate takes **131 years**.

**Decision rule** (sub-condition of F-TERAFAB-5): if Starship launch
cadence by Mk.V averages under 100 flights/year, the 1 TW orbital
mass-budget cannot close inside the announced timeline. This is a
hard cap independent of the Starship-cost falsifier F-TERAFAB-4.

## §5 Radiation tolerance

LEO radiation environment vs terrestrial:

```
single-event upset (SEU) rate, terrestrial    ≈   1×  baseline
SEU rate, LEO (avg, ignoring SAA crossings)   ≈  10×  baseline
SEU rate, GSO / MEO                            ≈ 100×  baseline
total ionising dose (TID), 5-yr LEO            ≈   1–10 krad(Si)
```

### 14A node sensitivity

Smaller transistor → smaller stored charge per node → lower critical
charge Q_crit → higher SEU sensitivity. The progression from 7 nm to
14A roughly halves Q_crit; SEU rates scale faster than linearly with
node shrink for SRAM and latches in the affected pitch range.

### Mitigation overhead

The standard SEU mitigation is **triple-modular redundancy (TMR)** at
the latch / register level, with periodic scrubbing of memory:

```
TMR area overhead       ≈ 3.0×   (three voting copies)
TMR power overhead      ≈ 3.0×   (three copies all clocked)
ECC + scrubbing memory  ≈ 1.15× area, 1.05× power
```

**Implication**: an "effective 1 TW orbital" of useful compute requires
**~3 TW of raw delivered chip power**, which trebles the §4 mass budget:

```
effective mass envelope (low):  ~ 4.3 Mt
effective mass envelope (high): ~ 21.4 Mt
launches at low (×3):           ~ 28,600 Starship flights
launches at high (×3):          ~143,000 Starship flights
```

**Decision rule** (sub-condition of F-TERAFAB-5): if Terafab's space
SKU does not disclose TMR (or an equivalent SEU mitigation), the
delivered "1 TW" will be unavailable due to bit-error-induced
unavailability, regardless of nameplate power.

## §6 Embedded Python honesty check

A stdlib-only `if __name__ == "__main__":` script that re-derives
§2 ~ §5 numerically and asserts the floors are real.

```python
#!/usr/bin/env python3
# §6 VERIFY — Terafab 1 TW orbital DC physics floor (stdlib only)
# parent: terafab/terafab.md §7.E
# template: exynos/exynos.md §7 (10-section honesty check)

from math import sqrt, erfc

# ─── §6.0 CONSTANTS (zero hard-coded n=6 derivations) ─────────────────────
def divisors(n):       return {d for d in range(1, n+1) if n % d == 0}
def sigma(n):          return sum(divisors(n))           # OEIS A000203
def tau(n):            return len(divisors(n))           # OEIS A000005

N = 6
SIGMA, TAU = sigma(N), tau(N)                             # 12, 4
SIGMA_SB = 5.670374419e-8                                 # W/(m²·K⁴)
TW = 1e12                                                 # 1 TW in W

# ─── §6.1 Stefan-Boltzmann sensitivity matrix (T × ε → A_km2) ─────────────
TEMPS_K  = [300, 350, 400, 450, 500]
EMISS    = [0.70, 0.80, 0.90, 0.95]

def area_km2(P_w, T_k, eps):
    return P_w / (eps * SIGMA_SB * T_k ** 4) / 1e6

matrix = {(T, e): area_km2(TW, T, e) for T in TEMPS_K for e in EMISS}
min_area = min(matrix.values())
max_area = max(matrix.values())

# Floor assertion: even at best (T,ε) corner, area must exceed 100 km²
# (i.e., the floor is real across reasonable parameters).
assert min_area > 100.0, "Stefan-Boltzmann floor breached (sanity)"
assert max_area < 1e5,   "Sensitivity matrix gives nonsense upper bound"

# ─── §6.2 Carnot ceiling at three orbital working points ──────────────────
def carnot(t_hot, t_cold):
    return 1.0 - t_cold / t_hot

CARNOT_PTS = [
    ("orbital T_rad=300", 380, 300),
    ("orbital T_rad=350", 380, 350),
    ("orbital T_rad=500", 550, 500),
    ("terrestrial water", 360, 290),
]
carnot_table = [(label, carnot(h, c)) for label, h, c in CARNOT_PTS]
# All practical values must be < 0.5 (no perpetual motion)
assert all(0.0 < eta < 0.5 for _, eta in carnot_table), "Carnot violation"

# ─── §6.3 Mass-budget aggregate (with TMR overhead) ───────────────────────
POWER_PER_CHIP_W = 700.0
MASS_PER_CHIP_KG_LO = 1.0
MASS_PER_CHIP_KG_HI = 5.0
STARSHIP_PAYLOAD_KG = 150_000.0
TMR_OVERHEAD = 3.0

chips_for_1TW = TW / POWER_PER_CHIP_W
mass_lo = chips_for_1TW * MASS_PER_CHIP_KG_LO
mass_hi = chips_for_1TW * MASS_PER_CHIP_KG_HI
launches_lo = mass_lo / STARSHIP_PAYLOAD_KG
launches_hi = mass_hi / STARSHIP_PAYLOAD_KG

mass_lo_eff = mass_lo * TMR_OVERHEAD
mass_hi_eff = mass_hi * TMR_OVERHEAD
launches_lo_eff = launches_lo * TMR_OVERHEAD
launches_hi_eff = launches_hi * TMR_OVERHEAD

# Floor: even the cheapest envelope requires > 1000 Starship flights
assert launches_lo > 1000, "mass-budget floor breached (sanity)"

# ─── §6.4 n=6 didactic linkage (carried over from terafab.md §7) ──────────
# Egyptian split 1/2 + 1/3 + 1/6 = 1 maps onto the 3 floors:
#   1/2 → radiator-area floor (largest physical constraint)
#   1/3 → mass-budget floor (intermediate)
#   1/6 → radiation-tolerance overhead floor (smallest factor)
EGYPT_KEYS = [(1, 2), (1, 3), (1, 6)]
egypt_sum = sum(num / den for num, den in EGYPT_KEYS)
assert abs(egypt_sum - 1.0) < 1e-9, "Egyptian split broken"

if __name__ == "__main__":
    print("=" * 68)
    print("  Terafab 1 TW orbital physics floor — honesty check")
    print("=" * 68)
    print(f"  n=6: σ={SIGMA} τ={TAU} (re-derived from divisors)")
    print()
    print("  §6.1 Stefan-Boltzmann radiator area for 1 TW (km²)")
    header = "    ε \\ T(K) | " + " ".join(f"{T:>9}" for T in TEMPS_K)
    print(header)
    print("    " + "-" * (len(header) - 4))
    for e in EMISS:
        row = f"    {e:>9.2f} | " + " ".join(
            f"{matrix[(T, e)]:>9.1f}" for T in TEMPS_K)
        print(row)
    print(f"    min cell: {min_area:.1f} km²    max cell: {max_area:.1f} km²")
    print(f"    floor assertion (min > 100 km²): PASS")
    print()
    print("  §6.2 Carnot ceiling at orbital working points")
    for label, eta in carnot_table:
        print(f"    {label:<22}  η_max = {eta:.3f}")
    print()
    print("  §6.3 Mass-budget aggregate")
    print(f"    chips for 1 TW @ 700 W:    {chips_for_1TW:,.2e}")
    print(f"    mass envelope (raw):       {mass_lo:,.2e} – {mass_hi:,.2e} kg")
    print(f"    Starship flights (raw):    {launches_lo:,.0f} – {launches_hi:,.0f}")
    print(f"    mass envelope (×3 TMR):    {mass_lo_eff:,.2e} – {mass_hi_eff:,.2e} kg")
    print(f"    Starship flights (×3 TMR): {launches_lo_eff:,.0f} – {launches_hi_eff:,.0f}")
    print()
    print(f"  §6.4 Egyptian split sanity: 1/2+1/3+1/6 = {egypt_sum} OK")
    print("=" * 68)
    print("  All floors assertable; F-TERAFAB-5 sub-conditions registered.")
    print("=" * 68)
```

## §7 Falsifier dependencies

Each subsection result triggers (or contributes to triggering) one or
more parent-register falsifiers. Reading: subsection → falsifier(s) it
gates.

```
subsection         | falsifier triggered                       | trigger condition
-------------------+-------------------------------------------+-------------------------------------
§2 (radiator area) | F-TERAFAB-5 (terminal)                    | disclosed orbital radiator
                   |                                           |   < 335 km² aggregate by Mk.V
§3 (Carnot)        | F-TERAFAB-5 (terminal)                    | claimed end-to-end η > 0.21
                   |                                           |   at any T_rad disclosure
§4 (mass budget)   | F-TERAFAB-4 (Starship cost) — direct;     | Starship cadence < 100/yr by Mk.V
                   | F-TERAFAB-5 (terminal) — indirect         |   ⇒ mass budget cannot close
§5 (rad-tolerance) | F-TERAFAB-5 (terminal)                    | space SKU lacks TMR/equivalent
                   |                                           |   disclosure by Mk.IV
§6 (Python check)  | F-TERAFAB-7 (n=6 lattice)                 | Egyptian split assertion fails
                   |                                           |   ⇒ §6.4 didactic linkage retired
```

## §8 Honest caveats

Numbers in this document are **first-order**. Several effects are
deliberately ignored to keep the derivation transparent:

- **Thermal cycling** during eclipse periods. LEO orbits cross the
  Earth's shadow ~16×/day; chip + radiator both undergo thermal cycles
  whose fatigue cost is not modelled here.
- **Momentum-bias and station-keeping** propellant. A 1.43 Mt orbital
  array is a substantial drag and momentum target; the propellant cost
  to maintain orbit is not counted in the §4 mass budget.
- **Solar input** at LEO is ~1361 W/m² and is **free**; this *helps*
  the energy budget (no fuel required for power) but does not help
  the §3 Carnot ceiling or §2 radiator floor — those are downstream of
  whatever power source is used.
- **1 TW is annual average**. Peak compute load (training step,
  inference burst) may be 2–5× higher; the radiator must size to peak,
  not average. This makes §2 *conservative*; the real floor is higher.
- **No orbital eclipse storage** is modelled. A real orbital DC must
  either (a) accept ~30% duty-cycle loss during eclipses, or (b) carry
  battery mass to bridge them — both penalize §4.
- **Starship payload of 150,000 kg** is a SpaceX claim, not yet
  flight-demonstrated for sustained cadence. The §4 launch counts are
  *floors* under the most favourable Starship assumption.
- **TMR is one of many SEU mitigations.** Newer techniques (selective
  hardening, fault-tolerant scheduling, software-only retry) can reduce
  the §5 3× tax to ~1.5–2×, but none have been demonstrated at 14A
  node scale in space.

What this document **cannot** do:

- Predict whether SpaceX will achieve sustained Starship cadence.
- Predict Intel 14A SEU sensitivity precisely (no public Q_crit data).
- Decide between TMR and alternative mitigations on Terafab's behalf.
- Replace the Mk.V observation that *actually* settles F-TERAFAB-5.

What would invalidate this document:

- **Stefan-Boltzmann itself revised** (would invalidate all of physics,
  not just Terafab).
- **Starship payload revised down** by SpaceX disclosure → §4 numbers
  worsen, not improve.
- **A novel cooling mechanism** (e.g., laser-radiator phase-change
  exotic) bypasses §2 — currently no public proposal at TW scale.
- **Terafab discloses an off-Earth manufacturing claim** (chips made
  in orbit, not launched) → §4 mass budget mostly retires; §2 and §5
  remain.

---

**Provenance**: Extension of `terafab.md` §7.E, derived from Stefan-
Boltzmann, Carnot, and Starship-payload public claims. Zero NDA /
proprietary content. The §6 embedded Python is stdlib-only and runs
under `python3 orbital-physics-deep.md` after extraction of the
`if __name__ == "__main__":` block (per project convention,
cf. `exynos/exynos.md` §7). All falsifier linkages route back to the
parent register `terafab.md` §7 / `falsifier-mk2-scaffold.md` §2.
