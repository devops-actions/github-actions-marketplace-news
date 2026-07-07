---
title: Sentinel Git Secrets Scanner
date: 2026-07-07 15:18:50 +00:00
tags:
  - sentinel-cli
  - GitHub Actions
draft: false
repo: https://github.com/sentinel-cli/sentinel
marketplace: https://github.com/marketplace/actions/sentinel-git-secrets-scanner
version: v2.0.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sentinel-cli/sentinel** to version **v2.0.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinel-git-secrets-scanner) to find the latest changes.

## What's Changed

### Sentinel v2.0.5 Stable Release

This release introduces significant performance optimizations and key fixes:
- **Zero-Allocation Flat DFA Engine**: Trie memory footprint reduced to ~500KB and peak RAM down to ~11MB.
- **100% Core Test Coverage** achieved for reporter, git, commands, and updater packages.
- **Heuristics & Suppressions**: Added support for Mailgun/Hex letters-only findings and fixed updater comparison logic.
- **Dedicated Output Argument**: Added the `-o` / `--output` flag to Sentinel scan, enabling silent SARIF/JSON generation in CI while keeping pretty CLI logs.
- **CI/CD Integration**: Reusable GitHub Action with native SARIF output, officially published to the Marketplace as **Sentinel Git Secrets Scanner**.


**Full Changelog**: https://github.com/sentinel-cli/sentinel/compare/v2.0.4...v2.0.5

**Full Changelog**: https://github.com/sentinel-cli/sentinel/compare/v2.0.4...v2.0.5
