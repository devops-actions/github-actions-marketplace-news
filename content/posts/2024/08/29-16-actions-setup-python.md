---
title: Setup Python
date: 2024-08-29 16:47:01 +00:00
tags:
  - actions
  - GitHub Actions
draft: false
repo: actions/setup-python
marketplace: https://github.com/marketplace/actions/setup-python
version: v5.2.0
dependentsNumber: "1,124,367"
---


Version updated for **actions/setup-python** to version **v5.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1,124,367** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-python) to find the latest changes.

## Release notes

## What's Changed
### Bug fixes:
* Add `.zip` extension to Windows package downloads for `Expand-Archive` Compatibility by @priyagupta108 in https://github.com/actions/setup-python/pull/916
This addresses compatibility issues on Windows self-hosted runners by ensuring that the filenames for Python and PyPy package downloads explicitly include the .zip extension, allowing the Expand-Archive command to function correctly.
* Add arch to cache key by @Zxilly in https://github.com/actions/setup-python/pull/896
This addresses issues with caching by adding the architecture (arch) to the cache key, ensuring that cache keys are accurate to prevent conflicts
### Documentation changes:
* Fix display of emojis in contributors doc by @sciencewhiz in https://github.com/actions/setup-python/pull/899
* Documentation update for caching poetry dependencies by @gowridurgad in https://github.com/actions/setup-python/pull/908
### Dependency updates:
* Bump @iarna/toml version from 2.2.5 to 3.0.0 by @priya-kinthali in https://github.com/actions/setup-python/pull/912
* Bump pyinstaller from 3.6 to 5.13.1 by @aparnajyothi-y in https://github.com/actions/setup-python/pull/923

## New Contributors
* @sciencewhiz made their first contribution in https://github.com/actions/setup-python/pull/899
* @priyagupta108 made their first contribution in https://github.com/actions/setup-python/pull/916
* @Zxilly made their first contribution in https://github.com/actions/setup-python/pull/896
* @aparnajyothi-y made their first contribution in https://github.com/actions/setup-python/pull/923

**Full Changelog**: https://github.com/actions/setup-python/compare/v5...v5.2.0
