---
title: Setup Racket environment
date: 2025-04-26 08:59:03 +00:00
tags:
  - Bogdanp
  - GitHub Actions
draft: false
repo: https://github.com/Bogdanp/setup-racket
marketplace: https://github.com/marketplace/actions/setup-racket-environment
version: v1.13
dependentsNumber: "1,153"
---


Version updated for **https://github.com/Bogdanp/setup-racket** to version **v1.13**.
- This action is used across all versions by **1,153** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-racket-environment) to find the latest changes.

## Release notes

# Added

* Support for more arm configurations. See the "ARM Builds" section of the README for details. (#81, #80, #9)

# Changed

* The `architecture` flag no longer defaults to `x64`. Instead it defaults to the process arch. This may have an impact on macOS builds if you were using ARM runners and weren't specifying the arch.
