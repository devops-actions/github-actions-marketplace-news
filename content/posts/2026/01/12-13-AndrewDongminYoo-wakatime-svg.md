---
title: WakaTime SVG
date: 2026-01-12 13:37:52 +00:00
tags:
  - AndrewDongminYoo
  - GitHub Actions
draft: false
repo: https://github.com/AndrewDongminYoo/wakatime-svg
marketplace: https://github.com/marketplace/actions/wakatime-svg
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/AndrewDongminYoo/wakatime-svg** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wakatime-svg) to find the latest changes.

## Action Summary

This GitHub Action generates transparent SVG cards visualizing WakaTime statistics, including the top 5 languages and projects from the past 7 days. It automates the daily refresh and publishing of these visualizations to a designated branch, making it easy to embed up-to-date coding activity insights in repositories or external platforms. The action is customizable and supports both light and dark themes, offering a simple, automated solution for displaying programming activity metrics.

## Release notes

# v1.1.0 - 2026-01-12

## Improvements

- Show only the top N languages (excluding "Other") while keeping bars normalized to the displayed items.
- Display language percentage text from the raw WakaTime API value (now with one decimal place).
- Improve bar readability with a rounded end-cap that preserves perceived progress length.
- Increase default percent column width to avoid clipping.
- Align default duration column width with the new layout.

## New Input

- `WAKATIME_CHART_COL_PERCENT_WIDTH`: Optional percent column width (px).
- `WAKATIME_CHART_ROW_HEIGHT`: Optional row height (px).

