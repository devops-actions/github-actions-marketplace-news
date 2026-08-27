---
title: GitHub Stats Cards
date: 2026-08-27 07:47:04 +00:00
tags:
  - stn1slv
  - GitHub Actions
draft: false
repo: https://github.com/stn1slv/github-stats-cards
marketplace: https://github.com/marketplace/actions/github-stats-cards
version: v1.3.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the generation of beautiful, high-quality SVG statistics cards for your GitHub profile README. It runs on a schedule and updates your profile SVG files using Python and GitHub Actions. The tool supports various features such as 50+ themes, comprehensive stats, top languages and contributions cards, smart weighting, aligned layouts, customizable content, and local generation without external service dependencies.
---


Version updated for **https://github.com/stn1slv/github-stats-cards** to version **v1.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-stats-cards) to find the latest changes.

## Action Summary

This GitHub Action automates the generation of beautiful, high-quality SVG statistics cards for your GitHub profile README. It runs on a schedule and updates your profile SVG files using Python and GitHub Actions. The tool supports various features such as 50+ themes, comprehensive stats, top languages and contributions cards, smart weighting, aligned layouts, customizable content, and local generation without external service dependencies.

## What's Changed

### Added

- `vue-github-dark` theme: the `vue-dark` palette on GitHub's dark-mode canvas (`#0d1117`), with a matching border so the card has no visible edge and blends into a README viewed in dark mode. It is a fixed dark background, so it will show as a dark rectangle to anyone browsing in light mode.

Usage:

```yaml
- uses: stn1slv/github-stats-cards@v1.3.0
  with:
    username: your-username
    theme: vue-github-dark
```

Full changelog: https://github.com/stn1slv/github-stats-cards/blob/v1.3.0/CHANGELOG.md
