---
title: Restore Outdated PR Comments
date: 2026-03-12 21:38:57 +00:00
tags:
  - sk2andy
  - GitHub Actions
draft: false
repo: https://github.com/sk2andy/restore-outdated-pr-comments-action
marketplace: https://github.com/marketplace/actions/restore-outdated-pr-comments
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sk2andy/restore-outdated-pr-comments-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/restore-outdated-pr-comments) to find the latest changes.

## Action Summary

The **Restore Outdated PR Comments Action** automates the recreation of outdated pull request review threads in GitHub, preserving their original structure, author details, and context. It addresses the challenge of maintaining the visibility and continuity of review comments when changes to the code mark them as outdated. The action scans for outdated threads after each PR update, re-anchors them to the current diff, and ensures the original discussion context is retained while removing outdated threads only after successful restoration.

## Release notes

Initial public release of Restore Outdated PR Comments Action.

Highlights:
- Restores outdated pull request review threads on the current diff
- Preserves replies as replies
- Shows the original author above restored comments
- Adds a link to the original comment and optional original diff context on the restored root comment
