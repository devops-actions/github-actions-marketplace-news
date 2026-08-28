---
title: action-debian-build
date: 2026-08-28 17:53:30 +00:00
tags:
  - pkghaus
  - GitHub Actions
draft: false
repo: https://github.com/pkghaus/action-debian-build
marketplace: https://github.com/marketplace/actions/action-debian-build
version: v1.2.0
dependentsNumber: "1"
actionSummary: |
  This GitHub Action automates the process of building a Debian package from an upstream git tag and a custom `debian/` directory. It resolves build dependencies, runs `dpkg-buildpackage`, checks the result with `lintian`, and collects artifacts. The action can be used to build packages for different Debian suites and architectures and is reusable for validating packaging repositories.
---


Version updated for **https://github.com/pkghaus/action-debian-build** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-debian-build) to find the latest changes.

## Action Summary

This GitHub Action automates the process of building a Debian package from an upstream git tag and a custom `debian/` directory. It resolves build dependencies, runs `dpkg-buildpackage`, checks the result with `lintian`, and collects artifacts. The action can be used to build packages for different Debian suites and architectures and is reusable for validating packaging repositories.

## What's Changed

## [1.2.0] - 2026-08-27

### Added

- `DEP8_EXTRA_DEBS` in `package.conf`: packages from this archive that the DEP-8
  testbed needs, fetched and handed to autopkgtest alongside the built package.
  The testbed is Debian only, so a dependency Debian does not carry cannot
  otherwise resolve. Space-separated; a value that is not a list of Debian
  package names fails the build before anything is installed.

