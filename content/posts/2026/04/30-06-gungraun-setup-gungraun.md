---
title: setup-gungraun
date: 2026-04-30 06:02:39 +00:00
tags:
  - gungraun
  - GitHub Actions
draft: false
repo: https://github.com/gungraun/setup-gungraun
marketplace: https://github.com/marketplace/actions/setup-gungraun
version: v1.0.2
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/gungraun/setup-gungraun** to version **v1.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-gungraun) to find the latest changes.

## Action Summary

The `gungraun/setup-gungraun` GitHub Action automates the setup of the `gungraun-runner` tool and the installation of Valgrind, ensuring compatibility with the specified version of the `gungraun` library. It simplifies the process of managing dependencies and tools by providing flexible strategies for installation and version management, reducing manual overhead when working with Linux-based CI/CD pipelines. Key features include automatic version detection, multi-strategy installation methods, and support for various Linux distributions.

## What's Changed

## [1.0.2] - 2025-04-29

### Added

- Retry logic for Octokit requests with configurable retry count for higher resilience against spurious network errors.

### Changed

- Package installations no longer run silently
- Improved debugging output: `isDebug()` now also checks `ACTIONS_STEP_DEBUG` and `RUNNER_DEBUG` environment variables (not just `GUNGRAUN_ACTION_DEBUG`)
- `DEBUGINFOD_URLS` is now read from `/etc/debuginfod/*.urls` files instead of being hardcoded to archlinux's URL
- Updated dependency `typescript-eslint` to v8.59.1

### Fixed

- Addressed security warnings from repo code scanning

**Full Changelog**: https://github.com/gungraun/setup-gungraun/compare/v1.0.1...v1.0.2
