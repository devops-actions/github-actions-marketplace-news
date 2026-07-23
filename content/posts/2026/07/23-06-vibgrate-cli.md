---
title: Vibgrate Scan
date: 2026-07-23 06:15:42 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.722.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `@vibgrate/cli` GitHub Action provides a comprehensive local codebase intelligence tool for AI coding agents. It automates several key tasks including generating a deterministic code graph, calculating drift scores to measure how far behind the codebase is in terms of runtime dependencies and library versions, and providing ranked upgrade priorities for maintaining up-to-date dependencies. The action runs entirely on your machine, ensuring no network calls or data leaves your repository unless explicitly pushed.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.722.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The `@vibgrate/cli` GitHub Action provides a comprehensive local codebase intelligence tool for AI coding agents. It automates several key tasks including generating a deterministic code graph, calculating drift scores to measure how far behind the codebase is in terms of runtime dependencies and library versions, and providing ranked upgrade priorities for maintaining up-to-date dependencies. The action runs entirely on your machine, ensuring no network calls or data leaves your repository unless explicitly pushed.

## What's Changed

# Vibgrate CLI 2026.722.2

_Released 2026-07-22_

This release introduces new commands for managing models in the vg CLI. Users can now access a live hosted model catalog and remove locally-installed models more easily.

## What changed

### New

- `vg models catalog` provides a key-free, cached list of live hosted models from OpenRouter, with options for JSON output and offline caching.
- `vg models rm <name>` allows for the removal of locally-installed models, printing a plan by default and requiring `--yes` for confirmation.

## Benchmarks

Two-arm benchmark of this release against 2026.722.1, interleaved on one runner against the pinned corpus (176 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 19690 count | 19690 count |
| Call edges extracted (corpus total) | 8682 count | 8682 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 579.30 ms | 585.60 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.722.2

