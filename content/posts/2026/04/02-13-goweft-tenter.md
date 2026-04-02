---
title: Tenter Scan
date: 2026-04-02 13:59:14 +00:00
tags:
  - goweft
  - GitHub Actions
draft: false
repo: https://github.com/goweft/tenter
marketplace: https://github.com/marketplace/actions/tenter-scan
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/goweft/tenter** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tenter-scan) to find the latest changes.

## Action Summary

Tenter is a pre-publish artifact integrity scanner designed to identify and prevent sensitive files, debug artifacts, oversized anomalies, and internal development artifacts from being included in final package distributions. It automates the inspection of published artifacts (e.g., npm tarballs, Python wheels) to catch issues missed by `.gitignore` or existing source code scanning tools. By providing comprehensive checks for source maps, secrets, debug symbols, and file size thresholds, Tenter helps mitigate supply chain risks and ensures clean, secure package releases.

## What's Changed

Pre-publish artifact integrity scanner. Born from the Claude Code npm source map leak (March 31, 2026).

**What it catches:**
- Source map files and sourceMappingURL references
- Debug symbols (.pdb, .dSYM, .debug)
- Sensitive files (.env, .npmrc, .pypirc, private keys)
- Embedded secrets (AWS keys, GitHub PATs, API keys)
- Internal artifacts (.claude/, CLAUDE.md, __pycache__/)
- Anomalously large files (>50MB)

**Features:**
- Zero external dependencies (Python stdlib only)
- Output formats: human, JSON, SARIF v2.1.0
- Supports npm, pip, cargo, and generic directories
- GitHub Action for CI integration
- 31 passing tests

