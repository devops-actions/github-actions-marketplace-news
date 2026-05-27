---
title: cargo-oxidate
date: 2026-05-27 22:47:40 +00:00
tags:
  - timweri
  - GitHub Actions
draft: false
repo: https://github.com/timweri/cargo-oxidate
marketplace: https://github.com/marketplace/actions/cargo-oxidate
version: v0.1.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/timweri/cargo-oxidate** to version **v0.1.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-oxidate) to find the latest changes.

## Action Summary

The `cargo-oxidate` GitHub Action automates the process of analyzing Rust project dependencies in `Cargo.lock` to identify packages that are either too new (posing a supply chain risk) or too old (potentially stale or vulnerable). It helps maintainers ensure dependency health by flagging such packages, optionally suggesting fixes for "too new" issues, and supports caching for efficient repeated checks. This action streamlines dependency management and enhances security in CI workflows.

## What's Changed

## What's Changed
* Downgrade dependency and prettify local printing by @timweri in https://github.com/timweri/cargo-oxidate/pull/1
* Add caching for crates.io metadata by @timweri in https://github.com/timweri/cargo-oxidate/pull/2

## New Contributors
* @timweri made their first contribution in https://github.com/timweri/cargo-oxidate/pull/1

**Full Changelog**: https://github.com/timweri/cargo-oxidate/compare/v0.1.4...v0.1.5
