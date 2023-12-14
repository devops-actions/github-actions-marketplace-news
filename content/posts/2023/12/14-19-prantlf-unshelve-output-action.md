---
title: Unshelve Build Output
date: 2023-12-14 19:02:24 +00:00
tags:
  - prantlf
  - GitHub Actions
draft: false
repo: prantlf/unshelve-output-action
marketplace: https://github.com/marketplace/actions/unshelve-build-output
version: v5.0.0
dependentsNumber: "5"
---


Version updated for **prantlf/unshelve-output-action** to version **v5.0.0**.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unshelve-build-output) to find the latest changes.

## Release notes

# [5.0.0](https://github.com/prantlf/unshelve-output-action/compare/v4.0.0...v5.0.0) (2023-12-14)

## Features

* Enable support for Linux ARM64 ([c9e8320](https://github.com/prantlf/unshelve-output-action/commit/c9e8320a4f86b98b441ef5258b2af294b37a814d))

## BREAKING CHANGES

Packages ending with -linux-arm64.zip will be
downloaded by default. If you do not produce them, prevent the
failure by setting the input `include-linux-arm64` to `false`.
