---
title: Restore and save Nix Store
date: 2026-01-08 21:15:21 +00:00
tags:
  - nix-community
  - GitHub Actions
draft: false
repo: https://github.com/nix-community/cache-nix-action
marketplace: https://github.com/marketplace/actions/restore-and-save-nix-store
version: v7
dependentsNumber: "7"
---


Version updated for **https://github.com/nix-community/cache-nix-action** to version **v7**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/restore-and-save-nix-store) to find the latest changes.

## Action Summary

The "Cache Nix Store" GitHub Action automates the process of restoring and saving Nix store paths and other directories using GitHub Actions cache, primarily for Linux and macOS runners. It simplifies caching workflows by managing Nix store garbage collection, merging caches from multiple jobs, purging outdated caches, and providing support for custom cache configurations. This action is particularly useful for optimizing build workflows by reducing redundant computations and ensuring efficient dependency management in Nix-based environments.

## Release notes

## What's changed compared to v6

### Breaking changes

* Cache only `/nix` by default by @deemp in https://github.com/nix-community/cache-nix-action/pull/261
* Improve `saveFromGC` by @deemp in https://github.com/nix-community/cache-nix-action/pull/253
* Update dependencies by @deemp in https://github.com/nix-community/cache-nix-action/pull/228

### Added

* Support ca-derivations by @deemp in https://github.com/nix-community/cache-nix-action/pull/130
* Support `cachix/install-nix-action` and `DeterminateSystems/determinate-nix-action` by @deemp in https://github.com/nix-community/cache-nix-action/pull/234
* Support custom cache URL by @deemp in https://github.com/nix-community/cache-nix-action/pull/244
* Use Temporal by @deemp in https://github.com/nix-community/cache-nix-action/pull/260

### Fixed

* Fix assumptions in nix commands by @deemp in https://github.com/nix-community/cache-nix-action/pull/240
* Install sqlite on macOS only when it's missing and if there's at least one cache to restore by @deemp in https://github.com/nix-community/cache-nix-action/pull/241
* Run `zstd` in multi-threaded mode by @deemp in https://github.com/nix-community/cache-nix-action/pull/243
* Align with upstream by @deemp in https://github.com/nix-community/cache-nix-action/pull/249
* Update saveFromGC package by @deemp in https://github.com/nix-community/cache-nix-action/pull/254
* Fix skipping restore on hit primary key by @deemp in https://github.com/nix-community/cache-nix-action/pull/259

### Changed (docs)

* fix `nix_conf` example in readme by @peterbecich in https://github.com/nix-community/cache-nix-action/pull/132
* add `nothing-but-nix` to readme by @peterbecich in https://github.com/nix-community/cache-nix-action/pull/162
* Update status of `magic-nix-cache-action` by @lucperkins in https://github.com/nix-community/cache-nix-action/pull/161

### Changed (deps)

<details><summary>Update deps via dependabot.</summary>

* chore(deps): bump actions/checkout from 4 to 5 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/183
* chore(deps-dev): bump eslint from 9.22.0 to 9.37.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/207
* chore(deps-dev): bump eslint-plugin-import from 2.31.0 to 2.32.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/210
* chore(deps-dev): bump @typescript-eslint/parser from 8.26.1 to 8.46.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/208
* chore(deps-dev): bump ts-jest from 29.2.6 to 29.4.4 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/200
* chore(deps): bump nixbuild/nix-quick-install-action from 30 to 34 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/204
* chore(deps-dev): bump @typescript-eslint/eslint-plugin from 8.26.1 to 8.46.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/209
* chore(deps-dev): bump eslint-import-resolver-typescript from 3.8.3 to 4.4.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/143
* chore(deps-dev): bump eslint-plugin-n from 17.16.2 to 17.23.1 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/215
* chore(deps-dev): bump nock from 14.0.1 to 14.0.10 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/213
* chore(deps-dev): bump ts-jest from 29.4.4 to 29.4.5 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/211
* chore(deps-dev): bump eslint-plugin-jest from 28.11.0 to 29.0.1 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/214
* chore(deps): bump actions/checkout from 5 to 6 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/220
* chore(deps): bump dedent from 1.5.3 to 1.7.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/218
* chore(deps-dev): bump prettier from 3.5.3 to 3.6.2 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/216
* chore(deps): bump @actions/github from 6.0.0 to 6.0.1 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/212
* chore(deps-dev): bump jest-circus from 29.7.0 to 30.2.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/219
* chore(deps-dev): bump eslint-config-love from 119.0.0 to 133.0.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/217
* chore(deps-dev): bump eslint-plugin-jest from 29.0.1 to 29.5.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/223
* chore(deps-dev): bump @types/jest from 29.5.14 to 30.0.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/230
* chore(deps-dev): bump @typescript-eslint/parser from 8.50.0 to 8.50.1 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/231
* chore(deps-dev): bump eslint-plugin-jest from 29.9.0 to 29.11.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/235
* chore(deps-dev): bump @typescript-eslint/eslint-plugin from 8.50.0 to 8.50.1 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/233
* chore(deps-dev): bump eslint-plugin-jest from 29.11.0 to 29.11.1 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/251
* chore(deps-dev): bump @typescript-eslint/eslint-plugin from 8.50.1 to 8.51.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/257
* chore(deps-dev): bump eslint-plugin-jest from 29.11.1 to 29.11.2 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/255
* chore(deps-dev): bump eslint-plugin-jest from 29.11.2 to 29.12.0 by @dependabot[bot] in https://github.com/nix-community/cache-nix-action/pull/264

</details>

## New Contributors

* @peterbecich made their first contribution in https://github.com/nix-community/cache-nix-action/pull/132
* @lucperkins made their first contribution in https://github.com/nix-community/cache-nix-action/pull/161

**Full Changelog**: https://github.com/nix-community/cache-nix-action/compare/v6...v7
