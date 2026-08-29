---
title: Skill Provenance Validate
date: 2026-08-29 13:57:34 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/skill-provenance
marketplace: https://github.com/marketplace/actions/skill-provenance-validate
version: v6.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the validation of Agent Skill bundles to ensure they are portable, have accurate versions and integrity, and detect any drift between the manifest and actual bundle contents. It helps teams track the version history and integrity of their skills across different platforms and sessions. The action ensures that a downloaded or shared bundle matches its recorded state before installing it, using SHA-256 hashes to catch tampering and accidental drift.
---


Version updated for **https://github.com/snapsynapse/skill-provenance** to version **v6.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-provenance-validate) to find the latest changes.

## Action Summary

This GitHub Action automates the validation of Agent Skill bundles to ensure they are portable, have accurate versions and integrity, and detect any drift between the manifest and actual bundle contents. It helps teams track the version history and integrity of their skills across different platforms and sessions. The action ensures that a downloaded or shared bundle matches its recorded state before installing it, using SHA-256 hashes to catch tampering and accidental drift.

## What's Changed

# Skill Provenance 6.2.0

This release adds portable, no-plugin verification and makes bundle identity easier to verify across GitHub, GitHub Pages, and agent-facing surfaces.

## Highlights

- Added `verify.sh`, a zero-install bootstrap that pins and authenticates the canonical validator before execution.
- Added regression coverage for local and downloaded validator pins, tamper rejection, exit-code propagation, paths with spaces, and temporary-file cleanup.
- Expanded the evaluation suite to 41 core and 18 supplemental scenarios, 59 total.
- Separated immutable bundle tags (`vX.Y.Z`) from GuideCheck sidecar tags (`guidecheck-X.Y.Z`) throughout docs and release checks.
- Updated GitHub Pages, `llms.txt`, the assistant guide, agentic-surface inventory, roadmap, and project context for v6.2.0.
- Added a dated 2026 skill-versioning ecosystem observation with explicit reproduction boundaries.

## Verification

- Canonical manifest validation passed for all 11 bundle files.
- Release-surface checks passed, including ZIP/source agreement and exact tag-family references.
- Validate bundle, CodeQL, and GitHub Pages workflows passed on commit `2a752319377327b5fd905c0b72f222ad4fb0cb26`.
- `skill-provenance.skill` SHA-256: `e0ebef495463492641a39b9fedb8b949c05f93b0b20265eef5e46433747622dc`

Full details are in [CHANGELOG.md](https://github.com/snapsynapse/skill-provenance/blob/v6.2.0/CHANGELOG.md).

