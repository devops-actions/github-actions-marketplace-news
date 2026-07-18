---
title: Self-hosted Repository Visuals
date: 2026-07-18 22:29:40 +00:00
tags:
  - overtrue
  - GitHub Actions
draft: false
repo: https://github.com/overtrue/repo-visuals-action
marketplace: https://github.com/marketplace/actions/self-hosted-repository-visuals
version: v1.3.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action generates star history charts and contributor walls from GitHub's API without using third-party rendering services, providing customizable themes and offline SVGs with embedded avatar images. It supports multiple chart types (area, line, glow) and various themes, including classic and gradient styles, with a focus on determinism and offline capabilities for local rendering.
---


Version updated for **https://github.com/overtrue/repo-visuals-action** to version **v1.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/self-hosted-repository-visuals) to find the latest changes.

## Action Summary

The GitHub Action generates star history charts and contributor walls from GitHub's API without using third-party rendering services, providing customizable themes and offline SVGs with embedded avatar images. It supports multiple chart types (area, line, glow) and various themes, including classic and gradient styles, with a focus on determinism and offline capabilities for local rendering.

## What's Changed

Backward-compatible feature release. Output filenames and existing `chart-style` values are unchanged, so workflows pinned to `v1` pick up the new look automatically on their next run.

## Highlights

- **9 chart themes** (was 3): `classic`, `minimal`, `gradient`, `midnight`, `sunset`, `ocean`, `forest`, `flame`, `mono`.
- **Chart variants** — `area`, `line`, `glow` selectable per theme with the new `chart-variant` input (9 × 3 combinations).
- **Redesigned chart** — dashboard-style header with the current star total, smooth monotone-cubic trend line, dashed gridlines, hairline card border, and a footer showing the tracked date range. The old endpoint label that collided with the top axis is gone.
- **Contributor wall styling** — configurable columns, avatar size, spacing, outer padding, and avatar shape (`circle`, `squircle`, `square`), plus top-three leaderboard highlighting and a "led by" header.
- **Color and title overrides** — `background-color(-dark)`, `accent-color(-dark)`, `chart-title`, `contributors-title`. All color inputs are hex-validated.

## New inputs

`chart-variant`, `chart-title`, `smooth`, `background-color`, `background-color-dark`, `accent-color`, `accent-color-dark`, `contributors-title`, `contributors-columns`, `avatar-size`, `avatar-gap`, `avatar-shape`, `padding`.

See the [README](https://github.com/overtrue/repo-visuals-action/blob/v1.3.0/README.md) for the full theme gallery and inputs table.

**Full changelog**: https://github.com/overtrue/repo-visuals-action/compare/v1.2.1...v1.3.0

