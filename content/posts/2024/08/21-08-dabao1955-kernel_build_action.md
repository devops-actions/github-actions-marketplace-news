---
title: Android Kernel Build Action
date: 2024-08-21 08:47:04 +00:00
tags:
  - dabao1955
  - GitHub Actions
draft: false
repo: dabao1955/kernel_build_action
marketplace: https://github.com/marketplace/actions/android-kernel-build-action
version: v1.6.3
dependentsNumber: "38"
---


Version updated for **dabao1955/kernel_build_action** to version **v1.6.3**.
- This action is used across all versions by **38** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/android-kernel-build-action) to find the latest changes.

## Release notes

## Changes
* Fix build error with ksu: true
* Fix ndk download
* Fix CROSS_COMPILE_ARM32 not set
* Fix lxc nethunter download error
* Use mkdtboimg py3 version instead of python-27 inputs
* Not force switch ksu version to v0.9.5
* Support patch fs/namespaces in ksu patch for non-gki device

## About use 3rd gcc
The technical difficulty is too great, and I won't consider adding an implementation for the time being.

**Full Changelog**: https://github.com/dabao1955/kernel_build_action/compare/v1.6.2...v1.6.3
