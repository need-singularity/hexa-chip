#!/usr/bin/env python3
"""
test_chip_verify_inventory.py — Wave J inventory invariants.

Asserts:
  T1. chip-verify/ contains exactly 22 imported .hexa scripts (Wave 5
      corpus; excludes Wave-J harness: cli.hexa + inventory.hexa +
      aggregate.hexa).
  T2. chip-verify/ contains exactly 4 imported .md reports (excludes
      Wave-J docs: CLOSURE.md + README.md).
  T3. chip-verify/ contains exactly 1 .json fixture.
  T4. hexa.toml [chip_verify_closure] block reports the same numbers.
  T5. hexa.toml [closure] verb counts (29 / 6) are unchanged.
  T6. boot_matrix_report.md surfaces the 34/36 = 94.4% headline.

Stdlib only.
"""

from __future__ import annotations
import glob
import re
import sys
import unittest
import tomllib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CVDIR = ROOT / "chip-verify"

HARNESS_HEXA = {"cli.hexa", "inventory.hexa", "aggregate.hexa"}
WAVEJ_DOCS   = {"CLOSURE.md", "README.md"}


class ChipVerifyInventoryTests(unittest.TestCase):

    def setUp(self) -> None:
        self.toml = tomllib.loads((ROOT / "hexa.toml").read_text(encoding="utf-8"))

    def test_t1_imported_hexa_count_is_22(self) -> None:
        all_hexa = sorted(Path(p).name for p in glob.glob(str(CVDIR / "*.hexa")))
        imported = [n for n in all_hexa if n not in HARNESS_HEXA]
        self.assertEqual(len(imported), 22, f"expected 22 imported .hexa scripts, got {len(imported)}: {imported}")

    def test_t2_imported_md_count_is_4(self) -> None:
        all_md = sorted(Path(p).name for p in glob.glob(str(CVDIR / "*.md")))
        imported = [n for n in all_md if n not in WAVEJ_DOCS]
        self.assertEqual(len(imported), 4, f"expected 4 imported .md reports, got {len(imported)}: {imported}")

    def test_t3_json_fixture_count_is_1(self) -> None:
        fixtures = sorted(Path(p).name for p in glob.glob(str(CVDIR / "*.json")))
        self.assertEqual(len(fixtures), 1, f"expected 1 .json fixture, got {len(fixtures)}: {fixtures}")
        self.assertEqual(fixtures[0], "boot_matrix_3x12.json")

    def test_t4_chip_verify_closure_block_matches_filesystem(self) -> None:
        cvc = self.toml.get("chip_verify_closure", {})
        self.assertEqual(cvc.get("scripts_total"), 22)
        self.assertEqual(cvc.get("scripts_wired"), 22)
        self.assertEqual(cvc.get("reports_total"), 4)
        self.assertEqual(cvc.get("fixtures_total"), 1)
        self.assertEqual(cvc.get("verdict"), "SPEC_PLUS_RUNNABLE")
        self.assertTrue(cvc.get("verb_surface_unchanged"))
        self.assertFalse(cvc.get("nda_content"))
        # 34/36 = 0.944... headline
        apr = cvc.get("aggregate_pass_rate")
        self.assertIsNotNone(apr)
        self.assertAlmostEqual(float(apr), 0.944, delta=1e-3)

    def test_t5_canonical_verb_surface_unchanged(self) -> None:
        closure = self.toml.get("closure", {})
        self.assertEqual(closure.get("verbs_total"), 29)
        self.assertEqual(closure.get("groups_total"), 6)

    def test_t6_boot_matrix_headline_surfaced(self) -> None:
        report_txt = (CVDIR / "boot_matrix_report.md").read_text(encoding="utf-8")
        self.assertIn("34/36", report_txt)
        self.assertIn("94.4", report_txt)
        # And in the chip-verify CLOSURE.md (cross-doc agreement).
        closure_txt = (CVDIR / "CLOSURE.md").read_text(encoding="utf-8")
        self.assertIn("34/36", closure_txt)
        self.assertIn("94.4", closure_txt)


if __name__ == "__main__":
    unittest.main(verbosity=2)
