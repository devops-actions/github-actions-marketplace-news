---
title: SBOM Auditor Action
date: 2025-12-20 05:33:02 +00:00
tags:
  - otto-de
  - GitHub Actions
draft: false
repo: https://github.com/otto-de/sbom_auditor_action
marketplace: https://github.com/marketplace/actions/sbom-auditor-action
version: v0.4.3
dependentsNumber: "?"
---


Version updated for **https://github.com/otto-de/sbom_auditor_action** to version **v0.4.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-auditor-action) to find the latest changes.

## Release notes

## 🐛 Bug Fixes

### Custom Policy Merge Fix (Issue #9)
Custom `policy_path` now properly **extends** the default policy instead of replacing it. Previously, using a custom policy caused all default allowlisted licenses (Apache-2.0, MIT, etc.) to be flagged as "needs-review".

## ✨ New Features

### Data-Driven License Aliases
License aliases are now defined in `policy.json` instead of being hardcoded in Python:
- Added `licenseAliases` section with **95+ mappings** for common license name variations
- Added `combinedLicenseAliases` section for dual-license expressions (e.g., "CDDL + GPLv2 with classpath exception")
- Users can now add custom aliases in their own policy files

### New CLI Argument: `--base-policy`
Explicitly specify a base policy for merging when using custom policies.

## 📊 Real-World Test Results
Testeda production SBOM (227 components): **226 allow, 1 needs-review** (project itself)

## 📁 Documentation
- Moved detailed docs to `docs/` folder
- Removed otto-ec specific setup guides
- Consolidated release notes into CHANGELOG

**Full Changelog**: https://github.com/otto-de/sbom_auditor_action/compare/v0.4.2...v0.4.3
