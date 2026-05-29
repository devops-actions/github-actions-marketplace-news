---
title: Setup vp
date: 2026-05-29 22:46:17 +00:00
tags:
  - voidzero-dev
  - GitHub Actions
draft: false
repo: https://github.com/voidzero-dev/setup-vp
marketplace: https://github.com/marketplace/actions/setup-vp
version: v1.11.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/voidzero-dev/setup-vp** to version **v1.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-vp) to find the latest changes.

## Action Summary

The `setup-vp` GitHub Action simplifies the setup of [Vite+](https://viteplus.dev) (`vp`) by automating its installation, managing Node.js versions, and caching project dependencies with lock file detection. It streamlines workflows by optionally running dependency installations, integrating security tools like Socket Firewall, and supporting all major package managers. This action reduces manual setup and enhances efficiency in CI/CD pipelines for projects using Vite+.

## What's Changed

## What's Changed
* chore: bump pnpm to 11.1.2 by @Boshen in https://github.com/voidzero-dev/setup-vp/pull/68
* chore(deps): update dependency yaml to v2.9.0 by @renovate[bot] in https://github.com/voidzero-dev/setup-vp/pull/69
* chore(deps): update dependency @actions/cache to v6.0.1 by @renovate[bot] in https://github.com/voidzero-dev/setup-vp/pull/71
* feat: add sfw input to wrap vp install with Socket Firewall Free by @fengmk2 in https://github.com/voidzero-dev/setup-vp/pull/72
* ci: default tests to latest, add pkg.pr.new dispatch input by @fengmk2 in https://github.com/voidzero-dev/setup-vp/pull/74
* fix: demote benign cache reserve-race to info instead of warning by @fengmk2 in https://github.com/voidzero-dev/setup-vp/pull/75


**Full Changelog**: https://github.com/voidzero-dev/setup-vp/compare/v1.10.0...v1.11.0
