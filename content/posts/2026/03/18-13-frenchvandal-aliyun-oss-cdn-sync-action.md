---
title: Aliyun (Alibaba Cloud) OSS CDN Sync Action
date: 2026-03-18 13:34:24 +00:00
tags:
  - frenchvandal
  - GitHub Actions
draft: false
repo: https://github.com/frenchvandal/aliyun-oss-cdn-sync-action
marketplace: https://github.com/marketplace/actions/aliyun-alibaba-cloud-oss-cdn-sync-action
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/frenchvandal/aliyun-oss-cdn-sync-action** to version **v1.0.3**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aliyun-alibaba-cloud-oss-cdn-sync-action) to find the latest changes.

## Action Summary

The Aliyun OSS CDN Sync Action is a GitHub Action designed to automate uploading files from a local directory to Aliyun OSS, refreshing or preloading CDN cache for the uploaded paths, and performing cleanup to remove orphaned objects from OSS. It streamlines workflows by handling file uploads with concurrency, ensuring public-read access for OSS-hosted assets, and managing CDN and cleanup operations with graceful error handling. This action is particularly useful for developers hosting static websites or other resources on Aliyun OSS while maintaining up-to-date CDN content.

## Release notes

## [1.0.3](https://github.com/frenchvandal/aliyun-oss-cdn-sync-action/compare/v1.0.2...v1.0.3) (2026-03-12)


### Bug Fixes

* **cdn:** default invalid cdn actions to refresh when enabled ([a4a4763](https://github.com/frenchvandal/aliyun-oss-cdn-sync-action/commit/a4a476345d158c93a3b026ee44059efa12b86deb))
