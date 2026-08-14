---
title: Slackalaka
date: 2026-08-14 13:55:59 +00:00
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
  The GitHub Action `Tag n' Slack` creates a new release tag with a changelog and notifies Slack about the release. It automates the process of extracting version information from either `package.json` or commit hash/message, updating the changelog, creating a release tag, and sending a notification to a specified Slack channel with details about the release.
---


Version updated for **https://github.com/mallowigi/tag-n-slack** to version **0.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slackalaka) to find the latest changes.

## Action Summary

The GitHub Action `Tag n' Slack` creates a new release tag with a changelog and notifies Slack about the release. It automates the process of extracting version information from either `package.json` or commit hash/message, updating the changelog, creating a release tag, and sending a notification to a specified Slack channel with details about the release.

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
