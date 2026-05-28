---
title: Setup OCX
date: 2026-05-28 22:57:41 +00:00
tags:
  - ocx-sh
  - GitHub Actions
draft: false
repo: https://github.com/ocx-sh/setup-ocx
marketplace: https://github.com/marketplace/actions/setup-ocx
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/ocx-sh/setup-ocx** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ocx) to find the latest changes.

## Action Summary

The `setup-ocx` GitHub Action automates the installation and setup of the OCX package manager, enabling seamless management of project dependencies and tools defined in an `ocx.toml` file. It pre-installs OCX, restores cached object stores and tools, and adds the tools to the `PATH` for immediate use in workflows. This action simplifies dependency management, caching, and environment configuration, streamlining CI/CD processes for projects using OCX.

## What's Changed

## [1.1.0](https://github.com/ocx-sh/setup-ocx/releases/tag/v1.1.0) — 2026-05-28

### Added

- Activate project toolchain from ocx.toml and add cross-run cache (**BREAKING**) by @michael-herwig ([02c95b4](https://github.com/ocx-sh/setup-ocx/commit/02c95b48f85416c35298fae4e1bac4580d9dd15a))
- Bootstrap TypeScript / testing / resilience rules + Codecov coverage by @michael-herwig ([c40e0b0](https://github.com/ocx-sh/setup-ocx/commit/c40e0b08cf13576f1180680fff097b3721fe3cfd))
- Rename `toolchain` input/outputs to `project` to match OCX vocabulary (**BREAKING**) by @michael-herwig ([42b1d0c](https://github.com/ocx-sh/setup-ocx/commit/42b1d0ca2df7c4f08b8be4a5dad33a952f796cf8))

### Fixed

- **ci:** Re-resolve nodejs digest from remote and use `ocx version` subcommand by @michael-herwig ([aa2128c](https://github.com/ocx-sh/setup-ocx/commit/aa2128c6b8e7032855c8cd05097bf1652675a307))
- **cache:** Include @actions/tool-cache completion marker in binary cache by @michael-herwig ([5061b91](https://github.com/ocx-sh/setup-ocx/commit/5061b91e3dff3059b0dca067eb095f7771d4b391))

### Release

- V1.1.0 by @michael-herwig ([0a39e58](https://github.com/ocx-sh/setup-ocx/commit/0a39e58f272e7b4e2e46cfa89cdbad2a3578d2cc))
