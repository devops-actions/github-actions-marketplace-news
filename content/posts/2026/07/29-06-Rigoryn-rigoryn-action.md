---
title: Archmet Code Analysis
date: 2026-07-29 06:42:34 +00:00
tags:
  - Rigoryn
  - GitHub Actions
draft: false
repo: https://github.com/Rigoryn/rigoryn-action
marketplace: https://github.com/marketplace/actions/archmet-code-analysis
version: v0.3.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action automates the deterministic analysis of codebases using Archmet, a tool for analyzing architecture and detecting critical issues like god classes, coupling hotspots, and N+1 query patterns. The action fails the workflow if critical violations are found and outputs machine-readable reports with health scores, grades, violations, and critical violations. It can be configured to set severity thresholds for warning annotations and uses Archmet's embedded scanner locally.
---


Version updated for **https://github.com/Rigoryn/rigoryn-action** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/archmet-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action automates the deterministic analysis of codebases using Archmet, a tool for analyzing architecture and detecting critical issues like god classes, coupling hotspots, and N+1 query patterns. The action fails the workflow if critical violations are found and outputs machine-readable reports with health scores, grades, violations, and critical violations. It can be configured to set severity thresholds for warning annotations and uses Archmet's embedded scanner locally.

## What's Changed

Rigoryn GitHub Action pinned to scanner `ghcr.io/rigoryn/rigoryn-scanner:0.3.0`.

```yaml
- uses: Rigoryn/rigoryn-action@v0.3.0
```

Synced from [Rigoryn/rigoryn@09ed059df825f1ceb4c598ffb387b2a10e2ffb79](https://github.com/Rigoryn/rigoryn/commit/09ed059df825f1ceb4c598ffb387b2a10e2ffb79).
Full changelog: https://github.com/Rigoryn/rigoryn/blob/master/CHANGELOG.md
