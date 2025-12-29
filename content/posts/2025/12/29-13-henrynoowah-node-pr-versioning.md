---
title: Node PR Versioning
date: 2025-12-29 13:12:44 +00:00
tags:
  - henrynoowah
  - GitHub Actions
draft: false
repo: https://github.com/henrynoowah/node-pr-versioning
marketplace: https://github.com/marketplace/actions/node-pr-versioning
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/henrynoowah/node-pr-versioning** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/node-pr-versioning) to find the latest changes.

## Action Summary

This GitHub Action, **Node PR Versioning**, automates the versioning process for repositories by updating the `package.json` file based on labels applied to pull requests. It determines whether to increment the version as major, minor, or patch, commits the changes, and optionally creates tags for the new version. This action streamlines version management, reducing manual effort and ensuring consistency in versioning during development workflows.

## Release notes


- The fix is to use pullRequest.head.sha (the commit hash) instead of pullRequest.head.ref (the branch name). The SHA is a permanent reference that won't disappear when the branch is deleted.

**Full Changelog**: https://github.com/henrynoowah/node-pr-versioning/compare/v1.0.0...v1.0.1
