---
title: Setup Zig Compiler
date: 2024-06-10 00:50:51 +00:00
tags:
  - mlugg
  - GitHub Actions
draft: false
repo: mlugg/setup-zig
marketplace: https://github.com/marketplace/actions/setup-zig-compiler
version: v1.1.1
dependentsNumber: "?"
---


Version updated for **mlugg/setup-zig** to version **v1.1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-zig-compiler) to find the latest changes.

## Release notes

* Fix the restriction of `mirror` to not be `ziglang.org` (I forgot to implement it before)
* Append query parameter to downloads so mirrors can know that traffic is coming from Actions
* Add new mirror (thanks @hryx!)
