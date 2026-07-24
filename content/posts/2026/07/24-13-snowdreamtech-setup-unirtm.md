---
title: Setup UniRTM
date: 2026-07-24 13:51:18 +00:00
tags:
  - snowdreamtech
  - GitHub Actions
draft: false
repo: https://github.com/snowdreamtech/setup-unirtm
marketplace: https://github.com/marketplace/actions/setup-unirtm
version: v0.6.0
dependentsNumber: "36"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action setup-unirtm automates the installation and configuration of UniRTM, a runtime and tools manager. It intelligently detects the best install method based on available runtimes and supports multiple methods such as npm, pip, GitHub Releases, and go installs. The action also offers features like caching using Handlebars templates and supports GitHub proxy configurations for restricted networks.
---


Version updated for **https://github.com/snowdreamtech/setup-unirtm** to version **v0.6.0**.

- This action is used across all versions by **36** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-unirtm) to find the latest changes.

## Action Summary

The GitHub Action setup-unirtm automates the installation and configuration of UniRTM, a runtime and tools manager. It intelligently detects the best install method based on available runtimes and supports multiple methods such as npm, pip, GitHub Releases, and go installs. The action also offers features like caching using Handlebars templates and supports GitHub proxy configurations for restricted networks.

## What's Changed

## [0.6.0](https://github.com/snowdreamtech/setup-unirtm/compare/v0.5.0...v0.6.0) (2026-07-24)


### Features

* add support for concurrent blob downloads in artifact caching ([9b9d1bb](https://github.com/snowdreamtech/setup-unirtm/commit/9b9d1bb9323907dcc47782922d82f03471ab152a))


### Bug Fixes

* correct pip package name and remove legacy Harden Runner ([190f867](https://github.com/snowdreamtech/setup-unirtm/commit/190f867ac9f43edf7c7ebe2ea27926d3cab76871))
