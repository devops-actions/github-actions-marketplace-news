---
title: Auto PR dev to main/master
date: 2026-06-22 15:51:34 +00:00
tags:
  - yuri-val
  - GitHub Actions
draft: false
repo: https://github.com/yuri-val/auto-pr-action
marketplace: https://github.com/marketplace/actions/auto-pr-dev-to-main-master
version: v1.3.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yuri-val/auto-pr-action** to version **v1.3.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-pr-dev-to-main-master) to find the latest changes.

## What's Changed

Changes in this Release:
- fix: raise PR diff cap from 100KB to 1MB

100KB was overly conservative; 1MB of UTF-8 fits comfortably within the
model's 400k-token context window, so larger release diffs are sent to
the model intact.

Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>

