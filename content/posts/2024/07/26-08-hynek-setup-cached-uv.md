---
title: Setup uv and Handle Its Cache
date: 2024-07-26 08:46:13 +00:00
tags:
  - hynek
  - GitHub Actions
draft: false
repo: hynek/setup-cached-uv
marketplace: https://github.com/marketplace/actions/setup-uv-and-handle-its-cache
version: v1.3.0
dependentsNumber: "20"
---


Version updated for **hynek/setup-cached-uv** to version **v1.3.0**.
- This action is used across all versions by **20** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-uv-and-handle-its-cache) to find the latest changes.

## Release notes

### Fixed

- The cache directory couldn't actually be... cached ...due to path restrictions (anymore?) so we moved it into `/tmp/` and made it configurable using the new action input `uv-cache-path`. [\#8](https://github.com/hynek/setup-cached-uv/pull/8)

