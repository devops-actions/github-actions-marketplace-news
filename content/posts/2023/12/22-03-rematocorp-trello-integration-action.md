---
title: Trello Card & GitHub PR Integration
date: 2023-12-22 03:18:46 +00:00
tags:
  - rematocorp
  - GitHub Actions
draft: false
repo: rematocorp/trello-integration-action
marketplace: https://github.com/marketplace/actions/trello-card-github-pr-integration
version: v8.1.0
dependentsNumber: "16"
---


Version updated for **rematocorp/trello-integration-action** to version **v8.1.0**.
- This action is used across all versions by **16** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trello-card-github-pr-integration) to find the latest changes.

## Release notes

Support multiple boards via `trello-list-id-pr-open/draft/closed` options that can now take in multiple lists separated by `;` (for example: `list-id-1;list-id-2;list-id-3`). The action will move the card to a list that exists on the board where the card is currently located.

Resolves #68
