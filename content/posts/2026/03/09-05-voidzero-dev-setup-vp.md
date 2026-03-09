---
title: Setup vp
date: 2026-03-09 05:56:30 +00:00
tags:
  - voidzero-dev
  - GitHub Actions
draft: false
repo: https://github.com/voidzero-dev/setup-vp
marketplace: https://github.com/marketplace/actions/setup-vp
version: v1
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/voidzero-dev/setup-vp** to version **v1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-vp) to find the latest changes.

## Action Summary

The `setup-vp` GitHub Action automates the installation and setup of Vite+ (`vp`), a toolchain for modern web development, with support for dependency caching and Node.js version management. It simplifies tasks such as installing Vite+, managing Node.js environments, caching dependencies based on lock files, and optionally running installation commands. This action is designed to enhance CI workflows by improving efficiency and compatibility with major package managers like npm, pnpm, and yarn.

## Release notes

## Setup Vite+ (`vp`) GitHub Action — v1.0.0

  The first stable release of the official GitHub Action for setting up
  [Vite+](https://viteplus.dev) in CI workflows.

  ### Features

  - **Install Vite+ globally** via official install scripts (Linux, macOS, Windows)
  - **Node.js version management** — set up any Node.js version via `vp env use`
  - **Dependency caching** — auto-detects lock files (`pnpm-lock.yaml`, `package-lock.json`,
  `yarn.lock`) and caches package manager stores
  - **Automatic `vp install`** — optionally run install after setup, with support for custom `cwd` and
  `args`
  - **Multi-project support** — run install in multiple directories via YAML array config

  ### Usage

  ```yaml
  steps:
    - uses: actions/checkout@v6
    - uses: voidzero-dev/setup-vp@v1
      with:
        node-version: "22"
        cache: true
  ```

  Links

  - https://github.com/voidzero-dev/setup-vp#readme
  - https://github.com/voidzero-dev/setup-vp/issues
