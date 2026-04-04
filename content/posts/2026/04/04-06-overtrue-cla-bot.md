---
title: CLA Bot - Easily handle Contributor License Agreements (CLAs)
date: 2026-04-04 06:09:49 +00:00
tags:
  - overtrue
  - GitHub Actions
draft: false
repo: https://github.com/overtrue/cla-bot
marketplace: https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas
version: v0.0.9
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/overtrue/cla-bot** to version **v0.0.9**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas) to find the latest changes.

## Action Summary

The CLA Bot GitHub Action ensures that all required contributors sign a Contributor License Agreement (CLA) before their pull requests can be merged. It automates the process by checking for signed agreements from PR authors and commit authors, and posting reminders with signing instructions when necessary. The action supports multiple backend modes for managing signatures and offers customizable configurations to streamline CLA enforcement in repositories.

## What's Changed

## What's changed
- Fix bot detection to honor GitHub's `type === "Bot"` metadata for PR authors and commit authors, so accounts like `@copilot` are excluded when `contributors.exclude_bots` is enabled.
- Keep `[bot]` suffix detection as a fallback for parsed logins such as co-authors.
- Add regression tests and refresh README examples to `overtrue/cla-bot@v0.0.9`.

## Verification
- `pnpm typecheck`
- `pnpm test`
- `pnpm build`

