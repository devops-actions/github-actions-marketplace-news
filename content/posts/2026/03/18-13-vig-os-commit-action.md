---
title: Commit via GitHub API
date: 2026-03-18 13:32:25 +00:00
tags:
  - vig-os
  - GitHub Actions
draft: false
repo: https://github.com/vig-os/commit-action
marketplace: https://github.com/marketplace/actions/commit-via-github-api
version: v0.1.5
dependentsNumber: "4"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/vig-os/commit-action** to version **v0.1.5**.
- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/commit-via-github-api) to find the latest changes.

## Action Summary

The "Commit Action" is a GitHub Action designed to automate the creation of commits using the GitHub API, ensuring that commits are automatically signed and can bypass branch protection rules. It simplifies workflows by enabling programmatic commits to specific branches, even in scenarios with strict repository rulesets. Key features include modularity, type safety, and comprehensive testing, making it a robust solution for automating commit-related tasks.

## Release notes


### Fixed

- Excluded `.git` metadata paths during `FILE_PATHS` directory expansion to prevent malformed Git tree paths (issue #15).


