---
title: Aliyun (Alibaba Cloud) OSS CDN Sync Action
date: 2026-05-03 06:40:23 +00:00
tags:
  - frenchvandal
  - GitHub Actions
draft: false
repo: https://github.com/frenchvandal/aliyun-oss-cdn-sync-action
marketplace: https://github.com/marketplace/actions/aliyun-alibaba-cloud-oss-cdn-sync-action
version: v1.0.14
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/frenchvandal/aliyun-oss-cdn-sync-action** to version **v1.0.14**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aliyun-alibaba-cloud-oss-cdn-sync-action) to find the latest changes.

## Action Summary

The **Aliyun OSS CDN Sync Action** is a GitHub Action designed to automate the deployment of files to Aliyun Object Storage Service (OSS), with optional CDN refresh and preload operations. It streamlines tasks such as caching build files, running build commands, uploading files to OSS, managing CDN updates, and cleaning up orphaned objects in OSS. Key capabilities include efficient file uploads with retry logic, automatic cache-control header assignment, and optional integration with GitHub OIDC for secure authentication.

## What's Changed

## [1.0.14](https://github.com/frenchvandal/aliyun-oss-cdn-sync-action/compare/v1.0.13...v1.0.14) (2026-05-02)


### Bug Fixes

* skip source maps in commit-via-api to stay under 45 MB ([fe90b49](https://github.com/frenchvandal/aliyun-oss-cdn-sync-action/commit/fe90b493d292533a8c5e08e5880ee115c3e0a634))
