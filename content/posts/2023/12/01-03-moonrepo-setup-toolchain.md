---
title: Setup proto and moon toolchains
date: 2023-12-01 03:03:19 +00:00
tags:
  - moonrepo
  - GitHub Actions
draft: false
repo: moonrepo/setup-toolchain
marketplace: https://github.com/marketplace/actions/setup-proto-and-moon-toolchains
version: v0.2.0
dependentsNumber: "8"
---


Version updated for **moonrepo/setup-toolchain** to version **v0.2.0**.
- This action is used across all versions by **8** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-proto-and-moon-toolchains) to find the latest changes.

## Release notes

- Added a `cache` input to toggle caching of the toolchain. Defaults to true.
- Added a `cache-base` input. When provided, will only save cache on this branch/ref, but will restore cache on all branches/refs.
