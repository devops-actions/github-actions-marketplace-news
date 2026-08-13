---
title: Configure Node.js
date: 2026-08-13 05:57:18 +00:00
tags:
  - pwrdrvr
  - GitHub Actions
draft: false
repo: https://github.com/pwrdrvr/configure-nodejs
marketplace: https://github.com/marketplace/actions/configure-node-js
version: v1.4.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates setting up Node.js environments in CI workflows by detecting the package manager, enabling Corepack when necessary, restoring the correct cache, and installing only when required. It solves problems related to cold cache misses, trade-offs between installation time and cache usage, and the retry trap caused by post-step cache saves. The action is designed to improve build efficiency and reduce costs by caching builds that are not affected by changes in dependencies or lockfiles.
---


Version updated for **https://github.com/pwrdrvr/configure-nodejs** to version **v1.4.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/configure-node-js) to find the latest changes.

## Action Summary

This GitHub Action automates setting up Node.js environments in CI workflows by detecting the package manager, enabling Corepack when necessary, restoring the correct cache, and installing only when required. It solves problems related to cold cache misses, trade-offs between installation time and cache usage, and the retry trap caused by post-step cache saves. The action is designed to improve build efficiency and reduce costs by caching builds that are not affected by changes in dependencies or lockfiles.

## What's Changed

## Highlights

- Add opt-in `cache-electron: "true"` support that stores Electron runtime artifacts and native-addon prebuild downloads in workspace-scoped dependency caches.
- Give enabled Electron caches a versioned key segment so existing immutable dependency caches cannot masquerade as containing lifecycle artifacts. Disabled/default behavior keeps the existing cache paths and key.

## Fixes

- Ensure a pnpm lookup-only primer miss installs into and saves the workspace-local pnpm store.

No migration is required. Electron caching remains disabled by default and can be enabled consistently on cache primer and consumer jobs.

**Full changelog:** https://github.com/pwrdrvr/configure-nodejs/compare/v1.3.0...v1.4.0
