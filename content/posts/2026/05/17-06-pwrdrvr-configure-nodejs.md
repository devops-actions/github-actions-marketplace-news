---
title: Configure Node.js
date: 2026-05-17 06:27:01 +00:00
tags:
  - pwrdrvr
  - GitHub Actions
draft: false
repo: https://github.com/pwrdrvr/configure-nodejs
marketplace: https://github.com/marketplace/actions/configure-node-js
version: v1.1.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/pwrdrvr/configure-nodejs** to version **v1.1.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/configure-node-js) to find the latest changes.

## Action Summary

The `configure-nodejs` GitHub Action simplifies Node.js project setup by automating the installation of Node.js, detecting the appropriate package manager (npm, pnpm, or Yarn) based on project files, enabling Corepack when required, handling dependency caching, and managing dependency installation. It supports both monorepos and single-project repositories, optimizing workflows by reducing setup time and ensuring consistent environments. Key capabilities include automatic package manager resolution, lockfile detection, caching for faster builds, and flexible configuration for different project structures.

## What's Changed

## Fixes

- Persist `npm_config_store_dir` for pnpm workflows so follow-up `pnpm` commands use the same workspace-local `.pnpm-store` restored by `configure-nodejs`.
- This keeps commands such as `pnpm licenses:check` working after the action installs with `pnpm install --frozen-lockfile --store-dir .pnpm-store`, without requiring consumers to force a relink.

## Docs

- Add an in-repo release skill documenting version selection, release notes, and release workflow checks for this repository.

## Validation

- Validated in PwrAgent PR #443 with the forced pnpm relink fallback removed: https://github.com/pwrdrvr/PwrAgent/actions/runs/25971138353
- Release workflow completed successfully and moved the floating `v1` tag to this release.

