---
title: Generate Service Matrix
date: 2026-05-25 14:37:01 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/generate-service-matrix
marketplace: https://github.com/marketplace/actions/generate-service-matrix
version: v1.6.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/skyhook-io/generate-service-matrix** to version **v1.6.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-service-matrix) to find the latest changes.

## Action Summary

The **Generate Service Matrix Action** is a GitHub Action designed to automate the creation of deployment matrices for multi-service, multi-environment workflows. It parses repository configurations (using Skyhook or legacy Koala formats) to generate a `strategy.matrix` JSON object, enabling streamlined and parallel deployments across various services and environments. This action simplifies complex deployment setups by consolidating environment and service configurations from either local files or remote deployment repositories.

## What's Changed

## [1.6.1](https://github.com/skyhook-io/generate-service-matrix/compare/v1.6.0...v1.6.1) (2026-05-25)


### Bug Fixes

* keep service_tag within max-length limit ([1a2e38e](https://github.com/skyhook-io/generate-service-matrix/commit/1a2e38e07b7302ff60314fea955d48cf4cb7f918)), closes [#2](https://github.com/skyhook-io/generate-service-matrix/issues/2)




