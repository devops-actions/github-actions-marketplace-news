---
title: Slackalaka
date: 2026-07-30 23:55:16 +00:00
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
  This GitHub Action automates the creation of tags and sends notifications to Slack with relevant information about releases. It supports both the use of a changelog file or the commit hash and message when determining release details, and provides an option to remove images and user attachments from the notification. The action uses secrets for authentication and configuration settings, making it easy to integrate into GitHub workflows for automated release notifications.
---


Version updated for **https://github.com/mallowigi/tag-n-slack** to version **0.2.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slackalaka) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of tags and sends notifications to Slack with relevant information about releases. It supports both the use of a changelog file or the commit hash and message when determining release details, and provides an option to remove images and user attachments from the notification. The action uses secrets for authentication and configuration settings, making it easy to integrate into GitHub workflows for automated release notifications.

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
