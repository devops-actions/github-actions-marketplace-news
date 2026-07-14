---
title: Set up Rocq
date: 2026-07-14 22:31:37 +00:00
tags:
  - tchajed
  - GitHub Actions
draft: false
repo: https://github.com/tchajed/setup-rocq
marketplace: https://github.com/marketplace/actions/set-up-rocq
version: v1.8.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the installation of Rocq using OPAM with caching capabilities to speed up future installations, especially for developers who frequently work on projects that depend on Rocq. It supports specifying a specific version or the latest stable release of Rocq, as well as additional OPAM repositories and customizing which OPAM files are used to generate a cache key.
---


Version updated for **https://github.com/tchajed/setup-rocq** to version **v1.8.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-rocq) to find the latest changes.

## Action Summary

This GitHub Action automates the installation of Rocq using OPAM with caching capabilities to speed up future installations, especially for developers who frequently work on projects that depend on Rocq. It supports specifying a specific version or the latest stable release of Rocq, as well as additional OPAM repositories and customizing which OPAM files are used to generate a cache key.

## What's Changed

## What's changed

- Fixed installation of Rocq ≥ 9.2: specific `rocq-version` values now install via `rocq-core.<version>` with an unconstrained `rocq-stdlib`, instead of the `coq` compat metapackage, which stopped being published at 9.1.1 (#70). Versions starting with `8.` continue to use `coq.<version>`.
- `rocq-version: latest` now resolves to the actual latest release (currently 9.2.0) via `rocq-core` + `rocq-stdlib`, rather than the stale `coq` metapackage (#70).
- `pin-depends` handling now recognizes `rocq-core`, `rocq-runtime`, and `rocq-stdlib` pins: they get the same install-override treatment as `coq` pins and are included in the cache key (#70).

The major version tag `v1` has been updated to point at this release.
