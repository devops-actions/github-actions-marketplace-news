---
title: Setup GCC Toolchain
date: 2026-06-30 15:13:55 +00:00
tags:
  - jmacheta
  - GitHub Actions
draft: false
repo: https://github.com/jmacheta/setup-gcc-toolchain
marketplace: https://github.com/marketplace/actions/setup-gcc-toolchain
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jmacheta/setup-gcc-toolchain** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-gcc-toolchain) to find the latest changes.

## What's Changed

## Added
New toolchain: x86_64-w64-mingw32-gcc — MinGW-w64 cross GCC (UCRT runtime), vendor xpack, available on Linux x64 and Linux ARM64 runners. Lets you cross-compile for Windows from a Linux host. 14 versions available (11.3.0-1 → 15.2.0-2).

## Fixed
Corrected the support matrix in the README: arm-none-linux-gnueabihf and aarch64-none-linux-gnu were already available on Windows x64 runners but weren't marked as such.
