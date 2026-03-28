---
title: Docker Digest Builder
date: 2026-03-28 22:14:18 +00:00
tags:
  - carry0987
  - GitHub Actions
draft: false
repo: https://github.com/carry0987/docker-digest-builder
marketplace: https://github.com/marketplace/actions/docker-digest-builder
version: v1.6.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/carry0987/docker-digest-builder** to version **v1.6.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-digest-builder) to find the latest changes.

## Action Summary

The Docker Digest Builder GitHub Action automates the process of building Docker images for specific platforms, pushing them by their content digest (tagless), and uploading the digest as an artifact. It addresses the need for parallelized platform-specific builds with matrix strategies and facilitates the creation of multi-architecture manifests in subsequent jobs. Key capabilities include digest extraction, artifact upload for cross-job consumption, and support for Docker layer caching via GitHub Actions.

## Release notes

## [1.6.0](https://github.com/carry0987/docker-digest-builder/compare/v1.5.0...v1.6.0) (2026-03-28)


### Features

* Update tsconfig to ESNext and add Node types ([2362bcd](https://github.com/carry0987/docker-digest-builder/commit/2362bcd235f516eadb6f7500ddcf536b09ea5b7b))
* Use registry buildx output; bump deps ([7206da9](https://github.com/carry0987/docker-digest-builder/commit/7206da9a8e0df097a282954953eb68fc0c1b2066))
