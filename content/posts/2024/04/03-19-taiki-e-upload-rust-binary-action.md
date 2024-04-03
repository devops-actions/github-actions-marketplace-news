---
title: Build and upload Rust binary to GitHub Releases
date: 2024-04-03 19:04:42 +00:00
tags:
  - taiki-e
  - GitHub Actions
draft: false
repo: taiki-e/upload-rust-binary-action
marketplace: https://github.com/marketplace/actions/build-and-upload-rust-binary-to-github-releases
version: v1.19.2
dependentsNumber: "1,779"
---


Version updated for **taiki-e/upload-rust-binary-action** to version **v1.19.2**.
- This action is used across all versions by **1,779** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-and-upload-rust-binary-to-github-releases) to find the latest changes.

## Release notes

- Add a warning for `macos-latest` runner architecture change. ([#70](https://github.com/taiki-e/upload-rust-binary-action/pull/70))

  > warning: GitHub Actions changed default architecture of macos-latest since macos-14; consider passing 'target' input option to clarify which target you are building for.
