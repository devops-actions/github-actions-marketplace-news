---
title: Go Coverage
date: 2024-03-24 19:00:44 +00:00
tags:
  - gwatts
  - GitHub Actions
draft: false
repo: gwatts/go-coverage-action
marketplace: https://github.com/marketplace/actions/go-coverage
version: v2.0.0
dependentsNumber: "0"
---


Version updated for **gwatts/go-coverage-action** to version **v2.0.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-coverage) to find the latest changes.

## Release notes

This update provide the following (should be no breaking changes):

* Update to Node 20 (thanks @marians)
* Adds `test-pkgs` option to explicitly specify packages to test (thanks @khasanovbi)
* Adds `notes-ref` option to set an explicit reference to use for git notes instead of the default of `gocoverage` (thanks @raleksandar)
* Adds coverage outputs rounded to 1 or 2 decimal places which makes it easier to produce better formatted badges, etc - See `coverage-pct-0dp`, `coverage-pct-1dp`, `coverage-last-pct-0dp`, `coverage-last-pct-1dp`
