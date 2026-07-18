---
title: Supply Chain Guard
date: 2026-07-18 22:47:09 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.17.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Summary**
  
  Supply-chain-guard is an open-source supply-chain security scanner that detects malware campaigns and fake AI tool repos across various ecosystems, including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It uses a combination of threat indicators and automated analysis to provide a comprehensive view of the security posture in your software supply chain.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.17.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

**Summary**

Supply-chain-guard is an open-source supply-chain security scanner that detects malware campaigns and fake AI tool repos across various ecosystems, including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It uses a combination of threat indicators and automated analysis to provide a comprehensive view of the security posture in your software supply chain.

## What's Changed

## [5.17.4] - 2026-07-18
**Fix: `scan --format json` and risk-history reported a stale tool version (v5.2.0)**

### Fixed
- `src/scanner.ts` hardcoded `TOOL_VERSION = "5.2.0"`, so `ScanReport.tool` (emitted
  verbatim by the JSON reporter) and the persisted `.scg-history/` risk entries reported
  `supply-chain-guard v5.2.0`, while every other surface (text header, SARIF, SBOM, HTML
  footer, GitLab) correctly used reporter.ts's own version. Corrected to the release version.

### Changed
- `check:version-sync` now also covers `src/scanner.ts`, so `TOOL_VERSION` can never drift
  undetected again - the root cause was that the gate did not include scanner.ts.

