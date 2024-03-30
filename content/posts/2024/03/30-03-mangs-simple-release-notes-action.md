---
title: mangs/simple-release-notes-action
date: 2024-03-30 03:24:32 +00:00
tags:
  - mangs
  - GitHub Actions
draft: false
repo: mangs/simple-release-notes-action
marketplace: https://github.com/marketplace/actions/mangs-simple-release-notes-action
version: v3.0.0
dependentsNumber: "6"
---


Version updated for **mangs/simple-release-notes-action** to version **v3.0.0**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mangs-simple-release-notes-action) to find the latest changes.

## Release notes

- Latest major tag now automatically updated to the latest commit SHA when new release is published
- Update action to Node.js version 20
- `POST` requests now done with `fetch()`
- Linting now uses `@babbel/eslint-config`
- Due to download reliability problems, NPM scripts `list:todo-comments` and `list:eslint:disable-directives` use a local version of Ripgrep instead of one downloaded from NPM
- Update dependencies to latest
