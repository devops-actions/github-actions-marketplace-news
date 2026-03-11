---
title: SBOM Auditor Action
date: 2026-03-11 21:45:33 +00:00
tags:
  - otto-de
  - GitHub Actions
draft: false
repo: https://github.com/otto-de/sbom_auditor_action
marketplace: https://github.com/marketplace/actions/sbom-auditor-action
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/otto-de/sbom_auditor_action** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-auditor-action) to find the latest changes.

## Action Summary

The SBOM Auditor GitHub Action automates the auditing of Software Bill of Materials (SBOM) for license compliance. It fetches and enriches SBOM data, collects detailed license information, evaluates licenses against a defined policy, and generates a comprehensive audit report with optional AI-assisted summaries. This action simplifies license compliance checks, helps identify policy violations, and provides insights into dependency licenses.

## Release notes

## What's Changed

### Bug Fixes
- **QOS.ch copyright variants resolve to 'SL'** (#25): Added `licensePatternAliases` support — regex-based aliases that match any year-range variant of the QOS.ch copyright string (e.g. `Copyright (C) 2004-2023 QOS.ch Sarl (Switzerland)`) and resolve it to `MIT`. Previously only the exact year range `2004-2022` was covered by a static alias.

### New Features
- **`licensePatternAliases` in policy.json**: New section alongside `licenseAliases` that supports full regex patterns as keys. Patterns are matched case-insensitively via `re.fullmatch` (for single-license IDs) and `re.sub` (within compound SPDX expressions). Custom policies can extend or override these entries.
- **Negative lookahead guard**: Pattern aliases include a `(?!.*\b(AND|OR|WITH)\b)` guard to prevent a pattern from greedily consuming a trailing SPDX operator and silently dropping part of a compound expression.

### Testing
- 7 new unit tests in `TestIssue25QosCopyrightPatternAlias` covering year variants (2023, 2024), single year, trailing text, case-insensitivity, different-vendor negative test, and regression for greedy SPDX-operator consumption
- 119 total tests, all passing

**Full Changelog**: https://github.com/otto-de/sbom_auditor_action/compare/v1.2.0...v1.3.0
