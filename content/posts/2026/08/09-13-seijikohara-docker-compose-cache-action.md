---
title: Docker Compose Cache
date: 2026-08-09 13:51:17 +00:00
tags:
  - seijikohara
  - GitHub Actions
draft: false
repo: https://github.com/seijikohara/docker-compose-cache-action
marketplace: https://github.com/marketplace/actions/docker-compose-cache
version: v1.8.21
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Docker Compose Cache Action automates the caching of Docker images used in Docker Compose files to speed up CI/CD workflows. It parses the Compose files, caches each image as a separate tarball with its digest for verification, and selectively pulls images only when necessary. This ensures efficient use of cache and reduces build times by avoiding repeated downloads of unchanged images. The action supports multiple Compose files and allows for specifying which images to exclude from caching.
---


Version updated for **https://github.com/seijikohara/docker-compose-cache-action** to version **v1.8.21**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-compose-cache) to find the latest changes.

## Action Summary

The Docker Compose Cache Action automates the caching of Docker images used in Docker Compose files to speed up CI/CD workflows. It parses the Compose files, caches each image as a separate tarball with its digest for verification, and selectively pulls images only when necessary. This ensures efficient use of cache and reduces build times by avoiding repeated downloads of unchanged images. The action supports multiple Compose files and allows for specifying which images to exclude from caching.

## What's Changed

## What's Changed
* chore(deps): update dependency oxfmt to ^0.62.0 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/327
* chore(deps): update pnpm to v11.19.0 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/328
* chore(deps): update dependency taze to v20 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/329
* chore(deps): update pnpm/action-setup action to v6.0.10 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/326
* chore(deps): lock file maintenance by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/330


**Full Changelog**: https://github.com/seijikohara/docker-compose-cache-action/compare/v1.8.20...v1.8.21
