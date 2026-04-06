---
title: Aliyun (Alibaba Cloud) OSS CDN Sync Action
date: 2026-04-06 14:05:43 +00:00
tags:
  - frenchvandal
  - GitHub Actions
draft: false
repo: https://github.com/frenchvandal/aliyun-oss-cdn-sync-action
marketplace: https://github.com/marketplace/actions/aliyun-alibaba-cloud-oss-cdn-sync-action
version: v1.0.12
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/frenchvandal/aliyun-oss-cdn-sync-action** to version **v1.0.12**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aliyun-alibaba-cloud-oss-cdn-sync-action) to find the latest changes.

## Action Summary

The **Aliyun OSS CDN Sync Action** automates the process of building, uploading, and managing static-site assets on Aliyun OSS with optional CDN refresh and preload functionality. It solves challenges related to efficient file synchronization, cache management, and CDN updates by integrating build commands, GitHub Actions caching, optimized file uploads, and cleanup operations. Key features include automatic cache restoration, fine-grained upload control, inferred cache-control headers, non-fatal CDN and cleanup operations, and detailed job summaries for deployment transparency.

## What's Changed

## [1.0.12](https://github.com/frenchvandal/aliyun-oss-cdn-sync-action/compare/v1.0.11...v1.0.12) (2026-04-06)


### Bug Fixes

* **logging:** surface warnings and failures through actions core ([fe6ce68](https://github.com/frenchvandal/aliyun-oss-cdn-sync-action/commit/fe6ce684e755add7fbd6ff9f57030c4e5975ef46))
* prevent unsafe cleanup after partial deployments ([617498f](https://github.com/frenchvandal/aliyun-oss-cdn-sync-action/commit/617498fdfaaf367a6108f065ad4424f40a2fe4fa))
