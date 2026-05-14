---
title: gcchart
date: 2026-05-14 14:37:03 +00:00
tags:
  - pipipi-dev
  - GitHub Actions
draft: false
repo: https://github.com/pipipi-dev/gcchart
marketplace: https://github.com/marketplace/actions/gcchart
version: v1.1.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/pipipi-dev/gcchart** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gcchart) to find the latest changes.

## Action Summary

The `gcchart` GitHub Action generates visually appealing, stacked bar charts that break down daily GitHub contributions into Commits, PRs, Issues, and Reviews. It automates the creation of these charts in SVG format for easy sharing, enabling users to visualize their contribution activity over customizable time ranges with optional cumulative growth indicators. This tool simplifies tracking and showcasing contribution data in a structured and engaging manner.

## What's Changed

✨ Hover tooltips, per-chart action buttons, and a fresher tweet format.

### Added
- **Rich hover tooltips** on the preview HTML page. A styled overlay shows the per-bucket breakdown (Commits / PRs / Issues / Reviews / Total) as you move the cursor across the bars - much more discoverable than the SVG `<title>` fallback (which still works when the SVG file is opened directly). The cursor switches to a crosshair only over the chart plotting area to signal where the tooltip is active.
- **Author credit** "made by @pipipi-dev" at the bottom-right of the chart, alongside the existing centered "npx gcchart" install hint.
- **Per-chart action buttons** (Copy as PNG / Download SVG / Share on X) in the top-right of each preview chart. Share opens the X composer in a new tab and copies the PNG to your clipboard - a confirmation modal explains the paste step before the new tab opens, since X's Web Intent API has no media attachment parameter. SVGs are inlined into the preview as data URLs so these actions work even when the page is opened via `file://`.

### Changed
- Share-to-X **tweet body** now mirrors the chart header for visual consistency: `🥳USER's contributions` line, the date range underneath, and a `🥇Best day:` line at the bottom. The author attribution wording changed from `Credit: @pipipi_dev` to `Made by @pipipi_dev` for clarity.
