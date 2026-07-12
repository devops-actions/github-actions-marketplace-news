---
title: Star History Action
date: 2026-07-12 06:12:13 +00:00
tags:
  - narayann7
  - GitHub Actions
draft: false
repo: https://github.com/narayann7/star-history-action
marketplace: https://github.com/marketplace/actions/star-history-action
version: v1.0.2
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/narayann7/star-history-action** to version **v1.0.2**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/star-history-action) to find the latest changes.

## What's Changed

## Added

- `font-family` input. Set it to any Google Fonts family (for example `Patrick Hand`) and the renderer downloads that font at run time and applies it to the PNG chart. It reads the font's real internal name so it matches even when that differs from the family string, and non-Latin families such as `Noto Sans SC` work. Empty input keeps the bundled Comic Neue with no network call, and any download failure falls back to Comic Neue without failing the run. This affects the PNG only, since GitHub strips `@font-face` from README-embedded SVGs.
- Optional `watch: types: [started]` trigger, documented alongside the cron schedule and `workflow_dispatch`, so a chart can refresh right after a new star. It supplements the schedule rather than replacing it: `watch` fires on new stars only, never on unstars, and does not refresh the time axis on quiet days.

## Compatibility

- The change-detection signature now includes the requested font, so changing only `font-family` invalidates the cache and re-renders. As a side effect the signature format changed, so the first run after upgrading regenerates the chart once even when the star count is unchanged.

**Full changelog:** https://github.com/narayann7/star-history-action/blob/main/CHANGELOG.md
