---
title: Vibgrate Scan
date: 2026-07-31 14:33:19 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.731.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of creating a code graph and drift score for a given repository, allowing developers to understand the complexity and potential issues in their codebase. It does this locally on the user's machine without requiring any external API keys or network calls, making it a fast and efficient tool for AI coding agents to analyze codebases efficiently.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.731.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the process of creating a code graph and drift score for a given repository, allowing developers to understand the complexity and potential issues in their codebase. It does this locally on the user's machine without requiring any external API keys or network calls, making it a fast and efficient tool for AI coding agents to analyze codebases efficiently.

## What's Changed

# Vibgrate CLI 2026.731.2

_Released 2026-07-31_

This release of the Vibgrate CLI includes important fixes and changes to improve the user experience. Notably, it addresses issues with code map generation and the handling of custom virtual environments.

## What changed

### Changed

- Dependency breakdown now includes manifest file:line locations for each package, allowing the IDE to open every project that pins it.

### Fixed

- VG Code builds a missing code map automatically on the first turn with progress events for host UIs.
- Custom-named virtualenvs (.venv-*) and Python site-packages are no longer treated as monorepo packages, preventing phantom nested projects from appearing in scope pickers and vulnerability checks.

## Benchmarks

Two-arm benchmark of this release against 2026.731.1, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21185 count | 21185 count |
| Call edges extracted (corpus total) | 10267 count | 10267 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 699.70 ms | 688.70 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.731.2

