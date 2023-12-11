---
title: Run Lest
date: 2023-12-11 03:17:03 +00:00
tags:
  - TAServers
  - GitHub Actions
draft: false
repo: TAServers/lest
marketplace: https://github.com/marketplace/actions/run-lest
version: v3.0.0
dependentsNumber: "2"
---


Version updated for **TAServers/lest** to version **v3.0.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-lest) to find the latest changes.

## Release notes

### Added

-   Made it possible to set `testMatch` from the CLI

### Changed

-   (**BREAKING**) Changed CLI option format to only support `--option=value` and `-o=value` (`--option` and `-o` are shorthand for `--option=true` and `-o=true` respectively)

### Fixed

-   `lest.config.lua` is no longer required to run tests [#97](https://github.com/TAServers/lest/issues/97)
-   Unrecognised CLI arguments no longer throw an error, fixing the `--luaCommand` option in the wrapper being unusable [#104](https://github.com/TAServers/lest/issues/104)
