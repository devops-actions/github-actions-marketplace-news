---
title: Unshelve Build Output
date: 2023-11-13 11:09:19 +00:00
tags:
  - prantlf
  - GitHub Actions
draft: false
repo: prantlf/unshelve-output-action
marketplace: https://github.com/marketplace/actions/unshelve-build-output
version: v4.0.0
dependentsNumber: "5"
---


Version updated for **prantlf/unshelve-output-action** to version **v4.0.0**.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unshelve-build-output) to find the latest changes.

## Release notes

# [4.0.0](https://github.com/prantlf/unshelve-output-action/compare/v3.0.0...v4.0.0) (2023-11-13)

## Features

* Include ARM64 architecture for macOS os ([67c8547](https://github.com/prantlf/unshelve-output-action/commit/67c8547222a63c3061db4a154b08e9c3cc727dd3))

## BREAKING CHANGES

The ARM64 architectrure for macOS os is included by
default. If you do not produce for it, disable it by adding an input
boolean `include-macos-arm64: false` to the `with` object.
