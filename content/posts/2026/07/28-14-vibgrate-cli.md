---
title: Vibgrate Scan
date: 2026-07-28 14:46:24 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.728.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action automates the process of generating a code graph, drift score, and upgrade priorities for a local repository. It provides local codebase intelligence using AI coding agents, allowing developers to understand the project's structure, dependencies, and potential issues. The action runs on your machine without relying on external APIs or data sharing.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.728.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action automates the process of generating a code graph, drift score, and upgrade priorities for a local repository. It provides local codebase intelligence using AI coding agents, allowing developers to understand the project's structure, dependencies, and potential issues. The action runs on your machine without relying on external APIs or data sharing.

## What's Changed

# Vibgrate CLI 2026.728.4

_Released 2026-07-28_

Routine maintenance update for the CLI.

## What changed

### Changed

- Maintenance release with internal improvements and dependency updates.

## Benchmarks

Two-arm benchmark of this release against 2026.728.3, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21037 count | 21037 count |
| Call edges extracted (corpus total) | 10052 count | 10052 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 711.90 ms | 728.20 ms |

3 regression(s) — published, not omitted:
- Locate accuracy (top-1): 0.98 → 0.98 (-0.2%)
- Locate top-1 — java: 0.96 → 0.93 (-2.4%)
- Locate top-1 — py: 0.97 → 0.94 (-2.4%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.728.4

