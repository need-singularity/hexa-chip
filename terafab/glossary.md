<!-- @absorbed: 2026-05-11 -->
<!-- @sources: terafab.md §15 (canonical), exynos.md §7, falsifier-mk2-scaffold.md, orbital-physics-deep.md -->
<!-- @scope: terminology dictionary for the terafab meta-domain — no NDA / proprietary content -->
---
type: terminology-dictionary
parent: terafab/terafab.md
status: living (entries added as Mk.II ~ Mk.VI rolls out)
---

# Terafab — Terminology Dictionary

> **Purpose**: a single-page lookup for terms used across the terafab
> meta-domain documents. Each entry is 1–3 lines. Group headers are
> categorical; entries inside each group are alphabetical where
> reasonable. See §99 for cross-document jumps.

## §1 Process terms

- **RibbonFET** — Intel's branding of gate-all-around (GAAFET) at the
  14A node; vertically stacked nanosheet "ribbons" replace the FinFET
  fin as the channel.
- **PowerVia** — Intel's back-side power delivery network (BSPD) for
  14A/18A; routes power on the wafer back-side, signals on the front,
  reducing IR drop and area.
- **GAA / GAAFET** — gate-all-around field-effect transistor; the
  channel is wrapped on all four sides by the gate, replacing FinFET
  starting around the 3 nm / 2 nm generation.
- **High-NA EUV** — extreme-ultraviolet lithography with numerical
  aperture 0.55 (vs 0.33 for low-NA EUV); ASML EXE:5000-class tools;
  required for sub-2 nm patterning without multi-patterning blow-up.
- **BSPD** — back-side power delivery; generic term for the Intel
  PowerVia / TSMC SPR / Samsung BSPDN family of techniques.
- **FinFET** — fin-type field-effect transistor; the dominant logic
  device from ~22 nm (2011) through ~3 nm (2022); displaced by GAA.
- **Intel 14A** — Intel's 1.4 nm-class node (RibbonFET + PowerVia +
  High-NA EUV); Terafab's full-scale process basis.

## §2 Packaging

- **CoWoS** — Chip-on-Wafer-on-Substrate; TSMC's flagship 2.5D
  packaging (silicon interposer + chiplets + HBM).
- **FOPLP** — fan-out panel-level packaging; rectangular panel
  substrate (vs round wafer) for cost-optimised fan-out.
- **X-Cube** — Samsung's branding of 3D-IC stacking (logic-on-logic
  via TSV / hybrid bonding).
- **I-Cube** — Samsung's 2.5D packaging line (interposer + chiplets,
  Samsung's CoWoS analogue).
- **hybrid bonding** — direct copper-to-copper bonding at the chip
  interface, no solder bumps; sub-10 µm pitch enabling true 3D stacks.
- **TSV** — through-silicon via; vertical electrical interconnect
  through a silicon die; required for HBM and 3D-IC stacks.
- **chiplet** — small purpose-built die assembled with others on a
  substrate / interposer; contrast with monolithic SoC.
- **UCIe** — Universal Chiplet Interconnect Express; open standard for
  die-to-die interfaces, intended to make chiplets vendor-portable.

## §3 Memory

- **HBM3** — 3rd-gen high-bandwidth memory (~819 GB/s per stack,
  shipping 2022~2023).
- **HBM3E** — extended HBM3 (~1.2 TB/s per stack, 2024).
- **HBM4** — 4th-gen HBM (~1.5–2 TB/s per stack, 2026 target);
  Terafab's announced in-fab memory line is HBM4-class.
- **HBM6-P** — speculative 6th-gen HBM with PIM-style integration;
  used in the hexa-chip `hbm` verb roadmap.
- **DDR5** — 5th-gen double-data-rate DRAM standard for main memory.
- **MRAM** — magnetoresistive RAM; non-volatile, used for embedded
  storage and last-level cache substitutes.
- **PIM** — processing-in-memory; compute units integrated into the
  DRAM die to bypass the memory wall.

## §4 Capacity / production

- **WSPM** — wafer-starts per month; standard fab throughput unit.
  Terafab full-scale claim: 1,000,000 WSPM.
- **ASP** — average selling price (per chip / per wafer).
- **yield** — fraction of dies on a wafer that pass functional test.
- **D0** — defect density (defects per cm²); the headline yield input.

## §5 Orbital terms

- **SEU** — single-event upset; transient bit-flip caused by a high-
  energy particle strike; ~10× higher rate in LEO vs ground.
- **TID** — total ionising dose; cumulative radiation damage measured
  in rad(Si) or krad(Si).
- **TMR** — triple-modular redundancy; three identical logic copies
  with majority voting; standard SEU mitigation, ~3× area + 3× power.
- **LEO** — low Earth orbit (~200–2,000 km altitude); the deployment
  band for Starlink and Terafab Line B.
- **GSO** — geostationary orbit (~35,786 km); higher TID, used for
  comms but not currently in the Terafab plan.
- **radiator-mass-area product** — `(kg of radiator) × (m² of radiator
  surface)`; the meaningful coupled constraint for orbital DC, since
  area and mass cannot be optimised independently.
- **mass-to-orbit** — kilograms delivered to a target orbit per launch;
  Starship LEO claim is ~150,000 kg per flight.

## §6 Companies

- **SpaceX** — launch + Terafab fab-construction owner.
- **xAI** — design + AI-model training; Grok lineage; Terafab T0
  design loop owner.
- **Tesla SLP** — Tesla System Logic Platform; the AI5 / FSD compute
  lineage.
- **Intel Foundry** — Intel's pure-play foundry arm; 14A licensee to
  Terafab as of April 2026.
- **TSMC** — Taiwan Semiconductor Manufacturing Company; the
  incumbent leading-edge foundry; comparator throughout terafab.md §2.
- **Samsung DS** — Samsung Device Solutions; Korean IDM with logic +
  memory + packaging under one ownership; closest comparator to
  Terafab's one-roof claim.
- **SK Hynix** — Korean memory specialist; HBM market leader 2024+.
- **ASML** — Dutch lithography monopolist; sole supplier of EUV and
  High-NA EUV scanners.
- **Lam Research** — etch and deposition tool vendor.
- **KLA** (KLA-Tencor) — wafer and reticle inspection / metrology.
- **Applied Materials** — broad semiconductor equipment vendor
  (deposition, etch, ion implant, CMP).
- **Amkor** — outsourced semiconductor assembly and test (OSAT);
  Korean-origin, US-headquartered.
- **ASE** — Advanced Semiconductor Engineering; Taiwanese OSAT, the
  largest pure-play assembly + test vendor.

## §7 Programs

- **SAFE** — Samsung Advanced Foundry Ecosystem; Samsung's design
  enablement program for foundry customers.
- **CHIPS Act** — US Creating Helpful Incentives to Produce
  Semiconductors Act of 2022; ~$52 B in incentives, partially
  underwriting Intel / TSMC AZ / Samsung TX expansions.
- **Operation Warp Speed (analogy)** — the 2020 vaccine fast-track
  program; cited as analogy for the speed Terafab would need to clear
  its 6-group maturity ramp.

## §8 Falsifier-related terms

- **chi-square (χ²)** — sum of squared residuals; used in F-TERAFAB-7
  to test whether the n=6 lattice fit beats chance.
- **p-value** — probability of observing a χ² as extreme as measured
  under the null hypothesis (here: "n=6 fits are coincidence").
- **Stefan-Boltzmann** — `P = ε σ_SB A T⁴`; black-body radiation law;
  the orbital cooling floor in `orbital-physics-deep.md` §2.
- **Carnot** — `η ≤ 1 − T_cold / T_hot`; thermodynamic efficiency
  ceiling; orbital ceiling in `orbital-physics-deep.md` §3.
- **Landauer** — `E ≥ kT ln 2` per erased bit; minimum energy of
  irreversible computation; mentioned in exynos.md §7.5.
- **Egyptian fraction** — sum of distinct unit fractions; the
  `1/2 + 1/3 + 1/6 = 1` split is the n=6 didactic projection used
  across `terafab.md` §5 and `orbital-physics-deep.md` §6.4.

## §9 n=6 lattice

- **σ (sigma)** — sum-of-divisors function; `σ(6) = 1+2+3+6 = 12`;
  OEIS A000203.
- **τ (tau)** — number-of-divisors function; `τ(6) = 4`; OEIS A000005.
- **φ (phi)** — Euler's totient (count of coprimes ≤ n); the project
  also uses `φ_min = smallest prime factor of n`; for n=6, φ = 2 in
  both readings (φ(6)=2, smallest prime factor of 6 = 2). OEIS A000010.
- **J₂** — Jordan totient / project-internal `2σ`; for n=6, J₂ = 24.
- **sopfr** — sum of prime factors with repetition; `sopfr(6) = 5`;
  OEIS A001414.
- **OEIS A000203** — divisor-sum sequence.
- **OEIS A000005** — number-of-divisors sequence.
- **OEIS A000010** — Euler totient sequence.

## §99 See also

- `terafab/terafab.md` — meta-domain master document; §1–§15 cover the
  Terafab announcement, n=6 projection, falsifier register, and source
  list (§15 is the canonical reference list for §6 of this glossary).
- `terafab/falsifier-mk2-scaffold.md` — Mk.II observation hooks and
  decision-rule scaffold; F-TERAFAB-1..10 numerical thresholds.
- `terafab/orbital-physics-deep.md` — extended physics derivation of
  the 1 TW orbital claim; sub-conditions of F-TERAFAB-5.
- `exynos/exynos.md` — Korean-fab heritage comparator and the 10-section
  honesty-check template (§7) reused throughout the terafab/ docs.
- `README.md` — repository-level hexa-chip 28-verb / 6-group baseline.
