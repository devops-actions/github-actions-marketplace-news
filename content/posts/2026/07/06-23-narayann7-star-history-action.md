---
title: Star History Action
date: 2026-07-06 23:04:04 +00:00
tags:
  - narayann7
  - GitHub Actions
draft: false
repo: https://github.com/narayann7/star-history-action
marketplace: https://github.com/marketplace/actions/star-history-action
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/narayann7/star-history-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/star-history-action) to find the latest changes.

## What's Changed

First release.

An unofficial GitHub Action that renders a star history chart for your own repositories and commits it into your repo, so your README embeds a static SVG that stays fresh. It is meant for repos you own or collaborate on, and works after GitHub's June 2026 stargazers API restriction.

Highlights:
- Renders with star-history's own chart code (vendored, MIT, credited). No headless browser, no third-party CLI.
- Light and dark SVGs, embedded via a `<picture>` block between README markers.
- Commits only when the chart actually changes (data-signature detection).
- Timestamped filenames bust GitHub's image cache; old files are cleaned up.
- Logos inlined as base64 so GitHub renders them; embedded font stripped to keep files small.

Usage: `uses: narayann7/star-history-action@v1`. See the README for the workflow and README markers.

Not affiliated with star-history.com.

