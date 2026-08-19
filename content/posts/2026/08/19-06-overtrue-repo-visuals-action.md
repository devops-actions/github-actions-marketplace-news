---
title: Self-hosted Repository Visuals
date: 2026-08-19 06:31:28 +00:00
tags:
  - overtrue
  - GitHub Actions
draft: false
repo: https://github.com/overtrue/repo-visuals-action
marketplace: https://github.com/marketplace/actions/self-hosted-repository-visuals
version: v1.3.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action generates star history charts and contributor walls from your repository's GitHub API data, publishing self-contained SVG files without external dependencies or tracking mechanisms. It supports multiple themes and chart variants, including area, line, and glow styles, with customizable color options and layout configurations for the contributor wall.
---


Version updated for **https://github.com/overtrue/repo-visuals-action** to version **v1.3.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/self-hosted-repository-visuals) to find the latest changes.

## Action Summary

This GitHub Action generates star history charts and contributor walls from your repository's GitHub API data, publishing self-contained SVG files without external dependencies or tracking mechanisms. It supports multiple themes and chart variants, including area, line, and glow styles, with customizable color options and layout configurations for the contributor wall.

## What's Changed

Patch release fixing the two failing workflows on `main`.

## Fixed

- **Repository renames no longer break star history.** `history.json` records the repository it belongs to, and a rename left every scheduled run failing with `star history belongs to <old-name>`. A mismatch is now checked against the repository's numeric id — which GitHub keeps resolving from a former name — so a rename is adopted and the stored name rewritten on the next run. History from a genuinely different repository, such as a fork carrying the output branch, is still refused. Falls back to the previous behaviour when `GITHUB_REPOSITORY_ID` is unavailable. (#8)
- **Rebuilt `dist/index.cjs`** so the packaged bundle carries the undici 6.28.0 security bump from #7.

No action is required for existing workflows. A repository renamed while using an earlier version repairs its own `history.json` on the first run after upgrading, with the recorded points preserved.

**Full changelog**: https://github.com/overtrue/repo-visuals-action/compare/v1.3.0...v1.3.1
