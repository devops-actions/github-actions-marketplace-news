---
title: Skill Provenance Validate
date: 2026-07-22 06:06:38 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/skill-provenance
marketplace: https://github.com/marketplace/actions/skill-provenance-validate
version: v6.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Skill Provenance is a GitHub Action that ensures the integrity and version control of Agent Skills. It helps teams manage and verify the version, staleness, and drift of their skills across different platforms and sessions. By embedding version information and hash-based integrity checks within the skill bundle, Skill Provenance allows for portable provenance and trust verification.
---


Version updated for **https://github.com/snapsynapse/skill-provenance** to version **v6.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-provenance-validate) to find the latest changes.

## Action Summary

Skill Provenance is a GitHub Action that ensures the integrity and version control of Agent Skills. It helps teams manage and verify the version, staleness, and drift of their skills across different platforms and sessions. By embedding version information and hash-based integrity checks within the skill bundle, Skill Provenance allows for portable provenance and trust verification.

## What's Changed

# Skill Provenance 6.0.0

Manifest-boundary hardening release for portable Agent Skill provenance and integrity.

## Highlights

- Adds constrained, fail-closed manifest inventory parsing with traversal, ambiguous-path, duplicate-path, and symlink-component rejection.
- Prevents partial manifest rewrites when structural validation fails.
- Makes package generation revalidate every boundary and delegate derived hash updates to the canonical validator.
- Requires exact agreement between package contents and the enclosed manifest.
- Reports malformed or stale validation attestations without allowing them to override byte-level integrity results.
- Expands and consolidates coverage to 39 core and 17 supplemental evals, 56 total.
- Retains compatibility with macOS system Bash 3.2 and modern Bash.

## Verification

- Canonical bundle hashes verified.
- Strict and ClawHub package-boundary regressions passed.
- GitHub Action input transport security checks passed.
- Claude Settings archive matches every canonical manifest-listed file.

## Asset

`skill-provenance.skill`

SHA-256: `b6bf9b9d2eaab2fff1dd084178b0df56b2cb6cee9a90d6f1de411fe07065abdb`

See `CHANGELOG.md` in the repository for the complete file-by-file release record.

