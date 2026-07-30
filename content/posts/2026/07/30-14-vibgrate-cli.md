---
title: Vibgrate Scan
date: 2026-07-30 14:29:42 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.730.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `@vibgrate/cli` is a tool for local codebase intelligence that automates the creation of a deterministic code graph and drift score, providing insights into the codebase's stability and potential issues. It runs on your machine without any network calls or data leaving your repo unless explicitly pushed. The action helps developers understand what their codebase is and how far behind it may be in terms of dependencies and framework lag.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.730.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action `@vibgrate/cli` is a tool for local codebase intelligence that automates the creation of a deterministic code graph and drift score, providing insights into the codebase's stability and potential issues. It runs on your machine without any network calls or data leaving your repo unless explicitly pushed. The action helps developers understand what their codebase is and how far behind it may be in terms of dependencies and framework lag.

## What's Changed

# Vibgrate CLI 2026.730.2

_Released 2026-07-30_

Routine maintenance update for the CLI.

## What changed

### Changed

- Maintenance release with internal improvements and dependency updates.

## Benchmarks

Two-arm benchmark of this release against 2026.730.1, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21156 count | 21156 count |
| Call edges extracted (corpus total) | 10227 count | 10227 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 698.20 ms | 699.20 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.730.2

