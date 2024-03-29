---
title: Setup Vim
date: 2024-03-29 19:26:40 +00:00
tags:
  - rhysd
  - GitHub Actions
draft: false
repo: rhysd/action-setup-vim
marketplace: https://github.com/marketplace/actions/setup-vim
version: v1.3.2
dependentsNumber: "1,402"
---


Version updated for **rhysd/action-setup-vim** to version **v1.3.2**.
- This action is used across all versions by **1,402** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-vim) to find the latest changes.

## Release notes

- Fix the nightly Neovim installation was broken due to https://github.com/neovim/neovim/pull/28000. (#30, thanks @linrongbin16)
  - Neovim now provides `neovim-macos-arm64.tar.gz` (for Apple Silicon) and `neovim-macos-x86_64.tar.gz` (for Intel Mac) separately rather than the single `neovim-macos.tar.gz`. This change will be applied to the next stable version.
- Update npm dependencies to the latest. This update includes some small security fixes.
- Fix an incorrect OS version was reported in debug message on Ubuntu.
