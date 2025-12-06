---
title: Python Semantic Release
date: 2024-10-10 02:24:01 +00:00
tags:
  - python-semantic-release
  - GitHub Actions
draft: false
repo: python-semantic-release/python-semantic-release
marketplace: https://github.com/marketplace/actions/python-semantic-release
version: v9.10.1
dependentsNumber: "3,671"
---


Version updated for **python-semantic-release/python-semantic-release** to version **v9.10.1**.
- This action is used across all versions by **3,671** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-semantic-release) to find the latest changes.

## Release notes

## v9.10.1 (2024-10-10)

### Fixes

* fix(config): handle branch match regex errors gracefully (#1054)

prevents stacktrace error when user provided regex for a branch name match
is invalid. Translates most common failure of a plain wildcard `*` character to
the implied proper regex ([`4d12251`](https://github.com/python-semantic-release/python-semantic-release/commit/4d12251c678a38de6b71cac5b9c1390eb9dd8ad6))

