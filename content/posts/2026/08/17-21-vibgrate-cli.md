---
title: Vibgrate Scan
date: 2026-08-17 21:39:24 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.817.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action provides a local codebase intelligence tool called `vg` that generates a deterministic code graph, calculates drift scores and risk indices, and identifies potential fixes. It helps developers understand the state of their codebases and plan for updates without relying on external APIs or data transfer. The action runs entirely on the developer's machine and does not require any network calls or data exfiltration unless explicitly pushed to a repository.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.817.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action provides a local codebase intelligence tool called `vg` that generates a deterministic code graph, calculates drift scores and risk indices, and identifies potential fixes. It helps developers understand the state of their codebases and plan for updates without relying on external APIs or data transfer. The action runs entirely on the developer's machine and does not require any network calls or data exfiltration unless explicitly pushed to a repository.

## What's Changed

# Vibgrate CLI 2026.817.1

_Released 2026-08-17_

This release of the vg CLI includes important changes to how the daemon operates, enhancements to the lsp command, and several fixes that improve stability and accuracy. Users should consider updating to benefit from these improvements.

## What changed

### New

- vg lsp now includes four new editor-facing capabilities to enhance runtime declaration visibility and manage ignored dependencies.

### Improved

- vg daemon status now displays the CLI version serving the socket for better clarity.

### Changed

- vg code now uses the same standalone vgd as vg daemon ensure, eliminating the in-process daemon for the session.
- gpt-tokenizer has been updated to version 4.x, dropping unused bundles while maintaining token-accurate truncation.

### Fixed

- vg daemon restart now correctly re-spawns vgd from a global vg install, resolving issues with previous spawn attempts.
- vg drift no longer incorrectly considers a node_modules directory above the scanned project as part of the project's installed versions.

## Benchmarks

Two-arm benchmark of this release against 2026.814.2, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21928 count | 22060 count |
| Call edges extracted (corpus total) | 11339 count | 11339 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 745.90 ms | 732.50 ms |

3 regression(s) — published, not omitted:
- Invented dependencies (not in any manifest): 1 → 2 (100.0%)
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.817.1

