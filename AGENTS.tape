#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
#
# AGENTS.tape for `dancinlab/hexa-chip`

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa-chip" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-Silicon family — chip · semiconductor"
  brief = "HEXA-Silicon family · chip · semiconductor · 6-stage integrated (Digital→PIM→3D→Photonic→Wafer→SC)"
  parent = "dancinlab/echoes"

@L l1 := "repo-layout" :: structure [active]
  .roadmap.hexa_chip -> "file"
  5G-6G-NETWORK.md -> "documentation"
  5G-NR-CERT.md -> "documentation"
  6G-CERT.md -> "documentation"
  ADVANCED-PACKAGING.md -> "documentation"
  AGENTS.tape -> "this file · governance + identity (.tape v1.2)"
  AI-EFFICIENCY.md -> "documentation"
  AI-NATIVE-ARCHITECTURE.md -> "documentation"
  BLOCKCHAIN.md -> "documentation"
  BRIDGE-DESIGN-P5.md -> "documentation"
  BROWSER.md -> "documentation"
  BT6-0-CERT.md -> "documentation"
  CATALOG.md -> "documentation"
  CERTIFICATES.md -> "documentation"
  CHANGELOG.md -> "change log"
  CHIP-3D.md -> "documentation"
  CHIP-ARCHITECTURE.md -> "documentation"
  CHIP-DESIGN.md -> "documentation"
  CHIP-DSE-PIPELINE.md -> "documentation"
  CHIP-EDA.md -> "documentation"
  CHIP-HBM.md -> "documentation"
  CHIP-HEXA1.md -> "documentation"
  CHIP-INTERCONNECT.md -> "documentation"
  CHIP-ISA-N6.md -> "documentation"
  CHIP-MATERIALS.md -> "documentation"
  CHIP-NPU-N6.md -> "documentation"
  CHIP-PACKAGING.md -> "documentation"
  CHIP-PHOTONIC.md -> "documentation"
  CHIP-PIM.md -> "documentation"
  CHIP-PROCESS.md -> "documentation"
  CHIP-RTL-GEN.md -> "documentation"
  CHIP-SC.md -> "documentation"
  CHIP-THERMAL-POWER.md -> "documentation"
  CHIP-VERIFY-TEST.md -> "documentation"
  CHIP-WAFER.md -> "documentation"
  CHIP-YIELD.md -> "documentation"
  CHIP.tape -> ".tape v1.x file"
  CITATION.cff -> "file"
  CLAUDE.md -> "symlink → AGENTS.tape"
  COMPILER-OS.md -> "documentation"
  CONSCIOUSNESS-CHIP.md -> "documentation"
  CONSCIOUSNESS-SOC.md -> "documentation"
  CRYPTOGRAPHY.md -> "documentation"
  DIGITAL-TWIN.md -> "documentation"
  DISPLAY-8STACK.md -> "documentation"
  DISPLAY.md -> "documentation"
  DISPLAYPORT-CERT.md -> "documentation"
  DISPLAYPORT.md -> "documentation"
  DRAM.md -> "documentation"
  ETHERNET-CERT.md -> "documentation"
  ETHERNET.md -> "documentation"
  EXYNOS.md -> "documentation"
  GPGPU.md -> "documentation"
  HDMI-CERT.md -> "documentation"
  HDMI.md -> "documentation"
  HEXA-1-DIGITAL.md -> "documentation"
  HEXA-2-PIM.md -> "documentation"
  HEXA-3D-STACK.md -> "documentation"
  HEXA-3D.md -> "documentation"
  HEXA-ACCEL.md -> "documentation"
  HEXA-ASIC.md -> "documentation"
  HEXA-CONSCIOUSNESS.md -> "documentation"
  HEXA-DNA-MOLECULAR.md -> "documentation"
  HEXA-FIELD-EFFECT.md -> "documentation"
  HEXA-HOLO.md -> "documentation"
  HEXA-IOS.md -> "documentation"
  HEXA-MACOS.md -> "documentation"
  HEXA-MRAM.md -> "documentation"
  HEXA-NETPROTO.md -> "documentation"
  HEXA-NEUROMORPHIC.md -> "documentation"
  HEXA-ONE.md -> "documentation"
  HEXA-PHOTON-TOPO.md -> "documentation"
  HEXA-PHOTON.md -> "documentation"
  HEXA-PHOTONIC.md -> "documentation"
  HEXA-PIM.md -> "documentation"
  HEXA-PROGLANG.md -> "documentation"
  HEXA-QUANTUM-HYBRID.md -> "documentation"
  HEXA-SUPER.md -> "documentation"
  HEXA-SUPERCONDUCTING.md -> "documentation"
  HEXA-TOPO-ANYON.md -> "documentation"
  HEXA-WAFER.md -> "documentation"
  hexa.toml -> "TOML config"
  IDENTITY.tape -> ".tape v1.x file"
  IMPORTED_FROM_CANON.md -> "documentation"
  install.hexa -> "hexa-lang source"
  ISOCELL-COMMS.md -> "documentation"
  KEYBOARD.md -> "documentation"
  L11-QUANTUM-DOT-6QUBIT-QEC.md -> "documentation"
  L12-NUCLEAR-ISOMER-STORAGE.md -> "documentation"
  L13-MEV-OPTOMECH-ROADMAP.md -> "documentation"
  L13-QUANTUM-NUCLEAR-IO.md -> "documentation"
  L14-3SCALE-REDUCED-TRADEOFF.md -> "documentation"
  L14-CROSS-SCALE-TAU4-FABRIC.md -> "documentation"
  L15-META-INTEGRATION-CLOSURE.md -> "documentation"
  L7-QUANTUM-HYBRID-TRANSMON.md -> "documentation"
  L8-TOPO-ANYON-MAJORANA.md -> "documentation"
  L9-FIELD-PHOTON-NEURO.md -> "documentation"
  LATTICE_POLICY.md -> "project-local copy of dancinlab real-limits standard"
  LEARNING-ALGORITHM.md -> "documentation"
  LICENSE -> "license file"
  LIMIT_BREAKTHROUGH.md -> "per-domain HARD/SOFT_WALL · BREAKABLE_WITH_TECH · UNCLEAR audit"
  LORAWAN-CERT.md -> "documentation"
  Makefile -> "make recipes"
  MK3-ROADMAP-L1-L15-AUDIT.md -> "documentation"
  MONSTER-LEECH-MAPPING.md -> "documentation"
  MOUSE.md -> "documentation"
  NETWORK-PROTOCOL.md -> "documentation"
  NETWORK.md -> "documentation"
  NEXUS-BREAKTHROUGH-GATE.md -> "documentation"
  NEXUS-SERVICE.md -> "documentation"
  NVME-CERT.md -> "documentation"
  NVME.md -> "documentation"
  PCIE-CERT.md -> "documentation"
  PCIE.md -> "documentation"
  PERFORMANCE-CHIP.md -> "documentation"
  PROGRAMMING-LANGUAGE.md -> "documentation"
  PROTOCOL-BRIDGE-20-RTL.md -> "documentation"
  README.md -> "human intro · 18-block format (atlas/README-FORMAT.md)"
  RELEASE_NOTES_v1.0.0.md -> "documentation"
  SC-MEMORY.md -> "documentation"
  SEMICONDUCTOR-LITHOGRAPHY.md -> "documentation"
  SESSION_LOG_2026-05-12.md -> "documentation"
  SOFTWARE-CRYPTO.md -> "documentation"
  SOFTWARE-DESIGN.md -> "documentation"
  SPATIAL-COMPUTING.md -> "documentation"
  SSCB.md -> "documentation"
  STARLINK-CERT.md -> "documentation"
  TAPE-AUDIT.md -> ".tape v1.x adoption audit ledger"
  UNIFIED-SERVICE.md -> "documentation"
  UNIFIED-SOC.md -> "documentation"
  UPSTREAM_NOTES.md -> "documentation"
  USB-CERT.md -> "documentation"
  USB.md -> "documentation"
  verify_catalog.py -> "Python source"
  VNAND.md -> "documentation"
  VT-6TIER-TERMINAL.md -> "documentation"
  WIFI6-CERT.md -> "documentation"
  XN6-ISA-24-SPEC.md -> "documentation"
  XN6-OPCODE-TABLE.md -> "documentation"
  .claude/ -> "Claude Code state (gitignored typically) (1 items)"
  accel/ -> "subdir (2 items)"
  advanced_packaging/ -> "subdir (2 items)"
  ai_native_arch/ -> "subdir (5 items)"
  architecture/ -> "subdir (17 items)"
  asic/ -> "subdir (2 items)"
  chip-verify/ -> "subdir (32 items)"
  chip_3d/ -> "subdir (2 items)"
  cli/ -> "subdir (2 items)"
  conscious_chip/ -> "subdir (2 items)"
  conscious_soc/ -> "subdir (2 items)"
  design/ -> "subdir (14 items)"
  discovery/ -> "subdir (1 items)"
  display/ -> "subdir (1 items)"
  display-8stack/ -> "subdir (1 items)"
  dram/ -> "subdir (1 items)"
  dse_pipeline/ -> "subdir (2 items)"
  eda/ -> "subdir (2 items)"
  exynos/ -> "subdir (9 items)"
  firmware/ -> "subdir (5 items)"
  gpgpu_n6/ -> "subdir (4 items)"
  hbm/ -> "subdir (3 items)"
  hexa-holo/ -> "subdir (1 items)"
  hexa-mram/ -> "subdir (1 items)"
  hexa-one/ -> "subdir (1 items)"
  hexa-photon/ -> "subdir (1 items)"
  hexa-super/ -> "subdir (1 items)"
  hexa1/ -> "subdir (2 items)"
  hexa_3d/ -> "subdir (2 items)"
  hexa_ai_native_n6/ -> "subdir (2 items)"
  hexa_pim/ -> "subdir (2 items)"
  hexa_wafer/ -> "subdir (2 items)"
  intel/ -> "subdir (5 items)"
  interconnect/ -> "subdir (2 items)"
  isa_n6/ -> "subdir (6 items)"
  isocell-comms/ -> "subdir (1 items)"
  materials/ -> "subdir (2 items)"
  nexus-breakthrough-gate/ -> "subdir (1 items)"
  nexus-service/ -> "subdir (1 items)"
  npu_n6/ -> "subdir (3 items)"
  origins/ -> "subdir (7 items)"
  packaging/ -> "subdir (2 items)"
  papers/ -> "papers / publications (21 items)"
  performance-chip/ -> "subdir (1 items)"
  photonic/ -> "subdir (2 items)"
  pim/ -> "subdir (2 items)"
  process/ -> "subdir (3 items)"
  proposals/ -> "subdir (1 items)"
  rtl_gen/ -> "subdir (5 items)"
  sc/ -> "subdir (2 items)"
  sc-memory/ -> "subdir (1 items)"
  semiconductor-lithography/ -> "subdir (2 items)"
  state/ -> "runtime state (gitignored typically) (2 items)"
  terafab/ -> "subdir (25 items)"
  tests/ -> "test suite (8 items)"
  thermal_power/ -> "subdir (2 items)"
  tsmc/ -> "subdir (5 items)"
  unified-soc/ -> "subdir (1 items)"
  verify/ -> "verification scripts (33 items)"
  verify_test/ -> "subdir (2 items)"
  vnand/ -> "subdir (1 items)"
  wafer/ -> "subdir (2 items)"
  yield/ -> "subdir (2 items)"

@D g_inherit := "inherits-lattice-policy" :: governance [required]
  rule = "All echoes/LATTICE_POLICY.md rules apply — real-limits-first · lattice-is-tool · verification-anchor-real-limit · no-artificial-ceilings · honesty-obligation-external."
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g1 := "real-limits-first" :: governance [required]
  rule = "The project's ceiling is set by REAL math/physics/engineering limits, NEVER by the n=6 invariant lattice."
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g2 := "lattice-is-tool" :: governance [required]
  rule = "n=6 lattice is a TOOL, not a CONSTRAINT. Use only where it naturally fits."
  <: g1
  @> AGENTS.md

@D g3 := "honesty-obligation-external" :: governance [required deny:write]
  rule = "Claims about external entities (companies · fabs · vendors) must NOT include lattice-fit assertions. Use their OWN invariants."
  @> AGENTS.md

@D g4 := "commit-conventions" :: governance [recommended]
  rule = "AI-assisted commits include \`Co-Authored-By: <model> <noreply@anthropic.com>\` trailer; Conventional Commits title."
  @> AGENTS.md

@F f1 := "lattice-fit-on-external-entity" :: governance [required deny:write]
  pattern = "applying n=6 lattice as derivation rule to TSMC · ASML · IPCC · NASA · SpaceX · CERN · DeepMind · NIST · or any external vendor"
  exception = "values may coincidentally match — observation OK, derivation NOT OK"

@X x_lattice_policy := "echoes/LATTICE_POLICY.md" :: policy [d=2026-05-12 active]
  url = "https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md"

@X x_tape_spec := "tape v1.2 spec" :: spec [d=2026-05-14 active]
  url = "https://github.com/dancinlab/tape/blob/main/spec/tape.md"
  scope = "this file's grammar reference"

@H h1 := "agents-md-replaced" :: generator [active]
  note = "AGENTS.md replaced by this AGENTS.tape (tape v1.2)"

@H h2 := "claude-md-symlink" :: generator [active]
  rule = "CLAUDE.md → AGENTS.tape symlink"
  command = `ln -sf AGENTS.tape CLAUDE.md`
