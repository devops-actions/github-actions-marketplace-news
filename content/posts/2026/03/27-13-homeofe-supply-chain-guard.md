---
title: Supply Chain Guard
date: 2026-03-27 13:57:29 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v3.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v3.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

The GitHub Action "supply-chain-guard" is an open-source security scanner designed to detect and prevent software supply-chain attacks targeting npm, PyPI, VS Code extensions, GitHub Actions workflows, and Solana blockchain environments. It identifies threats such as malware campaigns, obfuscated code execution, typosquatting, malicious install scripts, and command-and-control patterns, automating the detection of risks that traditional security tools may overlook. This action provides robust capabilities for scanning repositories, packages, and blockchain wallets, offering actionable insights to improve supply-chain security.

## Release notes

## What's New in v3.1.0

### Full Test Coverage
- **solana-monitor.test.ts:** 23 tests — wallet monitoring, watchlist operations (add/remove/list/save/load), webhook delivery, RPC error handling, C2 alert formatting
- **reporter.test.ts:** 39 tests — JSON, SARIF 2.1.0, Markdown, text, and CycloneDX 1.5 SBOM output formats
- **cli.test.ts:** 22 integration tests — scan clean/malicious fixtures, all output formats, --fail-on flag, watchlist commands

### New Features
- **SBOM export (CycloneDX 1.5):** `--format sbom` emits a standards-compliant Software Bill of Materials for compliance requirements (NIS2, SSDF, Executive Order 14028)
- **`--fail-on <severity>` flag:** Tiered CI pipeline support — fail builds only at or above a specified severity threshold (e.g., `--fail-on critical` to ignore high/medium/low)

### Bug Fixes
- Fixed TypeScript build errors in `vscode-scanner.ts` and `dependency-confusion.ts` where the `sbom` format variant was missing from the format union type

### Stats
- 269 tests, all passing (was 208)
- 13 test files (was 10)
- Build: clean, no TypeScript errors
