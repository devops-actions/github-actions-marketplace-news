---
title: Setup uv and Handle Its Cache
date: 2024-07-22 08:47:09 +00:00
tags:
  - hynek
  - GitHub Actions
draft: false
repo: hynek/setup-cached-uv
marketplace: https://github.com/marketplace/actions/setup-uv-and-handle-its-cache
version: v1.2.0
dependentsNumber: "19"
---


Version updated for **hynek/setup-cached-uv** to version **v1.2.0**.
- This action is used across all versions by **19** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-uv-and-handle-its-cache) to find the latest changes.

## Release notes

### Added

- Option to conditionally disable caching by setting `if-use-cache` to anything else than `'true'`.

  *uv* is increadibly fast at installing wheels, while GitHub Actions's caching is rather slow. But it's still faster than building missing wheels for exotic platforms (say, PyPy).

  This option allows you activate caching only when it's helpful. [\#6](https://github.com/hynek/setup-cached-uv/pull/6)

