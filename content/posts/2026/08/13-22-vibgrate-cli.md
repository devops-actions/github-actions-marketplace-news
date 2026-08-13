---
title: Vibgrate Scan
date: 2026-08-13 22:08:42 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.813.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action automates the process of identifying codebase drift, drift score, risk score, and prioritized upgrade priorities for AI coding agents. It provides a deterministic code graph and runtime/framework lag assessment, dependency age and EOL proximity scoring, and prioritized fix lists to help developers ensure their projects are up-to-date with dependencies and frameworks.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.813.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

The GitHub Action automates the process of identifying codebase drift, drift score, risk score, and prioritized upgrade priorities for AI coding agents. It provides a deterministic code graph and runtime/framework lag assessment, dependency age and EOL proximity scoring, and prioritized fix lists to help developers ensure their projects are up-to-date with dependencies and frameworks.

## What's Changed

# Vibgrate CLI 2026.813.1

_Released 2026-08-13_

This release of the Vibgrate CLI includes several important fixes and enhancements to improve the user experience and accuracy of scans. Notably, architecture layer detection has been expanded to support a wider range of languages and frameworks.

## What changed

### New

- Architecture layer detection now recognizes .NET solutions, classifying C#, F#, VB, and Razor files according to PascalCase conventions and common NuGet packages.
- Architecture layer detection has been extended to cover multiple languages, including Java, Python, Go, Ruby, PHP, Swift, Dart, and Elixir, with popular packages mapped to layer tech stacks.

### Fixed

- `vg fix --dry-run` no longer prompts for a plan tier, allowing for a preview of the recommended plan without writing files.
- `vg scan` now correctly sends the repository's git remote URL during the pre-scan check, preventing miscounts of repositories in fresh clones.
- Scans on Windows now report project paths consistently with `/` separators, ensuring proper deduplication and sorting across different scanners.
- `vg daemon ensure` now waits up to 30 seconds for the background daemon to respond, addressing issues with flaky status confirmations on slow cold starts.

## Benchmarks

Two-arm benchmark of this release against 2026.807.1, interleaved on one runner against the pinned corpus (189 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21609 count | 21609 count |
| Call edges extracted (corpus total) | 10848 count | 10848 count |
| Locate accuracy (top-1) | 0.94 ratio | 0.94 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 545.40 ms | 544 ms |

2 regression(s) — published, not omitted:
- Tasks passed on both arms: 33 → 31 (-6.1%)
- Comparable-task rate (both arms passed / total): 0.94 → 0.89 (-6.1%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.813.1

