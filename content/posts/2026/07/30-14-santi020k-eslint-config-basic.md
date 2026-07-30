---
title: ESLint Config Check
date: 2026-07-30 14:44:18 +00:00
tags:
  - santi020k
  - GitHub Actions
draft: false
repo: https://github.com/santi020k/eslint-config-basic
marketplace: https://github.com/marketplace/actions/eslint-config-check
version: santi020k/eslint-config-basic3.2.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action is an ESLint configuration package that provides a basic, lean setup for JavaScript and TypeScript projects. It automatically detects the project's runtime environment and optional features like React, testing frameworks, libraries, and tools, providing a zero-config experience. The package offers customizable configurations via named factories, allowing developers to override auto-detection or add specific features. It also supports type-aware linting and can handle TypeScript config files efficiently without importing unnecessary dependencies.
---


Version updated for **https://github.com/santi020k/eslint-config-basic** to version **@santi020k/eslint-config-basic@3.2.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eslint-config-check) to find the latest changes.

## Action Summary

This GitHub Action is an ESLint configuration package that provides a basic, lean setup for JavaScript and TypeScript projects. It automatically detects the project's runtime environment and optional features like React, testing frameworks, libraries, and tools, providing a zero-config experience. The package offers customizable configurations via named factories, allowing developers to override auto-detection or add specific features. It also supports type-aware linting and can handle TypeScript config files efficiently without importing unnecessary dependencies.

## What's Changed

### Minor Changes

- [#104](https://github.com/santi020k/eslint-config-basic/pull/104) [`522aed9`](https://github.com/santi020k/eslint-config-basic/commit/522aed93495faebff095f6e48dc731b7730e8f7a) Thanks [@santi020k](https://github.com/santi020k)! - Add `explain-preset` adoption reports and optional temporary compatibility
  overrides grouped by formatting, correctness, security, framework, and domain
  rules.

  Make generated configs safer for real ESLint 10 monorepos by attaching referenced plugins locally, inheriting shared project detection and Tailwind options, composing untyped TypeScript overrides after framework parsers, and making doctor/install planning aware of workspace projects and modern feature selections.

  Improve the CLI for pnpm workspaces by detecting the workspace root from nested
  projects, preserving default and named catalogs during installation, and
  requesting companion config packages with a version range compatible with the
  installed Basic release. Command parsing is now strict, subcommand help is
  side-effect free, minimum-release-age blocks are diagnosed, and safe v3 config
  syntax is modernized during migration. Optional framework and feature-pack load
  errors distinguish missing packages from evaluation failures while retaining the
  original cause. Packed modular monorepo and peer-health release checks now verify
  doctor, ESLint, TypeScript, frozen pnpm installs, and owned exceptions against
  published-package boundaries.

### Patch Changes

- Updated dependencies [[`a93a940`](https://github.com/santi020k/eslint-config-basic/commit/a93a9406d4e69d53f0e177c65b9aceeeec6ae1ba)]:
  - @santi020k/eslint-config-typescript@3.1.1
