---
title: Trello Card & GitHub PR Integration
date: 2024-03-22 19:01:38 +00:00
tags:
  - rematocorp
  - GitHub Actions
draft: false
repo: rematocorp/trello-integration-action
marketplace: https://github.com/marketplace/actions/trello-card-github-pr-integration
version: v9.2.0
dependentsNumber: "16"
---


Version updated for **rematocorp/trello-integration-action** to version **v9.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **16** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trello-card-github-pr-integration) to find the latest changes.

## Release notes

Introduce `github-allow-multiple-cards-in-pr-branch-name` option which enables to find multiple Trello cards from branch name. For example a branch name `feature/38-39-foo-bar` includes two short IDs 38 and 39 which are then used to find Trello cards. We recommend to use `trello-board-id` along with this option to avoid system finding and moving wrong cards who happen to have same short ID (i.e. Trello short IDs are unique only for each board).
