---
title: DSH Plugin Migrate Bot
date: 2026-08-28 17:50:44 +00:00
tags:
  - royenheart
  - GitHub Actions
draft: false
repo: https://github.com/royenheart/dsh-migrate-bot
marketplace: https://github.com/marketplace/actions/dsh-plugin-migrate-bot
version: v0.2.1
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action automates the migration of a third-party plugin from one DeepSeek Harness version to another. It resolves the target harness version (`dsh-v*`), performs mechanical tests, runs two DSH review sessions (DeepSeek V4 Pro and dsh-anchored-standard), and then creates an Issue and PR if the plugin tree is dirty. The Action skips migration if the same version has already been processed successfully. It requires permissions to write to repository contents, open issues, and pull requests, with GitHub Actions permission enabled for creating pull requests. The action uses a cron schedule or manual workflow dispatch to trigger migrations.
---


Version updated for **https://github.com/royenheart/dsh-migrate-bot** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dsh-plugin-migrate-bot) to find the latest changes.

## Action Summary

This GitHub Action automates the migration of a third-party plugin from one DeepSeek Harness version to another. It resolves the target harness version (`dsh-v*`), performs mechanical tests, runs two DSH review sessions (DeepSeek V4 Pro and dsh-anchored-standard), and then creates an Issue and PR if the plugin tree is dirty. The Action skips migration if the same version has already been processed successfully. It requires permissions to write to repository contents, open issues, and pull requests, with GitHub Actions permission enabled for creating pull requests. The action uses a cron schedule or manual workflow dispatch to trigger migrations.

## What's Changed

**Full Changelog**: https://github.com/royenheart/dsh-migrate-bot/compare/v0.2.0...v0.2.1
