---
title: npm publish action
date: 2024-03-28 11:21:02 +00:00
tags:
  - sknups
  - GitHub Actions
draft: false
repo: sknups/npm-publish-action
marketplace: https://github.com/marketplace/actions/npm-publish-action
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **sknups/npm-publish-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/npm-publish-action) to find the latest changes.

## Release notes

Fix to permit execution on Windows.

- use `$GITHUB_ACTION_PATH` instead of `${{github.action_path}}` (see https://github.com/orgs/community/discussions/25910)
