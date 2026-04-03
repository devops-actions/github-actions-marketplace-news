---
title: CLA Bot - Easily handle Contributor License Agreements (CLAs)
date: 2026-04-03 21:44:42 +00:00
tags:
  - overtrue
  - GitHub Actions
draft: false
repo: https://github.com/overtrue/cla-bot
marketplace: https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas
version: v0.0.8
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/overtrue/cla-bot** to version **v0.0.8**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas) to find the latest changes.

## Action Summary

CLA Bot is a GitHub Action that enforces Contributor License Agreement (CLA) compliance by blocking pull requests until all required contributors have signed the CLA via a specified comment. It automates the process of verifying signatures, re-checks when comments are updated, and provides signing instructions to contributors directly on pull requests. The action supports multiple configuration modes to suit various repository and record-keeping preferences, offering flexibility and reducing manual CLA management overhead.

## What's Changed

- Fix CLA signature detection for GitHub quote-replies by ignoring quoted prompt lines and blank lines before matching.
- Keep strict matching for the remaining comment body so extra non-quoted text still does not count as a signature.
- Preserve the v0.0.7 fixes for `issue_comment.edited` handling and PR backfill recovery.

