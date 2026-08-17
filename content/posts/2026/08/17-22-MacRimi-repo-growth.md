---
title: Repo Growth
date: 2026-08-17 22:00:49 +00:00
tags:
  - MacRimi
  - GitHub Actions
draft: false
repo: https://github.com/MacRimi/repo-growth
marketplace: https://github.com/marketplace/actions/repo-growth
version: v1.4.2
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  Repo Growth automates the tracking and visualization of repository metrics such as stars, forks, release downloads, and optional Git clone traffic directly within a GitHub repository. It eliminates the need for external services or personal tokens, providing a simple and reliable way to track project growth without relying on third-party APIs. The action is designed to be self-contained and does not require any secret setup or hosted databases, making it easy to integrate into any repository's workflow.
---


Version updated for **https://github.com/MacRimi/repo-growth** to version **v1.4.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repo-growth) to find the latest changes.

## Action Summary

Repo Growth automates the tracking and visualization of repository metrics such as stars, forks, release downloads, and optional Git clone traffic directly within a GitHub repository. It eliminates the need for external services or personal tokens, providing a simple and reliable way to track project growth without relying on third-party APIs. The action is designed to be self-contained and does not require any secret setup or hosted databases, making it easy to integrate into any repository's workflow.

## What's Changed

## Transient GitHub API retries

- Retry HTTP 500, 502, 503, and 504 responses up to three times.
- Use short exponential delays between attempts.
- Continue to fail immediately for authentication, permission, validation, and rate-limit errors.

