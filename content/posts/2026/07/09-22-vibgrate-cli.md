---
title: Vibgrate Scan
date: 2026-07-09 22:32:33 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.709.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.709.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## What's Changed

# Vibgrate CLI 2026.709.2

_Released 2026-07-09_

This release of the Vibgrate CLI introduces significant improvements to the `search_symbols` command and enhances the `vg serve` functionality. Performance optimizations have also been implemented for better efficiency in large repositories.

## What changed

### Improved

- `search_symbols` now performs a complete literal-string sweep for multi-word queries and provides confirmation when all matches are found.
- `vg serve` updates the code map before starting, ensuring that the AI's first query reflects the current state of the code.

### Performance

- Literal-string sweeps in `search_symbols` are significantly faster on large repositories, running in parallel across CPU cores and utilizing ripgrep when available.

## Benchmarks

Two-arm benchmark of this release against 2026.709.1, interleaved on one runner against the pinned corpus (157 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 18816 count | 18816 count |
| Call edges extracted (corpus total) | 7480 count | 7480 count |
| Locate accuracy (top-1) | 0.97 ratio | 0.97 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 480.30 ms | 472.90 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.709.2

