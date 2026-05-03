---
title: Build Rust Projects with Cross
date: 2026-05-03 06:40:04 +00:00
tags:
  - houseabsolute
  - GitHub Actions
draft: false
repo: https://github.com/houseabsolute/actions-rust-cross
marketplace: https://github.com/marketplace/actions/build-rust-projects-with-cross
version: v1.0.7
dependentsNumber: "1,350"
actionType: Composite
---


Version updated for **https://github.com/houseabsolute/actions-rust-cross** to version **v1.0.7**.

- This action is used across all versions by **1,350** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-rust-projects-with-cross) to find the latest changes.

## Action Summary

This GitHub Action simplifies cross-compiling Rust projects for multiple platforms using the `cross` tool. It automates the setup and execution of cross-compilation workflows, allowing developers to build binaries for various target architectures (e.g., Linux, Windows, macOS) from a single configuration. Key capabilities include support for multiple target triples and integration with GitHub-hosted runners, making multi-platform builds more efficient and streamlined.

## What's Changed

- Fixed a bug in calculating the `cross` binary's hash.
- Fixed cache key handling to deal with spaces in cache key elements, for example in the OS version. Reported by @gdubicki (Greg Dubicki). GH #50. Fixes #51.

