#!/usr/bin/env python3
# ─────────────────────────────────────────────────────────────────────────────
# tests/test_terafab_meta.py — invariant tests for the terafab meta-domain.
#
# Mirrors the existing tests/test_*.hexa convention but in stdlib unittest
# (so `python3 -m unittest` discovers it).  Asserts only the meta-domain
# *envelope* invariants — actual falsifier evaluation lives in
# `terafab/verify_terafab.py`, fact agreement in `terafab/cross_doc_audit.py`.
#
# stdlib only: unittest, pathlib, tomllib (Python 3.11+).
# ─────────────────────────────────────────────────────────────────────────────

from __future__ import annotations

import tomllib
import unittest
from pathlib import Path

REPO   = Path(__file__).resolve().parent.parent
TFAB   = REPO / "terafab" / "terafab.md"
SCAF   = REPO / "terafab" / "falsifier-mk2-scaffold.md"
TOML   = REPO / "hexa.toml"

EXPECTED_GROUPS = [
    "architecture", "design", "process",
    "packaging", "accelerator", "consciousness",
]


class TestTerafabMeta(unittest.TestCase):
    """Meta-domain envelope invariants.  These must hold at every commit."""

    @classmethod
    def setUpClass(cls) -> None:
        cls.toml_data = tomllib.loads(TOML.read_text(encoding="utf-8"))

    # ── existence invariants ──────────────────────────────────────────────
    def test_terafab_md_exists(self) -> None:
        self.assertTrue(TFAB.exists(),
                        f"terafab/terafab.md missing at {TFAB}")
        self.assertGreater(TFAB.stat().st_size, 1000,
                           "terafab.md too small to be the real meta-domain doc")

    def test_falsifier_scaffold_exists(self) -> None:
        self.assertTrue(SCAF.exists(),
                        f"terafab/falsifier-mk2-scaffold.md missing at {SCAF}")
        self.assertGreater(SCAF.stat().st_size, 1000,
                           "falsifier-mk2-scaffold.md too small")

    # ── hexa.toml structural invariants ───────────────────────────────────
    def test_meta_domain_block_present(self) -> None:
        meta = self.toml_data.get("meta_domains", {})
        self.assertIn("terafab", meta,
                      "[meta_domains.terafab] block missing from hexa.toml")

    def test_meta_domain_absorbs_length_6(self) -> None:
        absorbs = self.toml_data["meta_domains"]["terafab"]["absorbs"]
        self.assertEqual(len(absorbs), 6,
                         f"[meta_domains.terafab].absorbs must have 6 entries; got {absorbs}")

    def test_meta_domain_absorbs_matches_modules(self) -> None:
        """absorbs[] entries must exactly equal [modules.*] keys."""
        absorbs   = sorted(self.toml_data["meta_domains"]["terafab"]["absorbs"])
        module_keys = sorted(self.toml_data.get("modules", {}).keys())
        self.assertEqual(absorbs, module_keys,
                         f"absorbs={absorbs} ≠ module_keys={module_keys}")
        self.assertEqual(absorbs, sorted(EXPECTED_GROUPS),
                         f"absorbs={absorbs} ≠ expected={sorted(EXPECTED_GROUPS)}")

    def test_meta_domain_does_not_change_verb_count(self) -> None:
        closure = self.toml_data["closure"]
        self.assertEqual(closure["verbs_total"], 29,
                         "verbs_total must stay 29 — meta-domain MUST NOT add verbs")
        self.assertEqual(closure["groups_total"], 6,
                         "groups_total must stay 6 — meta-domain wraps groups, does not add one")

    def test_meta_domain_falsifier_count_consistency(self) -> None:
        """falsifier_count in hexa.toml must equal F-TERAFAB-N IDs in terafab.md §7."""
        import re
        declared = self.toml_data["meta_domains"]["terafab"]["falsifier_count"]
        actual = len(set(re.findall(r"F-TERAFAB-\d+", TFAB.read_text(encoding="utf-8"))))
        self.assertEqual(declared, actual,
                         f"hexa.toml falsifier_count={declared} but terafab.md has {actual} unique IDs")

    def test_meta_domain_not_a_verb(self) -> None:
        """No [modules.terafab] block — meta-domain must not be registered as a verb group."""
        modules = self.toml_data.get("modules", {})
        self.assertNotIn("terafab", modules,
                         "terafab must NOT appear under [modules.*] — it is a meta-domain wrapper")


if __name__ == "__main__":
    unittest.main(verbosity=2)
