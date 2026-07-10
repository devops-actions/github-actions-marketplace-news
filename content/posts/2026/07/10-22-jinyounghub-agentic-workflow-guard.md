---
title: Agentic Workflow Guard
date: 2026-07-10 22:53:51 +00:00
tags:
  - jinyounghub
  - GitHub Actions
draft: false
repo: https://github.com/jinyounghub/agentic-workflow-guard
marketplace: https://github.com/marketplace/actions/agentic-workflow-guard
version: v0.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/jinyounghub/agentic-workflow-guard** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentic-workflow-guard) to find the latest changes.

## What's Changed

## v0.2.0

Public OSS release focused on real-world adoption: noise control, data-flow precision, catalog verification, and contributor onboarding.

### Added
- Config file support with rule disable, severity override, path excludes, and narrow suppressions.
- Baseline support for accepted existing findings.
- Finding fingerprints and active/suppressed/baselined report state.
- Improved GitHub expression handling and one-step env data-flow detection for AI output references.
- Verified AI action catalog metadata and documentation.
- Contributor onboarding docs and beginner-friendly synthetic fixtures.

### Verification
- npm run lint
- npm test
- npm run build
- npm audit --audit-level=moderate
- npm pack --dry-run
- workflow self-scan
- fixture scans
- SARIF JSON parse check
