---
title: Vibgrate Scan
date: 2026-08-07 14:24:02 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.807.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `@vibgrate/cli` provides a local codebase intelligence tool for AI coding agents. It generates a deterministic code graph and drift score to help developers understand the current state of their codebase and identify potential risks, allowing them to make informed decisions about updates and improvements.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.807.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action `@vibgrate/cli` provides a local codebase intelligence tool for AI coding agents. It generates a deterministic code graph and drift score to help developers understand the current state of their codebase and identify potential risks, allowing them to make informed decisions about updates and improvements.

## What's Changed

# Vibgrate CLI 2026.807.1

_Released 2026-08-07_

This release of the vg command-line scanner includes improvements to the handling of large file operations and fixes for session history and todo management. These changes enhance the user experience by providing clearer feedback and maintaining context in ongoing tasks.

## What changed

### Improved

- VG Code no longer dumps the full file body into the transcript when deleting or creating a large file, showing a short line-count summary instead.

### Fixed

- VG Code now marks remaining focus-chain todos done when the agent finishes, preventing the checklist from sticking at Progress N−1/N.
- VG Code session history now keeps full prompts and final answers, ensuring that reopening a prior chat reloads the complete thread.

## Benchmarks

Two-arm benchmark of this release against 2026.806.2, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21605 count | 21605 count |
| Call edges extracted (corpus total) | 10836 count | 10836 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 674 ms | 680.30 ms |

2 regression(s) — published, not omitted:
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.807.1

