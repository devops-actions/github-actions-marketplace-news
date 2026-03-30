---
title: Run Fourmolu
date: 2026-03-30 22:19:56 +00:00
tags:
  - haskell-actions
  - GitHub Actions
draft: false
repo: https://github.com/haskell-actions/run-fourmolu
marketplace: https://github.com/marketplace/actions/run-fourmolu
version: v12
dependentsNumber: "53"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/haskell-actions/run-fourmolu** to version **v12**.

- This action is used across all versions by **53** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-fourmolu) to find the latest changes.

## Action Summary

The `run-fourmolu` GitHub Action ensures consistent code formatting for Haskell projects by automatically checking if Haskell source files adhere to the formatting standards defined by [Fourmolu](https://github.com/fourmolu/fourmolu). It identifies unformatted files, provides a diff highlighting discrepancies, and can be configured to target specific files or directories. This action streamlines the code formatting process in CI workflows, helping teams maintain clean and consistent codebases.

## What's Changed

Upgrade from Node.js 20 to Node.js 24.  This is a required upgrade since GitHub Actions is [deprecating Node.js 20](https://github.blog/changelog/2025-09-19-deprecation-of-node-20-on-github-actions-runners/).  Runners will default to Node.js 24 starting June 2, 2026, and Node.js 20 will be fully removed in fall 2026.  Older versions of `run-fourmolu` (v11 and below) will stop working after this date.

Implemented in [#32](https://github.com/haskell-actions/run-fourmolu/pull/32).
