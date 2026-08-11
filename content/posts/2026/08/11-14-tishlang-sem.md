---
title: tishlang-sem
date: 2026-08-11 14:23:23 +00:00
tags:
  - tishlang
  - GitHub Actions
draft: false
repo: https://github.com/tishlang/sem
marketplace: https://github.com/marketplace/actions/tishlang-sem
version: v1.3.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the semantic versioning and release pipeline using Tish, a modern JavaScript runtime. It supports both Node.js and Tish-native environments and provides dual runtimes. The action is configured via file, `package.json`, environment variables, or JSON/YAML configuration options. It handles conventional Commits and semver for bumping versions, with soft-skipping on non-release branches. It also supports recoveries with the `--force`/`SEM_FORCE` flag and auto-republishs when a git tag exists but the version is missing from npm. The action promotes GitHub releases through the promote-style pattern, including prerelease assets and unchecking pre-release status for publishing workflows.
---


Version updated for **https://github.com/tishlang/sem** to version **v1.3.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tishlang-sem) to find the latest changes.

## Action Summary

This GitHub Action automates the semantic versioning and release pipeline using Tish, a modern JavaScript runtime. It supports both Node.js and Tish-native environments and provides dual runtimes. The action is configured via file, `package.json`, environment variables, or JSON/YAML configuration options. It handles conventional Commits and semver for bumping versions, with soft-skipping on non-release branches. It also supports recoveries with the `--force`/`SEM_FORCE` flag and auto-republishs when a git tag exists but the version is missing from npm. The action promotes GitHub releases through the promote-style pattern, including prerelease assets and unchecking pre-release status for publishing workflows.

## What's Changed

## [1.3.3](https://github.com/tishlang/sem/compare/v1.3.2...v1.3.3) (2026-08-10)

### Bug Fixes

* skip npm publish when the GitHub release is still a draft ([023520d](https://github.com/tishlang/sem/commit/023520d49360d2db15dc33adad44cb80750b9445))

---
Published to npm: https://www.npmjs.com/package/@tishlang/sem/v/1.3.3
GitHub Packages: https://github.com/tishlang/sem/pkgs/npm/sem
GitHub Action: uses: tishlang/sem@v1.3.3
