---
title: Build and push Docker images with WarpBuild
date: 2026-08-09 21:46:18 +00:00
tags:
  - WarpBuilds
  - GitHub Actions
draft: false
repo: https://github.com/WarpBuilds/build-push-action
marketplace: https://github.com/marketplace/actions/build-and-push-docker-images-with-warpbuild
version: v7.0.0
dependentsNumber: "40"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action builds and pushes Docker images using WarpBuild's remote builders with support for multi-platform build, secrets, remote cache, and different builder deployment/namespacing options. It allows users to use powerful features of BuildKit by leveraging the additional `profile-name` input required to specify the WarpBuild profile to use.
---


Version updated for **https://github.com/WarpBuilds/build-push-action** to version **v7.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **40** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-and-push-docker-images-with-warpbuild) to find the latest changes.

## Action Summary

This GitHub Action builds and pushes Docker images using WarpBuild's remote builders with support for multi-platform build, secrets, remote cache, and different builder deployment/namespacing options. It allows users to use powerful features of BuildKit by leveraging the additional `profile-name` input required to specify the WarpBuild profile to use.

## What's Changed

Synced with upstream v7.

- ESM sources bundled with esbuild to `dist/index.cjs`
- `@docker/actions-toolkit` 0.68 → 0.92, `@actions/core` 1.x → 3.x
- tests migrated to vitest, package manager to yarn 4

WarpBuild remote builder behaviour is unchanged. `v6` is unaffected and remains available.
