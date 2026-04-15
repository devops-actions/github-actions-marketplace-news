---
title: Kubectl tool installer
date: 2026-04-15 14:24:22 +00:00
tags:
  - Azure
  - GitHub Actions
draft: false
repo: https://github.com/Azure/setup-kubectl
marketplace: https://github.com/marketplace/actions/kubectl-tool-installer
version: v5.1.0
dependentsNumber: "15,757"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Azure/setup-kubectl** to version **v5.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **15,757** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kubectl-tool-installer) to find the latest changes.

## Action Summary

The **Setup Kubectl** GitHub Action automates the installation of a specific version of the `kubectl` command-line tool on a workflow runner. It allows users to define and control the `kubectl` version used in their CI/CD workflows, solving the problem of ensuring compatibility with specific Kubernetes cluster versions. This action streamlines Kubernetes management tasks by providing flexibility and consistency in `kubectl` versioning.

## What's Changed

### Changed

- #243 [Migrate to ESM with esbuild and vitest](https://github.com/Azure/setup-kubectl/pull/243)
   - Replaced `@vercel/ncc` with `esbuild` for ESM bundling
   - Replaced `jest`/`ts-jest` with `vitest` for testing
   - Upgraded `@actions/core` to `^3.0.0`, `@actions/exec` to `^3.0.0`, `@actions/tool-cache` to `^4.0.0`
   - Updated `tsconfig.json` to `NodeNext` module resolution
- Add `npm run build` step to CI unit-tests workflow

### Security

- #242 [Bump picomatch](https://github.com/Azure/setup-kubectl/pull/242)
- #244 [Bump handlebars from 4.7.8 to 4.7.9](https://github.com/Azure/setup-kubectl/pull/244)
- #247 [Bump vite from 8.0.3 to 8.0.5](https://github.com/Azure/setup-kubectl/pull/247)
- #245 [Bump github/codeql-action in CI workflows](https://github.com/Azure/setup-kubectl/pull/245)
