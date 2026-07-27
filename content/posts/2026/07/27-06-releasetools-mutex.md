---
title: Advisory lock service for CI/CD pipelines
date: 2026-07-27 06:47:56 +00:00
tags:
  - releasetools
  - GitHub Actions
draft: false
repo: https://github.com/releasetools/mutex
marketplace: https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines
version: v1.1.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  The mutex GitHub Action provides a service for managing mutual exclusion in CI/CD pipelines using PostgreSQL as the backend. It allows jobs to acquire and release locks, preventing race conditions by ensuring only one job can access shared resources concurrently. The action supports pull request integration, Slack notifications, and easy disabling via labels or environment variables.
---


Version updated for **https://github.com/releasetools/mutex** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines) to find the latest changes.

## Action Summary

The mutex GitHub Action provides a service for managing mutual exclusion in CI/CD pipelines using PostgreSQL as the backend. It allows jobs to acquire and release locks, preventing race conditions by ensuring only one job can access shared resources concurrently. The action supports pull request integration, Slack notifications, and easy disabling via labels or environment variables.

## What's Changed

## Summary

- An advisory lock service for CI/CD pipelines, implemented as a GitHub Action.
- It prevents race conditions by ensuring mutual exclusion - only one job can access a shared resource concurrently.

## What's changed since v1.0.1

- **Migrated to ESM** (#42), bumping `@actions/github` to v9.
- Dependency majors: `@actions/core` v3, `@slack/web-api` v8, `typescript` v6, `jest` v30.
- `fix(tsconfig)`: set explicit types so ts-jest finds jest globals (#41).
- Tooling: adopted the shared [MihaiBojin/renovate](https://github.com/MihaiBojin/renovate) presets (#59), dropped the unused `@babel/preset-typescript` (#60), and refreshed the lockfile (#47) — resolving the open `undici` and `js-yaml` advisories.

## Compatibility

`action.yaml` is unchanged from `v1.0.1` — same inputs, same outputs, still
`using: "node24"`. This is a drop-in update for anyone on
`releasetools/mutex@v1`, which now points here.

## Features

- **Advisory Locking**: Create and manage locks within your GitHub Actions workflows.
- **Pull Request Integration**: Lock and release events are posted as PR comments.
- **Slack Notifications**: Choose if you want to be notified on Slack about locking events.
- **Easy Disabling**: Skip locking for specific pull requests by:
  - adding a `SKIP_MUTEX` label
  - including `SKIP_MUTEX` in the PR's description or comment
  - or defining `SKIP_MUTEX=1` as an environment variable.
