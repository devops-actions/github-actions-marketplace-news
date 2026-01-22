---
title: WakaTime SVG
date: 2026-01-22 13:42:09 +00:00
tags:
  - AndrewDongminYoo
  - GitHub Actions
draft: false
repo: https://github.com/AndrewDongminYoo/wakatime-svg
marketplace: https://github.com/marketplace/actions/wakatime-svg
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/AndrewDongminYoo/wakatime-svg** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wakatime-svg) to find the latest changes.

## Action Summary

The `wakatime-svg` GitHub Action generates transparent, customizable SVG charts visualizing WakaTime stats for the past 7 days, including the top languages and projects by time. It automates the daily generation and publishing of these visualizations, making it easier to showcase coding activity in a visually appealing format. Key features include language percentage bars, project activity breakdowns, and seamless integration with GitHub repositories for scheduled updates.

## Release notes

## v1.2.0 - 2026-01-22

### Improvements

- Respect private repos better by default: `WAKATIME_PRIVATE_PROJECT_LABEL` can now be `false` (keep “Unknown Project”), `true` (show “Private project”), or any custom text, and `WAKATIME_SKIP_UNKNOWN_PROJECTS=true` skips placeholder rows and continues the ranking.
- Expose the new knobs through the composite action inputs and docs so workflows can tune how private/unknown projects appear.

### New Input

- `WAKATIME_PRIVATE_PROJECT_LABEL`: Controls the replacement text for WakaTime’s `Unknown Project` rows (`false` leaves it as-is, `true` (default) shows “Private project”, any other string is used verbatim).
- `WAKATIME_SKIP_UNKNOWN_PROJECTS`: Skip `Unknown Project` entries and continue down the list to keep showing `WAKATIME_LANG_LIMIT` projects.

**Full Changelog**: https://github.com/AndrewDongminYoo/wakatime-svg/compare/v1.1.0...v1.2.0
