---
title: Docker Compose Cache
date: 2026-08-04 07:15:53 +00:00
tags:
  - seijikohara
  - GitHub Actions
draft: false
repo: https://github.com/seijikohara/docker-compose-cache-action
marketplace: https://github.com/marketplace/actions/docker-compose-cache
version: v1.8.20
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the caching of Docker images used in Docker Compose files to speed up CI/CD workflows. It parses and caches each image as a separate tarball, verifies freshness using digests, and selectively pulls images based on cache status and digest verification. This reduces build times by avoiding unnecessary downloads and ensures consistent image versions across builds.
---


Version updated for **https://github.com/seijikohara/docker-compose-cache-action** to version **v1.8.20**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-compose-cache) to find the latest changes.

## Action Summary

This GitHub Action automates the caching of Docker images used in Docker Compose files to speed up CI/CD workflows. It parses and caches each image as a separate tarball, verifies freshness using digests, and selectively pulls images based on cache status and digest verification. This reduces build times by avoiding unnecessary downloads and ensures consistent image versions across builds.

## What's Changed

## What's Changed
* chore(deps): update actions/setup-node action to v7 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/316
* chore(deps): update dependency oxlint-tsgolint to v7 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/317
* fix(ci): resolve the pnpm version from packageManager only by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/320
* chore(deps): lock file maintenance by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/322
* chore(deps): update dependency oxfmt to ^0.61.0 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/321
* chore(deps): update pnpm to v11.18.0 by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/323
* fix(renovate): ignore the dist-commit bot author by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/325
* chore(deps): lock file maintenance by @renovate[bot] in https://github.com/seijikohara/docker-compose-cache-action/pull/324


**Full Changelog**: https://github.com/seijikohara/docker-compose-cache-action/compare/v1.8.19...v1.8.20
