---
title: DSH Plugin Migrate Bot
date: 2026-08-26 06:30:15 +00:00
tags:
  - royenheart
  - GitHub Actions
draft: false
repo: https://github.com/royenheart/dsh-migrate-bot
marketplace: https://github.com/marketplace/actions/dsh-plugin-migrate-bot
version: v0.1.5
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action automates the migration of a third-party plugin to a specific DeepSeek Harness release by performing various checks and tests. It resolves the target `dsh-v*` version, skips if it matches the last processed version unless forced, runs mechanical tests, sparse-checkouts the harness tag, performs A/B/C reviews, and handles patch reports. If there are changes or failures in the process, it records the version on a state branch and may create an Issue and PR with relevant information.
---


Version updated for **https://github.com/royenheart/dsh-migrate-bot** to version **v0.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dsh-plugin-migrate-bot) to find the latest changes.

## Action Summary

This GitHub Action automates the migration of a third-party plugin to a specific DeepSeek Harness release by performing various checks and tests. It resolves the target `dsh-v*` version, skips if it matches the last processed version unless forced, runs mechanical tests, sparse-checkouts the harness tag, performs A/B/C reviews, and handles patch reports. If there are changes or failures in the process, it records the version on a state branch and may create an Issue and PR with relevant information.

## What's Changed

## Highlights

The Issue again carries the real analysis: root cause, overlap verdict, and each A/B (and last C) prompt section. The 0.1.4 fence hardening stays; we no longer collapse those sections into a two-paragraph teaser.

Consumers pinning `royenheart/dsh-migrate-bot@v0` pick this up automatically.

## Fixes

- **Root cause is derived**, not canned. Last C report's Root cause wins; otherwise overlap verdict plus remaining gaps / edits. Mechanical failure is stated when tests still fail.
- **A/B (and C) sections render in full** as `###` under the Issue `##` outline, so a large harness change shows purpose, overlap, edits, gaps, and risks on the Issue. Payloads stay sanitized so fences and `</details>` cannot steal later sections.

**Full Changelog**: https://github.com/royenheart/dsh-migrate-bot/compare/v0.1.4...v0.1.5
