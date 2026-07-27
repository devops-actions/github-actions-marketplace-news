---
title: Docker Compose Cache
date: 2026-07-27 06:42:21 +00:00
tags:
  - seijikohara
  - GitHub Actions
draft: false
repo: https://github.com/seijikohara/docker-compose-cache-action
marketplace: https://github.com/marketplace/actions/docker-compose-cache
version: v1.8.19
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Docker Compose Cache Action automates the caching of Docker images specified in Docker Compose files to reduce CI/CD workflow execution time. It parses Compose files, caches each image as a separate tarball with verification via digest checks, and only pulls images when necessary. This action supports multiple Compose files and allows for image exclusion options, improving performance by avoiding redundant downloads.
---


Version updated for **https://github.com/seijikohara/docker-compose-cache-action** to version **v1.8.19**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-compose-cache) to find the latest changes.

## Action Summary

The Docker Compose Cache Action automates the caching of Docker images specified in Docker Compose files to reduce CI/CD workflow execution time. It parses Compose files, caches each image as a separate tarball with verification via digest checks, and only pulls images when necessary. This action supports multiple Compose files and allows for image exclusion options, improving performance by avoiding redundant downloads.

## What's Changed

## What's Changed
* ci: replace deprecated skip-latest-check input in test workflow by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/310
* chore: align devEngines pnpm version with packageManager by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/311
* ci: do not fail summary when a main push run is superseded by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/312
* chore(deps): update actions/checkout digest to 3d3c42e by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/313
* chore(deps): update pnpm to v11.15.1 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/315
* chore(deps): update dependency oxfmt to ^0.60.0 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/314
* chore(deps): update pnpm to v11.17.0 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/319
* chore(deps): lock file maintenance by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/318


**Full Changelog**: https://github.com/seijikohara/docker-compose-cache-action/compare/v1.8.18...v1.8.19
