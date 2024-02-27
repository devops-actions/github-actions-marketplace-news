---
title: Delete old packages
date: 2024-02-27 03:30:02 +00:00
tags:
  - SmartsquareGmbH
  - GitHub Actions
draft: false
repo: SmartsquareGmbH/delete-old-packages
marketplace: https://github.com/marketplace/actions/delete-old-packages
version: v0.8.0
dependentsNumber: "?"
---


Version updated for **SmartsquareGmbH/delete-old-packages** to version **v0.8.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delete-old-packages) to find the latest changes.

## Release notes

## What's Changed
- The 20 package limit has been removed.
- Rate limit handling is now enabled by default.
- Whole packages are deleted if the last version is deleted. Previously the action failed for such cases.
- Improvements for error handling. The messages should be better and the action should not print unrelated data.
- Various internal refactoring and dependency updates (including update to Node.js 20).

Big thanks to @tisoft for implementing some of these changes!
