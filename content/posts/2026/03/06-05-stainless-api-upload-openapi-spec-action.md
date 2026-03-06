---
title: Stainless — Build SDK
date: 2026-03-06 05:56:11 +00:00
tags:
  - stainless-api
  - GitHub Actions
draft: false
repo: https://github.com/stainless-api/upload-openapi-spec-action
marketplace: https://github.com/marketplace/actions/stainless-build-sdk
version: v1.13.0
dependentsNumber: "72"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/stainless-api/upload-openapi-spec-action** to version **v1.13.0**.
- This action is used across all versions by **72** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/stainless-build-sdk) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building and previewing updates to Stainless SDKs directly from a repository's pull requests, streamlining SDK development and integration workflows. It supports authentication via GitHub OIDC or API keys, with OIDC being the preferred method for secure and automated token handling. This action simplifies the management of SDK updates by generating previews for changes and ensuring builds are triggered and validated during pull request events.

## Release notes

## [1.13.0](https://github.com/stainless-api/upload-openapi-spec-action/compare/v1.12.0...v1.13.0) (2026-03-05)


### Features

* a couple small tweaks ([#202](https://github.com/stainless-api/upload-openapi-spec-action/issues/202)) ([0e2a297](https://github.com/stainless-api/upload-openapi-spec-action/commit/0e2a2973686c4c408f58aacc1f14dbcf75ebd02b))
* assume checks are skipped if they do not start for a while ([#194](https://github.com/stainless-api/upload-openapi-spec-action/issues/194)) ([aa5abca](https://github.com/stainless-api/upload-openapi-spec-action/commit/aa5abca0203e13c99cbf126523f4029f707e68c2))
* **build:** combine build, preview, and merge ([efa0f49](https://github.com/stainless-api/upload-openapi-spec-action/commit/efa0f49c5cf79aec15452e15bc71412fbd7b4452))
* **compat:** add more details to ctx ([9d434fc](https://github.com/stainless-api/upload-openapi-spec-action/commit/9d434fc769bded2cd620856508811787c3e5303a))
* handle case where there is a fatal error in the base build but not the head ([#205](https://github.com/stainless-api/upload-openapi-spec-action/issues/205)) ([68b8589](https://github.com/stainless-api/upload-openapi-spec-action/commit/68b8589f74d8378037f36e7cb5a81a1d01d7e920))
* show url for in progress ci steps ([#200](https://github.com/stainless-api/upload-openapi-spec-action/issues/200)) ([e20dd9c](https://github.com/stainless-api/upload-openapi-spec-action/commit/e20dd9c7dcf6446dd07de798896812ff2d5c52ce))
* use severity as conclusion for diagnostic/check step cases ([#198](https://github.com/stainless-api/upload-openapi-spec-action/issues/198)) ([224c0e1](https://github.com/stainless-api/upload-openapi-spec-action/commit/224c0e1fa6641945612f9f9eb0b11e01b22560b3))


### Bug Fixes

* **build:** don't merge if no merge branch ([#201](https://github.com/stainless-api/upload-openapi-spec-action/issues/201)) ([650b38c](https://github.com/stainless-api/upload-openapi-spec-action/commit/650b38c5349ad56bbe1828be8f4c19177dbda222))
* fix gitlab client usage ([#196](https://github.com/stainless-api/upload-openapi-spec-action/issues/196)) ([3fe4697](https://github.com/stainless-api/upload-openapi-spec-action/commit/3fe4697ea14e60c015fd1977761ba49afacb5ae1))
* url encode branch names ([#199](https://github.com/stainless-api/upload-openapi-spec-action/issues/199)) ([dfe83db](https://github.com/stainless-api/upload-openapi-spec-action/commit/dfe83dbdfebbd020fc604e9f8c28c2cdcac93ade))
