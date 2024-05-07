---
title: Golangci-lint
date: 2024-05-07 03:32:10 +00:00
tags:
  - golangci
  - GitHub Actions
draft: false
repo: golangci/golangci-lint-action
marketplace: https://github.com/marketplace/actions/golangci-lint
version: v6.0.0
dependentsNumber: "4"
---


Version updated for **golangci/golangci-lint-action** to version **v6.0.0**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/golangci-lint) to find the latest changes.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at v6.0.0 -->

## What's Changed

This version removes `annotations` option (because it was useless), and removes the default output format (`github-actions`).
The annotations are still produced but with another approach.

### Changes
* feat: rewrite format handling by @ldez in https://github.com/golangci/golangci-lint-action/pull/1038
### Dependencies
* build(deps-dev): bump @typescript-eslint/eslint-plugin from 7.7.1 to 7.8.0 by @dependabot in https://github.com/golangci/golangci-lint-action/pull/1034
* build(deps): bump @types/node from 20.12.7 to 20.12.8 by @dependabot in https://github.com/golangci/golangci-lint-action/pull/1036
* build(deps-dev): bump @typescript-eslint/parser from 7.7.1 to 7.8.0 by @dependabot in https://github.com/golangci/golangci-lint-action/pull/1035


**Full Changelog**: https://github.com/golangci/golangci-lint-action/compare/v5.3.0...v6.0.0
