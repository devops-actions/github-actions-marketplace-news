---
title: Setup Nu
date: 2023-09-11 11:00:52 +00:00
tags:
  - hustcer
  - GitHub Actions
draft: false
repo: hustcer/setup-nu
marketplace: https://github.com/marketplace/actions/setup-nu
version: v3.5
dependentsNumber: 43
---


Version updated for **hustcer/setup-nu** to version **v3.5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **43** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-nu) to find the latest changes.

## Release notes

## [3.5] - 2023-09-11

### Features

- Add module test workflow
- Add Nu module usage example
- Use `config reset --without-backup` to Reset Nushell config to default

### Miscellaneous Tasks

- Use `lefthook` instead of `lint-stage` and `husky` for code formatting and linting
- Fix build workflow
- Add new workflow to test latest main
- Update `pnpm` version for build workflow
- Upgrade `node.js` to  v20
- Add more nu versions to modules test
- Update module test workflow and README
- Add `just outdated` task to check outdated node modules

### Deps

- Upgrade `rome`, `typescript-eslint/eslint-plugin` and `typescript-eslint/parser`
- Upgrade `globby`, `eslint`, `semver`, and `lefthook`
- Upgrade `eslint`, `lefthook` and `typescript`
- Upgrade `eslint` and `@vercel/ncc`
- Upgrade `actions/checkout` to v4
