---
title: Setup UniRTM
date: 2026-08-05 06:13:54 +00:00
tags:
  - snowdreamtech
  - GitHub Actions
draft: false
repo: https://github.com/snowdreamtech/setup-unirtm
marketplace: https://github.com/marketplace/actions/setup-unirtm
version: v0.7.0
dependentsNumber: "36"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action "setup-unirtm" automates the installation and configuration of UniRTM, a runtime and tool manager. It offers smart auto-detection, multiple install methods (npm, pip, GitHub Release, go), GitHub Proxy support, caching using Handlebars templates, and cross-platform support for Linux, macOS, and Windows. The action can be customized with specific versions, installation methods, and GitHub tokens to handle restricted networks or mirrors.
---


Version updated for **https://github.com/snowdreamtech/setup-unirtm** to version **v0.7.0**.

- This action is used across all versions by **36** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-unirtm) to find the latest changes.

## Action Summary

The GitHub Action "setup-unirtm" automates the installation and configuration of UniRTM, a runtime and tool manager. It offers smart auto-detection, multiple install methods (npm, pip, GitHub Release, go), GitHub Proxy support, caching using Handlebars templates, and cross-platform support for Linux, macOS, and Windows. The action can be customized with specific versions, installation methods, and GitHub tokens to handle restricted networks or mirrors.

## What's Changed

## [0.7.0](https://github.com/snowdreamtech/setup-unirtm/compare/v0.6.0...v0.7.0) (2026-08-05)


### Features

* inject shims into GITHUB_PATH dynamically ([7288285](https://github.com/snowdreamtech/setup-unirtm/commit/7288285ac17c2f52cf659bd599483c5ae2262963))


### Bug Fixes

* correct go install path and add rolldown optional binding ([80e4a6e](https://github.com/snowdreamtech/setup-unirtm/commit/80e4a6e5d5238b59c8165cd1f8bcddd434194807))
* remove fallback restore-keys for cache restoration ([f5b4f70](https://github.com/snowdreamtech/setup-unirtm/commit/f5b4f709b2b0de2d6afa56b02720387430110097))
