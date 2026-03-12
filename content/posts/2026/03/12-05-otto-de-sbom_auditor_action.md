---
title: SBOM Auditor Action
date: 2026-03-12 05:55:39 +00:00
tags:
  - otto-de
  - GitHub Actions
draft: false
repo: https://github.com/otto-de/sbom_auditor_action
marketplace: https://github.com/marketplace/actions/sbom-auditor-action
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/otto-de/sbom_auditor_action** to version **v1.4.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-auditor-action) to find the latest changes.

## Action Summary

The SBOM Auditor GitHub Action automates the auditing of Software Bill of Materials (SBOM) for license compliance. It enriches SBOM data with detailed license information, checks dependencies against a defined policy, and generates a comprehensive license audit report, optionally enhanced with AI-assisted summaries. This action streamlines the identification and resolution of license violations, ensuring compliance and reducing manual effort in managing software dependencies.

## Release notes

## What's Changed

### Bug Fixes
- **`UNKNOWN` licenseConcluded treated as no-license** (#25, PR #29): GitHub Actions packages (e.g. `pkg:githubactions/...`) can have `licenseConcluded: UNKNOWN` in the enriched SBOM. Previously this value fell into the normal resolution flow and triggered a `needs-review` result. Now `UNKNOWN` is treated the same as `NOASSERTION`/`NONE` and follows the no-license path (allowed for GitHub Actions packages by default).
- **SLF4J License alias to MIT** (#25, PR #30): `org.slf4j` packages with `licenseConcluded: SLF4J License` (as reported by some Maven POMs) were being fuzzy-matched to the unrelated `SL` (Sleepycat) SPDX identifier. Added explicit `licenseAliases` entries `"slf4j license"` → `MIT` and `"slf4j mit license"` → `MIT`.
- **Fuzzy-matcher false positive for short SPDX names** (#25, PR #31): `SequenceMatcher` returned a ratio of ~0.870 for `'slf4j license'` vs `'sl license'` because `'SL License'` is nearly a substring of `'SLF4J License'`. Added a length-ratio penalty: when the candidate SPDX name is significantly shorter than the input, the required similarity threshold is boosted by `0.5 × (1 − shorter_fraction)`. For the SLF4J/SL pair this raises the effective threshold to ~0.915, above the actual ratio.

### Testing
- 2 new regression tests (`TestFuzzyMatchLengthRatioGuard`): verify that `'SLF4J License'` no longer matches `SL` and that `'MIT License'` still resolves correctly after the guard is in place.
- 56 total tests, all passing

**Full Changelog**: https://github.com/otto-de/sbom_auditor_action/compare/v1.3.0...v1.4.0
