---
title: CHANGELOG.md from Conventional Commits
date: 2026-04-27 14:35:51 +00:00
tags:
  - kiyoon
  - GitHub Actions
draft: false
repo: https://github.com/kiyoon/changelog-action
marketplace: https://github.com/marketplace/actions/changelog-md-from-conventional-commits
version: v2.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kiyoon/changelog-action** to version **v2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changelog-md-from-conventional-commits) to find the latest changes.

## Action Summary

This GitHub Action automates the generation of a changelog in Markdown format based on Conventional Commits, allowing users to track changes between tags or commits without requiring the tags to exist beforehand. It solves the challenge of integrating changelog creation into CI/CD pipelines by supporting mock tags, handling initial commits, and avoiding duplicates or disruptions to existing CHANGELOG.md files. Key features include linking pull request IDs and authors, highlighting breaking changes, and exporting the changelog for use in subsequent workflow steps.

## What's Changed

### :bug: Bug Fixes
- [`251b414`](https://github.com/kiyoon/changelog-action/commit/251b4143f07325c260d8822e7c9e3848ffb53a05) - create parent directory for changelog file if missing *(commit by [@kiyoon](https://github.com/kiyoon))*
