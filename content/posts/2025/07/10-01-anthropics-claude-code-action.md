---
title: Claude Code Action Official
date: 2025-07-10 01:13:19 +00:00
tags:
  - anthropics
  - GitHub Actions
draft: false
repo: https://github.com/anthropics/claude-code-action
marketplace: https://github.com/marketplace/actions/claude-code-action-official
version: v0.0.31
dependentsNumber: "?"
---


Version updated for **https://github.com/anthropics/claude-code-action** to version **v0.0.31**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/claude-code-action-official) to find the latest changes.

## Release notes

**Commit signing is no longer enabled by default.** Instead, you must opt in to commit signing by specifying `use_commit_signing: true` in your action inputs.

This means Claude will now create commits with normal git commands instead of using tools that go through the API, which should make it easier to integrate its behavior with pre-commit hooks and the like.

## What's Changed
* feat: add use_commit_signing input with default false by @ashwin-ant in https://github.com/anthropics/claude-code-action/pull/238


**Full Changelog**: https://github.com/anthropics/claude-code-action/compare/v0.0.30...v0.0.31
