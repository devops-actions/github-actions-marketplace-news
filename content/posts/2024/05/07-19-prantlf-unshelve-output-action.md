---
title: Unshelve Build Output
date: 2024-05-07 19:03:10 +00:00
tags:
  - prantlf
  - GitHub Actions
draft: false
repo: prantlf/unshelve-output-action
marketplace: https://github.com/marketplace/actions/unshelve-build-output
version: v6.0.0
dependentsNumber: "8"
---


Version updated for **prantlf/unshelve-output-action** to version **v6.0.0**.
- This action is used across all versions by **8** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unshelve-build-output) to find the latest changes.

## Release notes

# [6.0.0](https://github.com/prantlf/unshelve-output-action/compare/v5.0.1...v6.0.0) (2024-05-07)

## Features

* Delete ARM64 archives from cache by default ([a8e49b4](https://github.com/prantlf/unshelve-output-action/commit/a8e49b4547a6ac50fc0e864ba9901572ccc9c232))

## Bug Fixes

* Upgrade dependencies ([d64b19f](https://github.com/prantlf/unshelve-output-action/commit/d64b19f7654efb76671afe6c03e3bb5fd68bc1fc))

## BREAKING CHANGES

GitHub actions which this action depends on were upgraded to their latest versions, which require Node.js 20 for running.

You probably produce the binaries for ARM64 already and
this won;t be a breaking change for you. If you don't, this task will
try deleting them by default. You can set `include-linux-arm64` and
`include-macos-arm64` to `false` to prevent it.
