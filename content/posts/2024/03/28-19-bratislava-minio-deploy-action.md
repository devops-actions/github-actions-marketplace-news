---
title: Minio Deploy with prebuild image
date: 2024-03-28 19:24:41 +00:00
tags:
  - bratislava
  - GitHub Actions
draft: false
repo: bratislava/minio-deploy-action
marketplace: https://github.com/marketplace/actions/minio-deploy-with-prebuild-image
version: v1
dependentsNumber: "?"
---


Version updated for **bratislava/minio-deploy-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/minio-deploy-with-prebuild-image) to find the latest changes.

## Release notes

This action is forked from the [source](https://github.com/hkdobrev/minio-deploy-action). We improved the runtime by using an already-built image hosted on docker.io instead of building the image every time an action runs. This can save you a vast amount of time, and therefore, you have faster pipeline runs.
