---
title: Setup Cpp (C++ / C)
date: 2024-10-03 02:21:27 +00:00
tags:
  - aminya
  - GitHub Actions
draft: false
repo: aminya/setup-cpp
marketplace: https://github.com/marketplace/actions/setup-cpp-c-c
version: v0.44.0
dependentsNumber: "1"
---


Version updated for **aminya/setup-cpp** to version **v0.44.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-cpp-c-c) to find the latest changes.

## Release notes

## What's Changed

* feat: use semver for matching binary assets by @aminya in https://github.com/aminya/setup-cpp/pull/306
* feat: support runtime, thread, and exception model on MinGW windows by @aminya in https://github.com/aminya/setup-cpp/pull/306
* fix!: update Conan to v2 by @aminya in https://github.com/aminya/setup-cpp/pull/308
	**BREAKING** Now the default Conan version is v2 instead of v1. This is done to support new compiler versions like LLVM 18. If using project_options, please update to the latest version for Conan v2 cmake support. 
* fix: update cmake, gcovr, conan, meson, task, doxygen by @aminya in https://github.com/aminya/setup-cpp/pull/306
	**BREAKING** gcovr updated from v5 to v7. 


**Full Changelog**: https://github.com/aminya/setup-cpp/compare/v0.43.0...v0.44.0
