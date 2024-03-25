---
title: Setup Lando
date: 2024-03-25 19:05:17 +00:00
tags:
  - lando
  - GitHub Actions
draft: false
repo: lando/setup-lando
marketplace: https://github.com/marketplace/actions/setup-lando
version: v3.0.0
dependentsNumber: "42"
---


Version updated for **lando/setup-lando** to version **v3.0.0**.
- This action is used across all versions by **42** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-lando) to find the latest changes.

## Release notes


### **BREAKING CHANGES**

This repo should now be the single source of truth for all things relating to the installation and setup of Lando. This currently includes:

* GitHub Actions action
* POSIX setup scripts
* Install docs

But could also include other things in the future like:

* Windows/WSL2 setup scripts
* Homebrew formula
* Chocolatey packages
* Installer packages
* CI Apps

### GitHub Actions

* Deprecated `setup` in favor of `auto-setup`
* Fixed `auto-setup` so it _does not_ run on Lando 4_
* Fixed `edge` releases to also include `stable` releases from release list
* Removed `dependency-check` in favor of mechanisms provided by `lando setup`

### New Features

* Introduced `setup-lando.sh` POSIX setup script at `https://get.lando.dev/setup-lando.sh`
* Reorganized docs to reflect broadened repo scope
