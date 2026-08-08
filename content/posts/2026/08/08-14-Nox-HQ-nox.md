---
title: Nox Security Scanner
date: 2026-08-08 14:35:49 +00:00
tags:
  - Nox-HQ
  - GitHub Actions
draft: false
repo: https://github.com/Nox-HQ/nox
marketplace: https://github.com/marketplace/actions/nox-security-scanner
version: v1.27.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Nox is an open-source, offline-first static analysis tool designed for AI application developers. It scans their applications to identify potential security risks such as prompt injection, embedding leakage, agent over-privilege, and more. Nox also detects vulnerabilities in code and dependency provenance issues. The main purpose of Nox is to provide a static analyzer that helps developers ensure the safety and integrity of their AI applications without requiring access to external services or sending code to vendors.
---


Version updated for **https://github.com/Nox-HQ/nox** to version **v1.27.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nox-security-scanner) to find the latest changes.

## Action Summary

Nox is an open-source, offline-first static analysis tool designed for AI application developers. It scans their applications to identify potential security risks such as prompt injection, embedding leakage, agent over-privilege, and more. Nox also detects vulnerabilities in code and dependency provenance issues. The main purpose of Nox is to provide a static analyzer that helps developers ensure the safety and integrity of their AI applications without requiring access to external services or sending code to vendors.

## What's Changed

## Nox v1.27.0 (2026-08-08T10:07:13Z)

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
* 741c99069af0a41520802ab1f70b57b7e6948e0f feat(action): install the plugins .nox.yaml requires (#447)
### Bug Fixes
* 88ebfb7ccfac52d96efca4d67cafcc3c0bc7a1c7 fix(report): serialize plugin enrichments to findings.json (#441)
### Others
* 6defba1fb83c9f44cdffd989781a0057d287eceb chore(deps): bump github.com/openai/openai-go/v3 from 3.46.0 to 3.48.0 (#443)
* 59ba75d9d3b51318ea1b1dfae4643a63aa0ceb64 chore(deps): bump google.golang.org/grpc from 1.82.1 to 1.83.0 (#442)
* a541dc351d00697384c2199494f2be46731595dc chore(deps-dev): bump @types/node from 26.1.1 to 26.1.2 in /editors/vscode (#444)
* 6aba53ab68346f12e980a1ba5ebf69a21ba7a0c0 chore(release): changelog for 1.27.0
* cf71e405dad325c4c3de57aa486a0a6f00084596 chore(security): nox remediation (deps + actions) (#446)
* 1b64c2b2b11b22cfec6e1a53869bffe791a9d289 docs(roady): both enrichment plugins converted and released as 0.3.0 (#440)
* ac53f661fdd64c8b8a55ae4fa110ec89d741e645 docs(roady): record the enrichment-plugin precision work and what is left (#438)
* a33518c4bc5f4e180281bba9da49acc029d0dd88 docs(roady): record triage-agent's conversion to a post-scan plugin (#439)

**Full Changelog**: https://github.com/nox-hq/nox/compare/v1.26.0...v1.27.0


