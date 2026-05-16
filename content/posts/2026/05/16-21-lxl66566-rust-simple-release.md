---
title: Rust simple release
date: 2026-05-16 21:27:05 +00:00
tags:
  - lxl66566
  - GitHub Actions
draft: false
repo: https://github.com/lxl66566/rust-simple-release
marketplace: https://github.com/marketplace/actions/rust-simple-release
version: v0.2.7
dependentsNumber: "34"
actionType: Composite
---


Version updated for **https://github.com/lxl66566/rust-simple-release** to version **v0.2.7**.

- This action is used across all versions by **34** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rust-simple-release) to find the latest changes.

## Action Summary

This GitHub Action, **Rust simple release**, automates the process of building, packaging, and releasing Rust projects, supporting both binaries and libraries. It simplifies CI/CD for small to medium Rust projects by handling tasks like setting up a Rust development environment, managing OpenSSL dependencies, and cross-compiling for multiple targets without using containers. Its key features include support for Rust workspaces, multi-feature builds, and customizable release assets, streamlining the release workflow.

## What's Changed

- feat: allows to not vendor openssl (dbec695)
- feat: allows default token (47e1339)
- feat: zip use compress (71e37da)
- Update action.yml (6e5ac69)
- fix: do not use zigbuild on x86_64-unknown-linux-gnu (a996e1e)
- feat: allow external RUSTFLAGS (a151372)
- feat: automatically vendored openssl (78571e3)
- feat: support yaml multi line string (9a1265d)
- fix: remove sccache because it causes compile failed on zstd-sys, ubuntu (8f442d3)
- change zig provider, use stable by default (b0966e3)
