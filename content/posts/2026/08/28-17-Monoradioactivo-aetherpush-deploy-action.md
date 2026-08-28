---
title: Aether Deploy
date: 2026-08-28 17:58:01 +00:00
tags:
  - Monoradioactivo
  - GitHub Actions
draft: false
repo: https://github.com/Monoradioactivo/aetherpush-deploy-action
marketplace: https://github.com/marketplace/actions/aether-deploy
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of releasing React Native over-the-air updates using Aether. It simplifies the deployment workflow by wrapping the `@aetherpush/cli` commands and exposing the necessary package metadata as outputs. The action supports various inputs such as API key, app name, release command, and platform, allowing for customization based on specific needs.
---


Version updated for **https://github.com/Monoradioactivo/aetherpush-deploy-action** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aether-deploy) to find the latest changes.

## Action Summary

This GitHub Action automates the process of releasing React Native over-the-air updates using Aether. It simplifies the deployment workflow by wrapping the `@aetherpush/cli` commands and exposing the necessary package metadata as outputs. The action supports various inputs such as API key, app name, release command, and platform, allowing for customization based on specific needs.

## What's Changed

## [0.4.0](https://github.com/Monoradioactivo/aetherpush-deploy-action/compare/v0.3.3...v0.4.0) (2026-08-28)


### ⚠ BREAKING CHANGES

* the blob-url and manifest-blob-url outputs are removed, and there is no replacement output. The presigned URL is deliberately no longer published. Workflows that referenced either output need updating.

### Features

* stop publishing signed bundle URLs as step outputs ([#27](https://github.com/Monoradioactivo/aetherpush-deploy-action/issues/27)) ([7ca1e8e](https://github.com/Monoradioactivo/aetherpush-deploy-action/commit/7ca1e8e49cc24776ade21a8de2b59e34115385b9))
