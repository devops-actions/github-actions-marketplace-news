---
title: vjancik/buildkit-cache-dance - Inject/Extract Cache
date: 2026-04-08 22:07:35 +00:00
tags:
  - vjancik
  - GitHub Actions
draft: false
repo: https://github.com/vjancik/buildkit-cache-dance
marketplace: https://github.com/marketplace/actions/vjancik-buildkit-cache-dance-inject-extract-cache
version: v1.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/vjancik/buildkit-cache-dance** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vjancik-buildkit-cache-dance-inject-extract-cache) to find the latest changes.

## Action Summary

The **BuildKit Cache Dance** GitHub Action automates the process of saving and restoring `RUN --mount=type=cache` caches during Docker builds on GitHub Actions or other CI platforms. It simplifies cache management by extracting caches from previous builds and injecting them into current builds, improving build performance and reducing redundant operations. This action is particularly useful for caching dependencies and build artifacts (e.g., package manager or language-specific caches) to optimize CI workflows.

## What's Changed

Update `parcel` version to latest, node target engine to `v24`. 
For use in my own workflow, may be removed later on when upstream changes get merged.
