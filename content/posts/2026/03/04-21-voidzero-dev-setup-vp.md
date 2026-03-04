---
title: Setup Vite+
date: 2026-03-04 21:26:52 +00:00
tags:
  - voidzero-dev
  - GitHub Actions
draft: false
repo: https://github.com/voidzero-dev/setup-vp
marketplace: https://github.com/marketplace/actions/setup-vite
version: v1
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/voidzero-dev/setup-vp** to version **v1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-vite) to find the latest changes.

## Action Summary

The `setup-vp` GitHub Action automates the setup of [Vite+](https://github.com/voidzero-dev/vite-plus) (a build tool) with support for dependency caching. It installs Vite+ globally, optionally configures a specific Node.js version, detects and caches project dependencies, and can automatically run dependency installation commands. This action simplifies and accelerates CI workflows by managing Vite+ setup and ensuring consistent environments across builds.

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
