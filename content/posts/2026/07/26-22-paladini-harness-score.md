---
title: Harness Score
date: 2026-07-26 22:42:17 +00:00
tags:
  - paladini
  - GitHub Actions
draft: false
repo: https://github.com/paladini/harness-score
marketplace: https://github.com/marketplace/actions/harness-score
version: v1.5.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Harness Score measures and improves AI coding tool harnesses across various repositories, providing a maturity level (L0-L4), breakdown of points in six dimensions, and a ranked list of fixes needed. It helps developers understand the effectiveness of their AI agent's context and rules, enabling them to ensure reliability and prevent errors before code is shipped.
---


Version updated for **https://github.com/paladini/harness-score** to version **v1.5.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harness-score) to find the latest changes.

## Action Summary

Harness Score measures and improves AI coding tool harnesses across various repositories, providing a maturity level (L0-L4), breakdown of points in six dimensions, and a ranked list of fixes needed. It helps developers understand the effectiveness of their AI agent's context and rules, enabling them to ensure reliability and prevent errors before code is shipped.

## What's Changed

## GitHub Marketplace launch

Harness Score v1.5.1 brings deterministic AI coding harness maturity audits directly into GitHub Actions and marks the Action's initial GitHub Marketplace release.

### What the Action provides

- Deterministic, filesystem-only repository scanning
- AI-harness maturity scores from L0 to L4
- Configurable CI quality gates with `min-level`
- GitHub job summaries with dimension-level results
- SVG maturity badges and Markdown reports
- Optional sticky pull-request comments with score deltas
- Repository, user, and system harness scopes
- Team customization through `.harness-score.json`

### Marketplace launch improvements

- Added concise Marketplace metadata
- Pinned the default scanner to v1.5.1 for reproducible results
- Hardened Action input handling
- Added end-to-end Action smoke coverage in CI
- Added the stable `v1` usage path
- Kept npm, JSR, lockfile, CLI, and Action versions synchronized

## Usage

```yaml
name: Harness maturity

on:
  pull_request:
  push:
    branches: [main]

jobs:
  harness:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: paladini/harness-score@v1
        with:
          min-level: '3'
          badge: 'harness-badge.svg'
```

For maximum supply-chain stability, pin the Action to the full commit SHA associated with this release.

Documentation: https://paladini.github.io/harness-score/

**Full changelog:** https://github.com/paladini/harness-score/compare/v1.5.0...v1.5.1
