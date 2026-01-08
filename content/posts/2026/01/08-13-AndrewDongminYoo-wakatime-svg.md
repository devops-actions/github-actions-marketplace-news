---
title: WakaTime SVG
date: 2026-01-08 13:22:00 +00:00
tags:
  - AndrewDongminYoo
  - GitHub Actions
draft: false
repo: https://github.com/AndrewDongminYoo/wakatime-svg
marketplace: https://github.com/marketplace/actions/wakatime-svg
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/AndrewDongminYoo/wakatime-svg** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wakatime-svg) to find the latest changes.

## Action Summary

The `wakatime-svg` GitHub Action automates the generation of transparent SVG cards that visualize programming activity from WakaTime statistics for the past 7 days. It provides daily updates on top languages and projects, including time spent, percentages, and additions vs. deletions, publishing the results to a designated branch. This action simplifies the process of creating visually appealing and customizable activity summaries, making them easy to embed in repositories or other platforms.

## Release notes

# v1

First public release of the WakaTime SVG GitHub Action.

## Highlights

- Transparent SVGs that look good on both light and dark themes.
- Mobile-friendly default width (360px) for clean rendering in apps.
- Generates two cards: languages and projects (with additions/deletions split).
- Composite action for simple Marketplace usage with sensible defaults.
- Fully customizable layout via inputs (width, height, padding, column widths, etc.).

## Usage

```yaml:github-actions-workflow
- uses: AndrewDongminYoo/wakatime-svg@v1
  with:
    WAKATIME_API_KEY: ${{ secrets.WAKATIME_API_KEY }}
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Credits

Inspired by `athul/waka-readme` and `rahul-jha98/github-stats-transparent`.

