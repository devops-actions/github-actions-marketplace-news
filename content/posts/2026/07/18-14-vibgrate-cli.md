---
title: Vibgrate Scan
date: 2026-07-18 14:12:53 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.718.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `@vibgrate/cli` is designed to analyze local codebases, providing insights such as a deterministic code graph and a drift score. It automates tasks like generating drift scores, building code graphs, and answering questions about the codebase. The action runs locally on the user's machine without requiring any API keys or network connections, focusing on improving productivity for AI coding agents by offering local intelligence and documentation tools.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.718.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action `@vibgrate/cli` is designed to analyze local codebases, providing insights such as a deterministic code graph and a drift score. It automates tasks like generating drift scores, building code graphs, and answering questions about the codebase. The action runs locally on the user's machine without requiring any API keys or network connections, focusing on improving productivity for AI coding agents by offering local intelligence and documentation tools.

## What's Changed

# Vibgrate CLI 2026.718.2

_Released 2026-07-18_

This release of the Vibgrate CLI includes new commands for system diagnostics and enhanced security features. It also improves guidance for AI assistants and updates telemetry settings.

## What changed

### New

- A new vg doctor command provides a read-only overview of your setup, including configuration, credentials, and server launch details.
- vg serve now respects the DO_NOT_TRACK standard, ensuring no data is uploaded even with --share-stats.
- vg serve --http now blocks requests from non-local origins to enhance security against DNS rebinding.

### Changed

- The library-docs tools now offer clearer guidance for AI assistants, emphasizing the importance of version-correct documentation.

### Security

- Patched the semantic-embedding backend to use node-tar 7.5.8+, addressing high-severity vulnerabilities.

## Benchmarks

Two-arm benchmark of this release against 2026.717.1, interleaved on one runner against the pinned corpus (157 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 19053 count | 19053 count |
| Call edges extracted (corpus total) | 7791 count | 7791 count |
| Locate accuracy (top-1) | 0.98 ratio | 0.98 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 604.10 ms | 603.20 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.718.2

