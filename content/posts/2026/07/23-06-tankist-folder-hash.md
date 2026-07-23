---
title: Folder Hash v2
date: 2026-07-23 06:22:51 +00:00
tags:
  - tankist
  - GitHub Actions
draft: false
repo: https://github.com/tankist/folder-hash
marketplace: https://github.com/marketplace/actions/folder-hash-v2
version: v4.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action calculates the hash of specified folders and outputs the result, which can be used to generate cache keys or as a checksum for folder content. It supports caching multiple folders and uses glob patterns for file selection.
---


Version updated for **https://github.com/tankist/folder-hash** to version **v4.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/folder-hash-v2) to find the latest changes.

## Action Summary

This GitHub Action calculates the hash of specified folders and outputs the result, which can be used to generate cache keys or as a checksum for folder content. It supports caching multiple folders and uses glob patterns for file selection.

## What's Changed

## Breaking changes

- Folder hash values have changed. Regenerate any cache keys that depend on this action after upgrading.

## Changed

- Upgraded the action and CI runtime to Node 24.
- Migrated source and tests to ES modules and Node’s native test runner.
- Replaced deprecated hashing and bundling dependencies.
- Refreshed the bundled action output and documentation.

**Full Changelog**: https://github.com/tankist/folder-hash/commits/v4.0.0
