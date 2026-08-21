---
title: ESLint Config Check
date: 2026-08-21 14:04:21 +00:00
tags:
  - santi020k
  - GitHub Actions
draft: false
repo: https://github.com/santi020k/eslint-config-basic
marketplace: https://github.com/marketplace/actions/eslint-config-check
version: santi020k/eslint-config-full3.2.0
dependentsNumber: "4"
actionType: Composite
actionSummary: |
  This GitHub Action automates the setup of a DX-first ESLint configuration that detects and automatically configures JavaScript, TypeScript, and optional framework features based on the project's dependencies. The action allows users to manage their linting configuration efficiently, including installing only the necessary packages and features tailored to their project needs.
---


Version updated for **https://github.com/santi020k/eslint-config-basic** to version **@santi020k/eslint-config-full@3.2.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eslint-config-check) to find the latest changes.

## Action Summary

This GitHub Action automates the setup of a DX-first ESLint configuration that detects and automatically configures JavaScript, TypeScript, and optional framework features based on the project's dependencies. The action allows users to manage their linting configuration efficiently, including installing only the necessary packages and features tailored to their project needs.

## What's Changed

### Minor Changes

- Keep TypeScript 6 declaration inference for JavaScript ESLint configs portable
  under pnpm by returning a package-owned public config-array type. Annotate the
  recommended entry point and verify packed consumers do not expose internal
  `typescript-eslint` dependency paths or report TS2883.

### Patch Changes

- Updated dependencies []:
  - @santi020k/eslint-config-basic@3.4.0
