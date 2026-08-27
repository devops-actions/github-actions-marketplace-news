---
title: Setup Ndless
date: 2026-08-27 17:16:34 +00:00
tags:
  - Ziyang-Bai
  - GitHub Actions
draft: false
repo: https://github.com/Ziyang-Bai/setup-ndless
marketplace: https://github.com/marketplace/actions/setup-ndless
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The setup-ndless GitHub Action automates the setup of the Ndless SDK and ARM toolchain on Ubuntu/Linux runners, providing a consistent environment for building projects targeting Nintendo DS consoles. It installs necessary dependencies, caches the installation for reuse across builds, and exports critical environment variables for later steps in the pipeline. The action supports parallel builds and can handle different versions of Ndless through commit references or tags.
---


Version updated for **https://github.com/Ziyang-Bai/setup-ndless** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ndless) to find the latest changes.

## Action Summary

The setup-ndless GitHub Action automates the setup of the Ndless SDK and ARM toolchain on Ubuntu/Linux runners, providing a consistent environment for building projects targeting Nintendo DS consoles. It installs necessary dependencies, caches the installation for reuse across builds, and exports critical environment variables for later steps in the pipeline. The action supports parallel builds and can handle different versions of Ndless through commit references or tags.

## What's Changed

nitial public release of setup-ndless.

setup-ndless is a composite GitHub Action for installing, caching, and
activating the Ndless SDK and ARM toolchain on Linux runners.
