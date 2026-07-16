---
title: void git identity
date: 2026-07-16 22:32:11 +00:00
tags:
  - voidmason
  - GitHub Actions
draft: false
repo: https://github.com/voidmason/git-identity
marketplace: https://github.com/marketplace/actions/void-git-identity
version: v1
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action resolves the Git committer identity (name and email) from a token or a PAT, handling various resolution strategies including lookup based on user information. It supports specifying explicit names and emails directly in the action inputs or using default values if no specific pair is found. The resolved pair can be used to configure Git settings or passed to other actions as needed.
---


Version updated for **https://github.com/voidmason/git-identity** to version **v1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/void-git-identity) to find the latest changes.

## Action Summary

This GitHub Action resolves the Git committer identity (name and email) from a token or a PAT, handling various resolution strategies including lookup based on user information. It supports specifying explicit names and emails directly in the action inputs or using default values if no specific pair is found. The resolved pair can be used to configure Git settings or passed to other actions as needed.

## What's Changed

- Add optional setup mode to apply git config (a97729d)
- Add git-identity action to resolve committer from token (4466523)
- Initial commit (233ed78)
