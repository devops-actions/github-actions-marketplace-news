---
title: Monotrack CLI
date: 2025-12-31 05:33:05 +00:00
tags:
  - ArnoldVanN
  - GitHub Actions
draft: false
repo: https://github.com/ArnoldVanN/monotrack
marketplace: https://github.com/marketplace/actions/monotrack-cli
version: v0.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ArnoldVanN/monotrack** to version **v0.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/monotrack-cli) to find the latest changes.

## Action Summary

Monotrack is a GitHub Action and CLI tool designed to simplify versioning and change tracking in monorepos, addressing challenges like managing dependencies across projects and identifying modified packages. It automates tasks such as generating pre-release tags, detecting changed projects, and running actions only for impacted components, without relying on heavier tools. The tool enables efficient workflows for monorepo development by providing lightweight dependency tracking and version bumping capabilities.

## Release notes

## [0.3.0](https://github.com/ArnoldVanN/monotrack/compare/v0.2.1...v0.3.0) (2025-12-30)


### ⚠ BREAKING CHANGES

* change default Action command input to `tag bump`
* output default tag for a project if none exist instead of warning
* return projects paths from compare instead of names

### Features

* change default Action command input to `tag bump` ([6f1eea9](https://github.com/ArnoldVanN/monotrack/commit/6f1eea9ca6710f948f89182ea8517a43da7721f3))


### Bug Fixes

* output default tag for a project if none exist instead of warning ([10792a2](https://github.com/ArnoldVanN/monotrack/commit/10792a2edbec7c38615cc9fab2215cfa1009c359))
* return projects paths from compare instead of names ([0866177](https://github.com/ArnoldVanN/monotrack/commit/08661773c90762aaa2bb6756b8d703453e056a7a))
