---
title: Vibgrate Scan
date: 2026-08-07 07:13:12 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.806.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `@vibgrate/cli` GitHub Action is a local tool that analyzes your codebase to determine its current state and how it compares to previous versions. It provides a code graph and drift score, which helps identify dependencies and potential risks related to outdated libraries or runtime issues. The action is designed to run on the user's machine without relying on external APIs or networks, making it efficient for local development and collaboration.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.806.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The `@vibgrate/cli` GitHub Action is a local tool that analyzes your codebase to determine its current state and how it compares to previous versions. It provides a code graph and drift score, which helps identify dependencies and potential risks related to outdated libraries or runtime issues. The action is designed to run on the user's machine without relying on external APIs or networks, making it efficient for local development and collaboration.

## What's Changed

# Vibgrate CLI 2026.806.2

_Released 2026-08-06_

This release of the vg command-line scanner includes important fixes and new capabilities. Notably, it improves stability when the semantic backend encounters issues and introduces several new features for enhanced functionality.

## What changed

### Changed

- VG Code can now stream shell command output, maintain a task checklist, fetch and search the web under policy, edit Jupyter notebook cells, start a local browser session, and spawn a worktree-scoped subagent.

### Fixed

- Code Graph Ask no longer crashes the language server when the semantic backend is broken.

### Security

- Updated @modelcontextprotocol/sdk and yaml to patched releases addressing known supply-chain advisories.

## Benchmarks

Two-arm benchmark of this release against 2026.806.1, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21601 count | 21601 count |
| Call edges extracted (corpus total) | 10830 count | 10830 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 645.80 ms | 647.10 ms |

2 regression(s) — published, not omitted:
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.806.2

