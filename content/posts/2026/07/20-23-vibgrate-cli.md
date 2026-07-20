---
title: Vibgrate Scan
date: 2026-07-20 23:01:52 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.720.4
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action provides a local codebase intelligence tool that automatically analyzes a repository to generate a deterministic code graph, drift score, and ranked upgrade priorities. It helps developers understand their codebase's dependencies, runtime lag, and EOL proximity, enabling them to identify potential issues and prioritize updates locally. The action runs on the user's machine without requiring network calls or data leaving the repository unless explicitly pushed.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.720.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

This GitHub Action provides a local codebase intelligence tool that automatically analyzes a repository to generate a deterministic code graph, drift score, and ranked upgrade priorities. It helps developers understand their codebase's dependencies, runtime lag, and EOL proximity, enabling them to identify potential issues and prioritize updates locally. The action runs on the user's machine without requiring network calls or data leaving the repository unless explicitly pushed.

## What's Changed

# Vibgrate CLI 2026.720.4

_Released 2026-07-20_

This release of the vg command-line scanner includes significant performance improvements for symbol searches, fixes for path reporting on Windows, and enhancements to session statistics tracking. These changes aim to streamline the user experience and increase efficiency when working with large repositories.

## What changed

### Improved

- vg serve session stats now count search_symbols toward estimated context-token savings.

### Fixed

- search_symbols literal results are no longer dropped on Windows when ripgrep is installed.
- File paths are now reported with forward slashes on every platform.

### Performance

- search_symbols is much faster on large repositories, with optimizations for exact lookups and parallel processing.

## Benchmarks

Two-arm benchmark of this release against 2026.720.3, interleaved on one runner against the pinned corpus (157 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 19127 count | 19127 count |
| Call edges extracted (corpus total) | 7923 count | 7923 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 614 ms | 621.20 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.720.4

