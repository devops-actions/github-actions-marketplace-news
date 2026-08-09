---
title: Tuffgal
date: 2026-08-09 22:05:50 +00:00
tags:
  - nschneble
  - GitHub Actions
draft: false
repo: https://github.com/nschneble/tuffgal-action
marketplace: https://github.com/marketplace/actions/tuffgal
version: v1.6.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The Tuffgal Action is a GitHub Action wrapper for Tuffgal, which automates visual regression testing by comparing screenshots against baseline images. It handles Node.js and Playwright setup, runs the harness with `--ci --manage-servers`, parses `results.json`, uploads artifacts as reports, and posts sticky PR comments for approval. The action supports CI mode and per-PR preview of test results via GitHub Pages.
---


Version updated for **https://github.com/nschneble/tuffgal-action** to version **v1.6.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tuffgal) to find the latest changes.

## Action Summary

The Tuffgal Action is a GitHub Action wrapper for Tuffgal, which automates visual regression testing by comparing screenshots against baseline images. It handles Node.js and Playwright setup, runs the harness with `--ci --manage-servers`, parses `results.json`, uploads artifacts as reports, and posts sticky PR comments for approval. The action supports CI mode and per-PR preview of test results via GitHub Pages.

## What's Changed

### Added

The approve action now edits the sticky report comment in place as an approval runs, so a watching maintainer sees live progress instead of a frozen comment.

### Changed

- The deleted section now links the report's deleted-baselines heading when a preview published
- The sticky PR comment's changed table drops its diff column
- The sticky PR comment is now breakpoint-aware
- The sticky PR comment now lists every failed story individually

### Fixed

The main action now skips its own redundant rerun after a full baseline approval, even when the approve step pushes with a PAT. v1.5.0's shortcut only ever covered the default `GITHUB_TOKEN` path.
