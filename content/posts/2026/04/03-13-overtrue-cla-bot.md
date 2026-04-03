---
title: CLA Bot - Easily handle Contributor License Agreements (CLAs)
date: 2026-04-03 13:45:44 +00:00
tags:
  - overtrue
  - GitHub Actions
draft: false
repo: https://github.com/overtrue/cla-bot
marketplace: https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas
version: v0.0.6
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/overtrue/cla-bot** to version **v0.0.6**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas) to find the latest changes.

## Action Summary

The CLA Bot GitHub Action automates the enforcement of Contributor License Agreement (CLA) signing for pull requests by blocking merges until all required contributors (e.g., PR authors and commit authors) have signed the CLA via a specific comment. It simplifies the process of tracking and verifying CLA compliance by automatically posting signing instructions, re-checking contributions upon updates, and providing multiple backend options for managing signature records. This action helps maintain legal compliance for contributions with minimal manual intervention.

## What's Changed

## Highlights

- fix `action.yml` metadata so the action can be loaded correctly when referenced by release tag
- keep the base-branch sync merge commit CLA signer fix from `v0.0.5`
- update README and workflow examples to reference `v0.0.6`

