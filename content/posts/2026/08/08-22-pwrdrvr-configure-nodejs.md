---
title: Configure Node.js
date: 2026-08-08 22:08:46 +00:00
tags:
  - pwrdrvr
  - GitHub Actions
draft: false
repo: https://github.com/pwrdrvr/configure-nodejs
marketplace: https://github.com/marketplace/actions/configure-node-js
version: v1.2.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  The GitHub Action `pwrdrvr/configure-nodejs` automates the process of installing Node.js, detecting and enabling the appropriate package manager (npm, pnpm, or Yarn), restoring caches for different package managers, and installing dependencies only when necessary. It solves the problem of cold cache misses by using Corepack to handle pinned versions and ensures that all jobs in a workflow can benefit from shared cache states. The action supports native execution on Linux, macOS, and Windows platforms.
---


Version updated for **https://github.com/pwrdrvr/configure-nodejs** to version **v1.2.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/configure-node-js) to find the latest changes.

## Action Summary

The GitHub Action `pwrdrvr/configure-nodejs` automates the process of installing Node.js, detecting and enabling the appropriate package manager (npm, pnpm, or Yarn), restoring caches for different package managers, and installing dependencies only when necessary. It solves the problem of cold cache misses by using Corepack to handle pinned versions and ensures that all jobs in a workflow can benefit from shared cache states. The action supports native execution on Linux, macOS, and Windows platforms.

## What's Changed

## Highlights

- Added first-class Windows support while preserving the existing Linux and macOS action contract.
- Added native execution for pinned Corepack package-manager activation, pnpm store discovery, cache restore/save, and frozen dependency installation.
- Added phase timing outputs for cache, Node setup, package-manager activation, store discovery, installation, and total action duration.

## Validation

- Added unit coverage on Linux, macOS, and Windows.
- Added npm, pnpm, and Yarn cache-prime/restore fixtures across all three operating systems.

Existing inputs, outputs, lookup-only behavior, cache identity, and frozen/immutable install semantics remain compatible with `v1` consumers.

Thanks to @huntharo for the contribution.

