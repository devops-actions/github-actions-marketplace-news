---
title: CLA Bot - Easily handle Contributor License Agreements (CLAs)
date: 2026-04-02 21:55:58 +00:00
tags:
  - overtrue
  - GitHub Actions
draft: false
repo: https://github.com/overtrue/cla-bot
marketplace: https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas
version: v0.0.4
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/overtrue/cla-bot** to version **v0.0.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cla-bot-easily-handle-contributor-license-agreements-clas) to find the latest changes.

## Action Summary

CLA Bot is a GitHub Action designed to enforce Contributor License Agreement (CLA) compliance by blocking pull requests until all required contributors (e.g., PR authors and commit authors) sign the specified CLA via a comment. It automates the process of tracking and verifying CLA signatures, providing multiple registry backends and operational modes to suit different project needs. This action streamlines the CLA management process, ensuring legal compliance while reducing manual oversight.

## What's Changed

## What's Changed
- Relax CLA comment matching so terminal punctuation is optional by default.
- Add signing.ignore_terminal_punctuation to let repositories opt back into strict punctuation.
- Update README and example workflows to use overtrue/cla-bot@v0.0.4.

