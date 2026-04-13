---
title: vibestats
date: 2026-04-13 22:09:41 +00:00
tags:
  - stephenleo
  - GitHub Actions
draft: false
repo: https://github.com/stephenleo/vibestats
marketplace: https://github.com/marketplace/actions/vibestats
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/stephenleo/vibestats** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibestats) to find the latest changes.

## Action Summary

The `vibestats` GitHub Action automates the tracking and visualization of your Claude Code session activity by generating a GitHub contributions-style heatmap. It streamlines the process by recording session data, aggregating it daily via a GitHub Action, and automatically updating a heatmap embedded in your GitHub profile README. This action provides an efficient way to monitor and showcase your coding activity directly on your GitHub profile.

## What's Changed

- feat: generate light + dark heatmap SVGs for GitHub README (b343999)
- fix(site): increase heatmap cell size to fill container width (29dac7f)
- fix(site): heatmap empty cells visible in dark mode, re-render on theme toggle (d79cb32)
- feat(site): redesign dashboard as full analytics panel (263703f)
- feat: add token usage & model stats to vibestats pipeline (#103) (45799e4)
- feat(site): standardize heatmap colors with fixed thresholds (67de39a)
- fix(site): revert to _redirects, remove _worker.js (ba09892)
- ci: purge Cloudflare CDN cache after deploy (7169ce6)
- debug: add worker version header (3d48364)
- fix(site): disable CDN edge-cache for username routes (9367d60)
