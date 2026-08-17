---
title: Advisory lock service for CI/CD pipelines
date: 2026-08-17 05:55:28 +00:00
tags:
  - releasetools
  - GitHub Actions
draft: false
repo: https://github.com/releasetools/mutex
marketplace: https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines
version: v1.3.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action helps manage shared resources by using an advisory lock in a PostgreSQL table. It allows one CI job at a time to access a shared resource, ensuring that no two jobs can interfere with each other. The action provides options for specifying the lock ID, reason, owner, expiration, wait period, and auto-release settings, and it supports commenting on GitHub pull requests and posting to Slack if configured.
---


Version updated for **https://github.com/releasetools/mutex** to version **v1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines) to find the latest changes.

## Action Summary

This GitHub Action helps manage shared resources by using an advisory lock in a PostgreSQL table. It allows one CI job at a time to access a shared resource, ensuring that no two jobs can interfere with each other. The action provides options for specifying the lock ID, reason, owner, expiration, wait period, and auto-release settings, and it supports commenting on GitHub pull requests and posting to Slack if configured.

## What's Changed

> **`DATABASE_URL` is no longer read.** Any workflow or shell still passing it
> fails with `MUTEX_DATABASE_URL not found` until it is renamed:
>
> ```yaml
> env:
>   MUTEX_DATABASE_URL: ${{ secrets.DATABASE_URL }} # was DATABASE_URL:
> ```
>
> 1.2.2 read both and warned when the old name was used; that warning names the
> variable to set. The Action's `DATABASE_URL` input is gone with it.

- Removed `DATABASE_URL`. `MUTEX_DATABASE_URL` is the only name mutex reads, in the Action and the CLI, so a lock can no longer land in whatever database something else set that name to.
- Added explicit direct and server profiles, including a background TCP server that keeps PostgreSQL connections warm for faster CLI lock operations, a systemd template, and a rootless per-user macOS LaunchAgent.
- Running `mutex` without arguments now prints the general help instead of returning a usage error.
- `mutex server status` and `mutex server stop` now identify a missing profiles file instead of claiming the implicit direct connection is a configured profile.
- Published the CLI as the public `@releasetools/mutex` package with provenance, so npm and mise can install it without cloning the repository.
- The npm package description now explains how its Postgres-backed TTL locks coordinate the GitHub Action and CLI.
- Renamed the release artifact command to `npm run package:release`, reflecting that it assembles both the GitHub Action and npm CLI package.
- Added `npm run cli:link` for building and linking a checkout and `npm run check` for formatting, building, and testing it locally.

