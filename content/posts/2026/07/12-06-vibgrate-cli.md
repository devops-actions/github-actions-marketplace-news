---
title: Vibgrate Scan
date: 2026-07-12 06:05:43 +00:00
tags:
  - vibgrate
  - GitHub Actions
draft: false
repo: https://github.com/vibgrate/cli
marketplace: https://github.com/marketplace/actions/vibgrate-scan
version: v2026.711.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/vibgrate/cli** to version **v2026.711.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibgrate-scan) to find the latest changes.

## What's Changed

# Vibgrate CLI 2026.711.2

_Released 2026-07-11_

This release of the vg command-line scanner introduces enhanced vulnerability detection and performance improvements. The documentation has also been updated for easier navigation to relevant resources.

## What changed

### New

- vg scan now checks whether the vulnerable code in your dependencies is actually used, tagging findings as reachable, potentially reachable, not reached, or unknown.

### Improved

- The CLI's public documentation now includes direct links to relevant vibgrate.com pages for easier access to full references.

### Performance

- Hosted library docs answers are now cached locally for a day, allowing for instant responses to repeat vg lib and AI-context lookups.

## Benchmarks

Two-arm benchmark of this release against 2026.711.1, interleaved on one runner against the pinned corpus (157 metrics compared).

| Metric | Previous | This release |
| --- | --- | --- |
| Languages with extraction | 19 count | 19 count |
| Definitions extracted (corpus total) | 18869 count | 18869 count |
| Call edges extracted (corpus total) | 7530 count | 7530 count |
| Locate accuracy (top-1) | 0.97 ratio | 0.97 ratio |
| Dependency detection (authored manifest truth) | 0.96 ratio | 0.96 ratio |
| CLI startup (--version, median) | 619.90 ms | 637.20 ms |

No regressions against the previous release.

Full report and methodology: https://vibgrate.com/cli/benchmarks

## Install or update

```sh
npm install -g @vibgrate/cli
vg
```

Full changelog: https://vibgrate.com/changelog/cli/2026.711.2

