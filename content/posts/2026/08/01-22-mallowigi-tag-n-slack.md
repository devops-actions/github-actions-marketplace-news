---
title: Slackalaka
date: 2026-08-01 22:31:22 +00:00
tags:
  - mallowigi
  - GitHub Actions
draft: false
repo: https://github.com/mallowigi/tag-n-slack
marketplace: https://github.com/marketplace/actions/slackalaka
version: 0.2.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action creates a new Git tag with a changelog and notifies Slack about the release. It supports two version increment strategies: retrieving version from `package.json` and commit hash, and using "Squash and Merge" in PRs to get the merge commit's version and message. The action also removes images and user attachments from the Slack message based on repository privacy settings.
---


Version updated for **https://github.com/mallowigi/tag-n-slack** to version **0.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slackalaka) to find the latest changes.

## Action Summary

This GitHub Action creates a new Git tag with a changelog and notifies Slack about the release. It supports two version increment strategies: retrieving version from `package.json` and commit hash, and using "Squash and Merge" in PRs to get the merge commit's version and message. The action also removes images and user attachments from the Slack message based on repository privacy settings.

## What's Changed

- Truncate changelog content before subversion headers during parsing (4cba572)
- Remove redundant error handling for directory listing in `findPackageJson`. (d48462d)
- Remove redundant error handling for directory listing in `findPackageJson`. (e8cca16)
- Remove redundant error handling for directory listing in `findPackageJson`. (0998ab2)
- Remove redundant error handling for directory listing in `findPackageJson`. (74b7ec6)
- Remove redundant error handling for directory listing in `findPackageJson`. (995b49e)
- Add watch mode and enhance error handling for `findPackageJson` (58f570c)
- Add watch mode and enhance error handling for `findPackageJson` (0a6a3ea)
- Add watch mode and enhance error handling for `findPackageJson` (d616c7f)
- Migrate codebase and dependencies to ES modules. (bd554c2)
