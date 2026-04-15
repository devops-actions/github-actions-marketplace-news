---
title: cargo-machete
date: 2026-04-15 22:04:07 +00:00
tags:
  - bnjbvr
  - GitHub Actions
draft: false
repo: https://github.com/bnjbvr/cargo-machete
marketplace: https://github.com/marketplace/actions/cargo-machete
version: v0.9.2
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/bnjbvr/cargo-machete** to version **v0.9.2**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-machete) to find the latest changes.

## Action Summary

The `cargo-machete` GitHub Action automates the detection of unused dependencies in Rust projects, leveraging the `cargo-machete` tool for fast analysis. It simplifies dependency management by identifying and reporting unused libraries, reducing clutter and potential vulnerabilities in projects. This action is particularly useful for CI workflows to ensure cleaner and more efficient dependency handling.

## What's Changed

Mostly dependencies bumps, and a few speedups, notably for the Github Action!

## What's Changed
* Fix base image to Debian 13 by @popen2 in https://github.com/bnjbvr/cargo-machete/pull/194
* refactor(action): try to install a precompiled cargo-machete from the release page by @bnjbvr in https://github.com/bnjbvr/cargo-machete/pull/188
* Separate the ARCHIVE_URL symbol for proper parsing in bash by @rtyler in https://github.com/bnjbvr/cargo-machete/pull/199
* chore: update docker image to debian 13 by @reneleonhardt in https://github.com/bnjbvr/cargo-machete/pull/216
* perf: remove needless allocations by @JasmineLowen in https://github.com/bnjbvr/cargo-machete/pull/241
* fix(musl): use jemalloc with x86_64-unknown-linux-musl by @jalil-salame in https://github.com/bnjbvr/cargo-machete/pull/242
* lots of dependency bumps

## New Contributors
* @rtyler made their first contribution in https://github.com/bnjbvr/cargo-machete/pull/199
* @JasmineLowen made their first contribution in https://github.com/bnjbvr/cargo-machete/pull/241

**Full Changelog**: https://github.com/bnjbvr/cargo-machete/compare/v0.9.1...v0.9.2
