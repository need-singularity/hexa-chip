# Changelog

All notable changes to **hexa-chip** are documented here. Format follows
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and SemVer.

## [1.0.0] - 2026-05-06

### Added

- Initial standalone extraction from `n6-architecture/domains/compute/`
  at SHA `c0f1f570` (2026-05-06).
- **28-verb / 7-group Chip Substrate** organised as:
  - **architecture (3)** — `architecture`, `isa_n6`, `hexa1`
  - **design (5)** — `design`, `dse_pipeline`, `rtl_gen`, `eda`, `verify_test`
  - **process (5)** — `process`, `materials`, `wafer`, `yield`, `thermal_power`
  - **packaging (6)** — `packaging`, `advanced_packaging`, `chip_3d`, `hbm`,
    `interconnect`, `sc`
  - **accelerator (8)** — `npu_n6`, `pim`, `photonic`, `accel`, `asic`,
    `hexa_pim`, `hexa_3d`, `hexa_wafer`
  - **consciousness (2)** — `conscious_chip`, `conscious_soc`
- `cli/hexa-chip.hexa` — placeholder 7-group dispatcher
  (`status` / `show <verb>` / `selftest` / `--version` / `help`).
- `install.hexa` — hx hook (no external deps; post-install runs
  28-verb directory sweep).
- `tests/test_selftest.hexa` — 28-verb directory enumeration harness
  (`__HEXA_CHIP_SELFTEST__ PASS` sentinel verification).
- `hexa.toml` — package manifest with 7-group `[modules.<group>]` tables.
- MIT license, README (Korea-fab heritage tone), CHANGELOG.

### Honest scope (raw#10 C3)

- **0 of 28 verbs is empirically wired** at v1.0.0. All verbs ship as
  spec directories (the cp -R'd `n6-architecture/domains/compute/<name>/`
  trees); per-verb working `.hexa` CLI sandboxes are deferred to
  post-v1.0 cycles.
- **n=6 invariant lattice** is referenced explicitly by `isa_n6` and
  `hexa1` only; the remaining 26 verbs inherit the organising
  convention without independent empirical fit.
- **No tape-out / GDSII / PDK content vendored.** Foundry process kits
  (Samsung / SK·Hynix / TSMC / Intel) stay proprietary; this repo
  ships specs + organising vocabulary only.
- **Cross-link consumers** (`hexa-rtsc`, `hexa-codex`, `anima`) reference
  individual verb specs; bidirectional propagation is manual (no
  cross-repo CI at this release).
- **Korea-fab heritage tone** is editorial framing only — no
  proprietary data, NDA content, or trade-secret material is
  included.

### Provenance

- Extracted from `n6-architecture/domains/compute/` at SHA `c0f1f570`
  (commit `proposal(infra): reframe critical-mineral-arbitration
  kick-spec to peaceful-only scope`, 2026-05-06).
- Sister extractions in `need-singularity` org: `hexa-bio` (4 molecular
  verbs), `hexa-rtsc`, `hexa-codex`, `anima`, plus `hexa-{antimatter,
  bot, brain, cosmos, earth, energy, fantasy, fusion, lang, millennium,
  os, pet, space, sscb, time, ufo}`.

[1.0.0]: https://github.com/need-singularity/hexa-chip/releases/tag/v1.0.0
