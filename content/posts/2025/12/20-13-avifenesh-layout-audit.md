---
title: layout-audit
date: 2025-12-20 13:04:34 +00:00
tags:
  - avifenesh
  - GitHub Actions
draft: false
repo: https://github.com/avifenesh/layout-audit
marketplace: https://github.com/marketplace/actions/layout-audit
version: v0.5.0
dependentsNumber: "0"
---


Version updated for **https://github.com/avifenesh/layout-audit** to version **v0.5.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/layout-audit) to find the latest changes.

## Release notes

## Highlights
- SARIF output for `inspect`, `diff`, `check`, and `suggest`, suitable for GitHub code scanning annotations.
- GitHub Action uploads SARIF automatically when `output: sarif` is set.
- Coverage job added to CI with a 90% line coverage gate.

## Improvements
- Diff results include source location fields when available.
- Expanded tests and fixtures (C/C++/Go) for layout, DWARF parsing, output formats, and edge cases.
- Docs updated for SARIF usage and Action outputs.

## Upgrade notes
- Action examples should use `avifenesh/layout-audit@v0.5.0`.

