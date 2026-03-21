---
title: Generate Service Matrix
date: 2026-03-21 13:30:05 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/generate-service-matrix
marketplace: https://github.com/marketplace/actions/generate-service-matrix
version: v1.5.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/skyhook-io/generate-service-matrix** to version **v1.5.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-service-matrix) to find the latest changes.

## Action Summary

The **Generate Service Matrix Action** is a GitHub Action that automates the creation of a deployment matrix for multi-service, multi-environment workflows. It reads configuration files from your repository or external deployment repositories to generate a `strategy.matrix` JSON object, enabling parallelized deployments across different services and environments. This action streamlines complex deployment processes by supporting multiple configuration formats, deduplication of service/environment combinations, and shared caching for efficient repository cloning and environment discovery.

## Release notes

# [1.5.0](https://github.com/skyhook-io/generate-service-matrix/compare/v1.4.1...v1.5.0) (2026-03-21)


### Bug Fixes

* add autoDeploy: true to prod env in CI test fixture ([df58887](https://github.com/skyhook-io/generate-service-matrix/commit/df58887f78c161a59ae325e25bd0660be5fffed2))


### Features

* read auto_deploy from environment configuration ([8d118f1](https://github.com/skyhook-io/generate-service-matrix/commit/8d118f11bd1113806afac4648a51311e93b1aeee))




