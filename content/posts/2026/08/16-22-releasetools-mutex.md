---
title: Advisory lock service for CI/CD pipelines
date: 2026-08-16 22:08:44 +00:00
tags:
  - releasetools
  - GitHub Actions
draft: false
repo: https://github.com/releasetools/mutex
marketplace: https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines
version: v1.2.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action, mutex, provides a robust solution to manage shared resources in CI/CD pipelines by enforcing advisory locks in a PostgreSQL table. It allows different workflows or commands to wait until a lock is released, preventing race conditions and ensuring proper resource management. The action supports locking and unlocking operations via command-line interface (CLI) and GitHub Actions, with options for customizing the lock duration and behavior through environment variables and inputs.
---


Version updated for **https://github.com/releasetools/mutex** to version **v1.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines) to find the latest changes.

## Action Summary

This GitHub Action, mutex, provides a robust solution to manage shared resources in CI/CD pipelines by enforcing advisory locks in a PostgreSQL table. It allows different workflows or commands to wait until a lock is released, preventing race conditions and ensuring proper resource management. The action supports locking and unlocking operations via command-line interface (CLI) and GitHub Actions, with options for customizing the lock duration and behavior through environment variables and inputs.

## What's Changed

- Slack notifications are now switched on by `slack-channel` alone. A workflow that never asked for them no longer logs a warning about a missing `SLACK_BOT_TOKEN` on every lock and release.
- Fixed a `SLACK_BOT_TOKEN` inherited from job-level `env:` failing any mutex step that set no `slack-channel`. The channel decides; an unrelated variable in the environment no longer can.

