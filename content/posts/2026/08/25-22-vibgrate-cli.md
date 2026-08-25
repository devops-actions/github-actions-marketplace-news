---
title: Vibgrate Scan
date: 2026-08-25 22:36:04 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.825.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of generating code intelligence and drift scores for repositories. It provides a local tool to analyze the current state of a repository's dependencies, including drift scores that measure how far behind it is from being up-to-date with its dependencies. The action also includes a coding agent (`vg code`) that can suggest changes directly in the terminal based on the analysis.
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.825.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the process of generating code intelligence and drift scores for repositories. It provides a local tool to analyze the current state of a repository's dependencies, including drift scores that measure how far behind it is from being up-to-date with its dependencies. The action also includes a coding agent (`vg code`) that can suggest changes directly in the terminal based on the analysis.

## What's Changed

# Vibgrate CLI 2026.825.2

_Released 2026-08-25_

This release of the Vibgrate CLI includes improvements to the relevance engine, enhancing the accuracy of code suggestions and context understanding. Additionally, several changes have been made to the output of the `vg code` command, providing clearer insights into how requests are interpreted.

## What changed

### Improved

- Coding prompts now find the right code more reliably, handling pasted error messages, file paths, stack traces, one-character typos, plural forms, and cross-cutting tasks effectively.
- `vg code` now shows up to six lines of how it interpreted your request, improving visibility for typo corrections.
- VG Code's Context Capsule now expands common coding terms to their corresponding identifiers, improving the relevance of results.

### Changed

- The relevance engine is now part of the Vibgrate relevance module, which is installed automatically; without it, `vg` falls back to basic name matching.
- `vg code` now displays how it read your request before providing answers, including the concepts mapped to your codebase and the reasons for matches.
- The source-bearing context compiled for requests is now referred to as the Context Capsule, reflecting its use for both questions and investigations.
- On tiny repositories, `vg code --capsule` now pastes the mapped files as first-turn context instead of compiling a ranked Context Capsule.

### Fixed

- Graph builds no longer degrade on large parse volumes due to improved parser reuse and better handling of parse failures.

## Benchmarks

Two-arm benchmark of this release against 2026.825.1, interleaved on one runner against the pinned corpus (187 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 21945 count | 21945 count |
| Call edges extracted (corpus total) | 11809 count | 11809 count |
| Locate accuracy (top-1) | 0.95 ratio | 0.95 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 705.80 ms | 706.90 ms |

1 regression(s) — published, not omitted:
- Token reduction vs baseline agent (equal success): 0.27 → 0.22 (-19.3%)

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.825.2

