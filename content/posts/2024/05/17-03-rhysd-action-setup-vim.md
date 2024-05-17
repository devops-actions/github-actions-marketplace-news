---
title: Setup Vim
date: 2024-05-17 03:33:31 +00:00
tags:
  - rhysd
  - GitHub Actions
draft: false
repo: rhysd/action-setup-vim
marketplace: https://github.com/marketplace/actions/setup-vim
version: v1.3.4
dependentsNumber: "1,490"
---


Version updated for **rhysd/action-setup-vim** to version **v1.3.4**.
- This action is used across all versions by **1,490** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-vim) to find the latest changes.

## Release notes

- Support [Neovim v0.10](https://github.com/neovim/neovim/releases/tag/v0.10.0) new asset file names for macOS. (#30)
  - Until v0.9.5, Neovim provided a single universal executable. From v0.10.0, Neovim now provides separate two executables for arm64 and x86_64. action-setup-vim downloads a proper asset file looking at the current architecture.
