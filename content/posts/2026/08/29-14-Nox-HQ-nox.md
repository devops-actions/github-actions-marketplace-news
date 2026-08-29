---
title: Nox Security Scanner
date: 2026-08-29 14:09:17 +00:00
tags:
  - Nox-HQ
  - GitHub Actions
draft: false
repo: https://github.com/Nox-HQ/nox
marketplace: https://github.com/marketplace/actions/nox-security-scanner
version: v1.31.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Nox is an open-source static analysis tool designed to identify and prevent security vulnerabilities in AI applications. It analyzes code offline and does not rely on APIs or external services, ensuring determinism and privacy. Nox can detect issues such as prompt injection, embedding leakage, agent over-privilege, and more, covering OWASP Top 10, MCP Top 10, and other security aspects related to AI applications. It provides a comprehensive inventory of all model invocations, auth environment variables, and endpoints for multi-language projects.
---


Version updated for **https://github.com/Nox-HQ/nox** to version **v1.31.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nox-security-scanner) to find the latest changes.

## Action Summary

Nox is an open-source static analysis tool designed to identify and prevent security vulnerabilities in AI applications. It analyzes code offline and does not rely on APIs or external services, ensuring determinism and privacy. Nox can detect issues such as prompt injection, embedding leakage, agent over-privilege, and more, covering OWASP Top 10, MCP Top 10, and other security aspects related to AI applications. It provides a comprehensive inventory of all model invocations, auth environment variables, and endpoints for multi-language projects.

## What's Changed

## Nox v1.31.0 (2026-08-29T10:59:16Z)

Language-agnostic security scanner with first-class AI application security.

### Installation

#### macOS/Linux (Homebrew)
```bash
brew tap felixgeelhaar/tap
brew install nox
```

#### Direct Download
Download the appropriate archive for your platform from the assets below.

### What's Changed

## Changelog
### Features
* 7172305a11f8f00e0f8eb53cb46a50fd6ff80169 feat(intel): enrol an operator's second factor from the CLI (#490)
* 703b105ec9841a067c16f49fd7bf46ab3615748c feat(vulnsource): superset model with verifiable non-suppression (#478)
### Bug Fixes
* cc304dfef2de32c10369e080325a667cd8faa579 fix(cli): scan --help shows the flags that make it emit an SBOM (#492)
### Refactoring
* 80d0f4a7526f57c7a18856c7438ac1e698ba8f83 refactor: move the shared kernel out to nox-core (#485)
### Others
* f8dc9ac9adf3e09e56645e3ad0046f6d4195c770 build: warden gate for nox (#486)
* 8b00e6c4a3dcbb3ef9fcda5e32ad1812bf8f9d76 docs(changelog): 1.31.0, and let nox run its own secret check (#487)
* 34b37a31efe5eb37aeed015ec1ec3d394b8fe255 docs(changelog): the two help fixes that shipped in 1.31.0 (#495)
* 8e24156a6d9ef3f22fcd9a384342624f14bb3b1d docs(vex): describe --product as what OpenVEX actually takes (#491)

**Full Changelog**: https://github.com/nox-hq/nox/compare/v1.30.1...v1.31.0


