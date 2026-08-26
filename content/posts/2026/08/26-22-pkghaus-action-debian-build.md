---
title: action-debian-build
date: 2026-08-26 22:47:35 +00:00
tags:
  - pkghaus
  - GitHub Actions
draft: false
repo: https://github.com/pkghaus/action-debian-build
marketplace: https://github.com/marketplace/actions/action-debian-build
version: v1.1.0
dependentsNumber: "1"
actionSummary: |
  This GitHub Action automates the process of building a Debian package from an upstream Git tag and a local `debian/` directory. It handles the entire packaging lifecycle, including resolving build dependencies, running `dpkg-buildpackage`, checking with `lintian`, and collecting artifacts. The action is designed for packaging repositories that maintain only their own packaging files and configuration, without uploading packages to any external repository.
---


Version updated for **https://github.com/pkghaus/action-debian-build** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-debian-build) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building a Debian package from an upstream Git tag and a local `debian/` directory. It handles the entire packaging lifecycle, including resolving build dependencies, running `dpkg-buildpackage`, checking with `lintian`, and collecting artifacts. The action is designed for packaging repositories that maintain only their own packaging files and configuration, without uploading packages to any external repository.

## What's Changed

## [1.1.0] - 2026-08-26

### Added

- DEP-8 tests run after the build for any package shipping `debian/tests/`.
  A package without `debian/tests/control` is unaffected. Set `dep8: "off"` on
  `build.yml`, or `DEP8: "off"` on the action, to skip them.

### Changed

- The reusable `build.yml` now calls this repository's own action instead of
  reimplementing the `docker run`.

### Fixed

- `DBGSYM` rejects a value it does not understand. It was compared against `1`
  alone, so `DBGSYM=yes` silently disabled the package it was written to
  enable. `off` and `on` are now accepted alongside `0` and `1`.
