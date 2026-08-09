---
title: Star History Action
date: 2026-08-09 22:07:01 +00:00
tags:
  - narayann7
  - GitHub Actions
draft: false
repo: https://github.com/narayann7/star-history-action
marketplace: https://github.com/marketplace/actions/star-history-action
version: v1.0.5
dependentsNumber: "21"
actionType: Composite
actionSummary: |
  This GitHub Action automatically generates and updates an SVG star history chart for a repository owned or collaborated on by its owner or collaborators. It uses Node.js to run the `star-history` renderer, which outputs static files (SVG and PNG) that are committed to the repository's README, ensuring that the chart is always current without relying on external services. The action checks for changes in star data and commits only if there have been updates, improving efficiency by avoiding unnecessary renders.
---


Version updated for **https://github.com/narayann7/star-history-action** to version **v1.0.5**.

- This action is used across all versions by **21** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/star-history-action) to find the latest changes.

## Action Summary

This GitHub Action automatically generates and updates an SVG star history chart for a repository owned or collaborated on by its owner or collaborators. It uses Node.js to run the `star-history` renderer, which outputs static files (SVG and PNG) that are committed to the repository's README, ensuring that the chart is always current without relying on external services. The action checks for changes in star data and commits only if there have been updates, improving efficiency by avoiding unnecessary renders.

## What's Changed

### Changed

- The chart no longer draws the "star-history.com" watermark in the bottom-right corner. The vendored renderer is untouched; the watermark text and its icon are stripped after rendering, alongside the existing `<style>` and `.browser-only` strips. Attribution for the vendored star-history code stays where the MIT license needs it, in `renderer/vendor/LICENSE` and `renderer/NOTICE.md`.
- The change-detection signature now includes a `RENDER_VERSION` constant, so a change to how the chart is drawn reaches every repo on the next run instead of waiting for a star change or a day rollover. This release bumps it, so the first run after upgrade re-renders and commits even with flat stars.

**Upgrading:** consumers pinned to `@v1` pick this up automatically — the `v1` tag now points at v1.0.5. Your next scheduled run regenerates the chart without the watermark.

**Full changelog:** https://github.com/narayann7/star-history-action/blob/main/CHANGELOG.md
