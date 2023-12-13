---
title: Unity - Test runner
date: 2023-12-13 11:13:43 +00:00
tags:
  - game-ci
  - GitHub Actions
draft: false
repo: game-ci/unity-test-runner
marketplace: https://github.com/marketplace/actions/unity-test-runner
version: v4.1.0
dependentsNumber: "1,965"
---


Version updated for **game-ci/unity-test-runner** to version **v4.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,965** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unity-test-runner) to find the latest changes.

## Release notes

## What's Changed
- Updated activation strategy to align with builder strategy for more stable activation with retry logic
- Added `containerRegistryImageVersion` and `containerRegistryRepository` for improved custom image support
- Added `runAsHostUser` to fix self-hosted runner issues
- Added error/warning annotations for activation issues
- Improved serial masking
- Fix workspace path for Windows runners (Credit @asyasmi)
- Update to node20

**Full Changelog**: https://github.com/game-ci/unity-test-runner/compare/v4...v4.1.0
