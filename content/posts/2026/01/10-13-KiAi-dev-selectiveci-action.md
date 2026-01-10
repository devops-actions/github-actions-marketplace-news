---
title: SelectiveCI Decision Engine
date: 2026-01-10 13:11:46 +00:00
tags:
  - KiAi-dev
  - GitHub Actions
draft: false
repo: https://github.com/KiAi-dev/selectiveci-action
marketplace: https://github.com/marketplace/actions/selectiveci-decision-engine
version: v1.1
dependentsNumber: "?"
---


Version updated for **https://github.com/KiAi-dev/selectiveci-action** to version **v1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/selectiveci-decision-engine) to find the latest changes.

## Action Summary

SelectiveCI is a GitHub Action that acts as a decision engine for CI workflows by analyzing files changed in pull requests to determine how CI should run. It automates skipping CI for low-impact changes (e.g., documentation-only), running targeted CI for specific areas, or enforcing full CI for risky or unclear changes. By adding this decision layer, it optimizes CI pipeline efficiency, reduces unnecessary runs, and ensures safe execution based on customizable policies.

## Release notes

**Full Changelog**: https://github.com/KiAi-dev/selectiveci-action/compare/v1.0.1...v1.1

## v1.1 – Stable Decision Engine Release

### ✅ Highlights
- Stable decision contract (v1)
- Accurate skip / selective / full behavior
- Real GitHub Actions decision summary
- Safer diff handling with fallbacks

### 🧪 Verified Scenarios
- Docs-only PR → skip
- Scoped service change → selective
- Workflow / infra change → full

### 🔒 Guarantees
- Safe-by-default
- No CI weakening
- Deterministic outputs

