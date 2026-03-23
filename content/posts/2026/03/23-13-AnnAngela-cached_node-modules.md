---
title: Cached node_modules
date: 2026-03-23 13:40:15 +00:00
tags:
  - AnnAngela
  - GitHub Actions
draft: false
repo: https://github.com/AnnAngela/cached_node-modules
marketplace: https://github.com/marketplace/actions/cached-node_modules
version: v5.0.0
dependentsNumber: "16"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/AnnAngela/cached_node-modules** to version **v5.0.0**.
- This action is used across all versions by **16** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cached-node_modules) to find the latest changes.

## Action Summary

The `AnnAngela/cached_node-modules` GitHub Action provides a caching mechanism for `node_modules` to significantly reduce dependency installation time during CI/CD workflows, particularly on slower runners like GitHub-hosted Windows runners. By leveraging customizable cache keys and automated cache management, it ensures efficient dependency restoration and minimizes redundant installations, improving build times and consistency. It also supports features like retrying failed dependency installations and cleaning up broken caches to maintain workflow reliability.

## Release notes

## What's Changed

### BREAKING CHANGES

This action now requires `actions: write` permission for the following reasons, quoted from readme:

> When this action creates a new cache entry and the workflow later fails, the action will attempt to delete that cache in its `post` step to avoid keeping a broken cache for subsequent runs.
>> ***Note: Deleting caches via the GitHub Actions API requires a token with `actions: write` permission. If your workflow does not grant this (for example, on pull requests from forks where `${{ secrets.GITHUB_TOKEN }}` is more restricted), the post step will log a warning and the cache may not be deleted.***

* Delete newly created cache in post step when the workflow fails by @Copilot in https://github.com/AnnAngela/cached_node-modules/pull/192

## New Contributors
* @Copilot made their first contribution in https://github.com/AnnAngela/cached_node-modules/pull/192

**Full Changelog**: https://github.com/AnnAngela/cached_node-modules/compare/v4.0.0...v5.0.0
