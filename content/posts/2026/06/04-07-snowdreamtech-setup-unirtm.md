---
title: Setup UniRTM
date: 2026-06-04 07:10:07 +00:00
tags:
  - snowdreamtech
  - GitHub Actions
draft: false
repo: https://github.com/snowdreamtech/setup-unirtm
marketplace: https://github.com/marketplace/actions/setup-unirtm
version: v0.4.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/snowdreamtech/setup-unirtm** to version **v0.4.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-unirtm) to find the latest changes.

## What's Changed

## [0.4.0](https://github.com/snowdreamtech/setup-unirtm/compare/v0.3.0...v0.4.0) (2026-06-04)


### Features

* add support for UNIRTM_ENV in cache key generation ([436e727](https://github.com/snowdreamtech/setup-unirtm/commit/436e7279c362ae25cea4d3173b4c12acf850a861))


### Bug Fixes

* bundle action as cjs to avoid dynamic require errors in [@actions](https://github.com/actions) dependencies ([1fb0b83](https://github.com/snowdreamtech/setup-unirtm/commit/1fb0b836177c6a84d6890f971e1d189eb6dffba8))
* bundle action as esm to fix require is not defined error ([fe9c6e1](https://github.com/snowdreamtech/setup-unirtm/commit/fe9c6e194892a14ffaba8376f23ff2a59f2a2f08))
* correctly mock exact cache hit in main.test.ts ([4e2f3f9](https://github.com/snowdreamtech/setup-unirtm/commit/4e2f3f947f2f1aa64f6a3abefbc383f2f8064fc8))
* correctly save CACHE_RESULT state in main.ts ([6d9149f](https://github.com/snowdreamtech/setup-unirtm/commit/6d9149f6a88ad8e37b8dd104e6c0dbe746986d78))
