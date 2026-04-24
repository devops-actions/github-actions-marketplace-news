---
title: Comet contribution graph
date: 2026-04-24 05:57:02 +00:00
tags:
  - kiaquila
  - GitHub Actions
draft: false
repo: https://github.com/kiaquila/comet-contribution-graph
marketplace: https://github.com/marketplace/actions/comet-contribution-graph
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kiaquila/comet-contribution-graph** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/comet-contribution-graph) to find the latest changes.

## Action Summary

The **comet-contribution-graph** GitHub Action generates a visually engaging, animated SVG representation of your GitHub contribution graph, resembling a comet tracing your most productive days across the year. It automates the process of fetching contribution data, rendering the SVG, and publishing it to a specified branch for easy embedding in your GitHub profile README. This action enhances the standard contribution graph by adding a creative and dynamic way to showcase your activity, with optional support for reduced-motion users.

## What's Changed

## Adaptive star rendering (PR #11)

Non-peak days now render as a halo + core two-layer star whose brightness and size adapt to the author's contribution distribution, not just raw count.

### What changed

- **Log-compression intensity**: replaced `count / maxActive` with `log(1+count) / log(1+maxNonPeak)` — heavy tails no longer crush the mid-distribution.
- **Density regime**: new `d` derived from active-day ratio + CV; drives ceiling scaling of halo/core so larger accounts read as denser and richer.
- **Always-on halo**: every active non-peak day now emits a halo (floor 1.5px @ 0.12 opacity) plus a core dot. Spike-arms removed from non-peaks.
- **5-bucket jitter**: cell placement uses 4 corners + center slots (not continuous uniform), giving a more natural star-field look while keeping the 7-day grid readable.
- **Background stars** scale with density regime (50 / 65 / 80 across small/medium/large).

### Why

On heavy-tailed authors (e.g. someone with a 542-contribution spike and median 54), the old formula mapped a 50-count day to intensity ~0.09 — visually indistinguishable from a 1-count day. Mid-tier days now get a legible, differentiated visual weight.

### Validated against 4 benchmark accounts

- a (sparse, d=0.13), b (medium, d=0.20), c (spiky, d=0.31), d (dense-regular, d=0.66).
- 7 programmatic invariants: floor visibility, spread ratio, coverage at medium, heavy-tail survival, monotonicity, halo presence, regime monotonicity.

### Compatibility

Drop-in replacement. Action consumers on `@v1` pick up v1.2.0 on the next bootstrap run. No config changes.

See [CHANGELOG / spec](https://github.com/kiaquila/comet-contribution-graph/blob/main/specs/008-adaptive-star-rendering/spec.md) for the full breakdown.
