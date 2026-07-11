---
title: Star History Action
date: 2026-07-11 22:22:52 +00:00
tags:
  - narayann7
  - GitHub Actions
draft: false
repo: https://github.com/narayann7/star-history-action
marketplace: https://github.com/marketplace/actions/star-history-action
version: v1.0.1
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/narayann7/star-history-action** to version **v1.0.1**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/star-history-action) to find the latest changes.

## What's Changed

Makes the star history chart render on GitHub and on package registries (npm, pub.dev), and stops external image URLs from 404ing.

### Added
- PNG output. The renderer rasterizes a `star-history.png` alongside the SVGs, so the chart shows on registries that cannot render SVG (npm, pub.dev).
- `readme-format` input (`picture` or `png`). `picture` keeps the SVG `<picture>` block with GitHub dark/light support; `png` writes a plain-markdown image at an absolute `raw.githubusercontent.com` URL, the only form that renders on npm and pub.dev.

### Changed
- Stable filenames. Charts are written to fixed paths (`star-history-<theme>.svg`, `star-history.png`) and overwritten in place instead of timestamped names. A frozen README URL on a registry no longer 404s when a new chart is generated.
- This action's own repository now demos with a static placeholder and no longer commits its live chart into git.

### Fixed
- PNG rasterization stripped the decorative `feTurbulence`/`feDisplacementMap` sketch filter, which crashed the raster engine (resvg). The SVG output keeps the filter; only the PNG drops it.

### Compatibility
- Repositories upgrading from 1.0.0 keep their old timestamped files, so any already published registry README that points at the old URL still resolves. The action stops producing timestamped names but does not delete existing ones.
- On the first run after upgrade, the chart is regenerated even when the star count is unchanged, so the new stable files and the PNG are created once.

**Full CHANGELOG:** https://github.com/narayann7/star-history-action/blob/main/CHANGELOG.md

