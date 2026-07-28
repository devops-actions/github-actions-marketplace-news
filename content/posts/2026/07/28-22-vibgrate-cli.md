---
title: Vibgrate Scan
date: 2026-07-28 22:37:51 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.728.5
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `@vibgrate/cli` GitHub Action provides a local codebase intelligence tool that helps developers understand their code's structure, drift level, and dependency statuses. It offers detailed insights into dependencies and drift scores, allowing users to identify potential issues and prioritize fixes before they occur. The action runs on the developer's machine without relying on external APIs or data storage.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.728.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The `@vibgrate/cli` GitHub Action provides a local codebase intelligence tool that helps developers understand their code's structure, drift level, and dependency statuses. It offers detailed insights into dependencies and drift scores, allowing users to identify potential issues and prioritize fixes before they occur. The action runs on the developer's machine without relying on external APIs or data storage.

## What's Changed

# Vibgrate CLI 2026.728.5

_Released 2026-07-28_

This release of the Vibgrate CLI includes a fix for the editor server's behavior when manifest or lockfile changes occur outside the editor. The inline drift decorations will now accurately reflect the current state after such changes.

## What changed

### Fixed

- The vg lsp editor server now rescans when a manifest or lockfile changes on disk, ensuring inline drift decorations show the correct versions.

## Benchmarks

Two-arm benchmark of this release against 2026.728.4, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21039 count | 21039 count |
| Call edges extracted (corpus total) | 10056 count | 10056 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 680.70 ms | 684.10 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.728.5

