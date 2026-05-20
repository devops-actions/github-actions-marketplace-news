---
title: Generate Service Matrix
date: 2026-05-20 07:00:25 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/generate-service-matrix
marketplace: https://github.com/marketplace/actions/generate-service-matrix
version: v1.6.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/skyhook-io/generate-service-matrix** to version **v1.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-service-matrix) to find the latest changes.

## Action Summary

The **Generate Service Matrix Action** automates the creation of a deployment matrix for multi-service, multi-environment workflows in GitHub Actions. It reads configuration files (in Skyhook or legacy Koala formats) from your repository or external deployment repositories to dynamically generate a `strategy.matrix` JSON object, enabling parallelized deployments. This action simplifies managing complex deployment pipelines by consolidating service and environment configurations into a single, efficient process.

## What's Changed

# [1.6.0](https://github.com/skyhook-io/generate-service-matrix/compare/v1.5.2...v1.6.0) (2026-05-19)


### Bug Fixes

* harden Koala path envFilterSet guard to reject empty Set ([70d803b](https://github.com/skyhook-io/generate-service-matrix/commit/70d803bdbeced4ef358c43e52814e20e1a92513a))


### Features

* add environments (multi-env filter) and force-deploy inputs ([d9427cc](https://github.com/skyhook-io/generate-service-matrix/commit/d9427ccf1d82baff0b57ca2e3edd4847beea436a))




