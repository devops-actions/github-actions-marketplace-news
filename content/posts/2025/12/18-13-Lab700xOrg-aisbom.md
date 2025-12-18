---
title: AIsbom Security Scanner
date: 2025-12-18 13:24:43 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v0.2.5
dependentsNumber: "?"
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v0.2.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Release notes

## 🚀 Features:

* Pickle scanning now has a strict allowlist option (--strict/--no-strict); unknown imports are flagged as UNSAFE_IMPORT, and high-risk scans exit non-zero (controlled by --fail-on-risk).
* GGUF model support added; mock GGUF artifact generated; README updated to mention GGUF and strict mode.
* Test suite expanded (strict mode, GGUF parsing edge cases, generator utilities, legacy .pt, CLI behaviors); coverage up to ~85%.
