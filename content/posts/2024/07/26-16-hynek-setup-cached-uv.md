---
title: Setup uv and Handle Its Cache
date: 2024-07-26 16:47:39 +00:00
tags:
  - hynek
  - GitHub Actions
draft: false
repo: hynek/setup-cached-uv
marketplace: https://github.com/marketplace/actions/setup-uv-and-handle-its-cache
version: v2.0.0
dependentsNumber: "21"
---


Version updated for **hynek/setup-cached-uv** to version **v2.0.0**.
- This action is used across all versions by **21** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-uv-and-handle-its-cache) to find the latest changes.

## Release notes

### Added

- Automatic cache pruning. If caching is active, we now automatically run `uv cache prune --ci` that shrinks the cache directory to only downloaded files. This make the cache smaller and therefore faster to save and restore. [\#9](https://github.com/hynek/setup-cached-uv/pull/9)

- The current calendar week is now added to the cache key by default. This means that the cache is refreshed weekly.

  You can tweak the behavior using the `cache-date-suffix` input. Setting it to `""` disables this feature, any other value is interpreted as an argument to the `date` CLI command. [\#11](https://github.com/hynek/setup-cached-uv/pull/11)

### Changed

- The name of the workflow and of the current job are now part of the cache key. While this means that you can't share a cache between jobs, this should be only a minor inconvenience in practice and make it do the right thing in the vast majority of cases.

  If this is a problem for you, please open an issue and tell us about your use-case. We can always add an option to set the whole key explicitly. [\#10](https://github.com/hynek/setup-cached-uv/pull/10)

