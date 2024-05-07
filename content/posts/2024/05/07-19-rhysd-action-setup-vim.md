---
title: Setup Vim
date: 2024-05-07 19:03:05 +00:00
tags:
  - rhysd
  - GitHub Actions
draft: false
repo: rhysd/action-setup-vim
marketplace: https://github.com/marketplace/actions/setup-vim
version: v1.3.3
dependentsNumber: "1,472"
---


Version updated for **rhysd/action-setup-vim** to version **v1.3.3**.
- This action is used across all versions by **1,472** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-vim) to find the latest changes.

## Release notes

- Remove the support for Ubuntu 18.04, which was removed from GitHub-hosted runners more than one year ago.
- Improve adding `bin` directory to the `$PATH` environment variable by using `core.addPath` rather than modifying the environment variable directly. (#33, thanks @ObserverOfTime)
- Update dependencies including some security patches.
