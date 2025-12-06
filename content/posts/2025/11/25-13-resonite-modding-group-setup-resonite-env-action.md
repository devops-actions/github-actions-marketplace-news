---
title: Setup Resonite Build Environment
date: 2025-11-25 13:04:40 +00:00
tags:
  - resonite-modding-group
  - GitHub Actions
draft: false
repo: https://github.com/resonite-modding-group/setup-resonite-env-action
marketplace: https://github.com/marketplace/actions/setup-resonite-build-environment
version: v0.2.0
dependentsNumber: "10"
---


Version updated for **https://github.com/resonite-modding-group/setup-resonite-env-action** to version **v0.2.0**.
- This action is used across all versions by **10** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-resonite-build-environment) to find the latest changes.

## Release notes

## New Features
* Now supports protected beta branches with passwords
  - Select a branch with `branch` and provide a password via a secret using `branch-password`
* New output for the used `resonite-path` where Resonite was installed to
  - This will pass through your input if one was provided, otherwise will provide the default install path

## Tweaks
* Update to setup .Net 10
* Updated actions/checkout to 6
* Updated actions/setup-dotnet to 5
* Added workflow to update action tags on releases

**Full Changelog**: https://github.com/resonite-modding-group/setup-resonite-env-action/compare/v0.1.0...v0.2.0
