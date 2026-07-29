---
title: ESLint Config Check
date: 2026-07-29 15:01:01 +00:00
tags:
  - santi020k
  - GitHub Actions
draft: false
repo: https://github.com/santi020k/eslint-config-basic
marketplace: https://github.com/marketplace/actions/eslint-config-check
version: v3.1.0
dependentsNumber: "3"
actionType: Composite
actionSummary: |
  This GitHub Action provides a lean, zero-config ESLint configuration that automatically detects JavaScript, TypeScript, runtime features, and optional frameworks. It solves the problem of managing complex linting configurations by detecting dependencies at runtime and providing granular control over feature inclusion. The action simplifies setup for both applications and libraries while keeping dependency sizes manageable and audit paths minimal.
---


Version updated for **https://github.com/santi020k/eslint-config-basic** to version **v3.1.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eslint-config-check) to find the latest changes.

## Action Summary

This GitHub Action provides a lean, zero-config ESLint configuration that automatically detects JavaScript, TypeScript, runtime features, and optional frameworks. It solves the problem of managing complex linting configurations by detecting dependencies at runtime and providing granular control over feature inclusion. The action simplifies setup for both applications and libraries while keeping dependency sizes manageable and audit paths minimal.

## What's Changed

## ESLint Config Check v3.1.0

Initial GitHub Marketplace release of the reusable ESLint Config Check action.

### Features

- Installs the consumer project's dependencies
- Validates eslint-config-basic compatibility
- Checks committed effective-config snapshots
- Runs the project's normal lint command
- Optionally profiles ESLint and enforces:
  - Maximum lint duration
  - Maximum per-rule execution time
  - Maximum warning count

### Usage

```yaml
- uses: santi020k/eslint-config-basic@v3.1.0
  with:
    install-command: pnpm install --frozen-lockfile
    lint-command: pnpm lint
    profile: "true"
    max-warnings: "0"
    max-duration: "15000"
    max-rule-time: "2000"
