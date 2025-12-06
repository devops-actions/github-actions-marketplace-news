---
title: Setup Cpp (C++ / C)
date: 2024-09-05 08:46:34 +00:00
tags:
  - aminya
  - GitHub Actions
draft: false
repo: aminya/setup-cpp
marketplace: https://github.com/marketplace/actions/setup-cpp-c-c
version: v0.40.0
dependentsNumber: "1"
---


Version updated for **aminya/setup-cpp** to version **v0.40.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-cpp-c-c) to find the latest changes.

## Release notes

## What's Changed
* 🎉 fix: use the default/latest GCC version on Linux/macOS by @aminya in https://github.com/aminya/setup-cpp/pull/277  
	
	- As of this version, the latest available GCC on the default Linux repositories are installed by default. That means, the GCC versions installable via the test toolchain PPA are not installed on Ubuntu/Debian (unless the version is requested explicitly). This increases the compatibility of the binaries built via setup-cpp for distribution. 
	- On other platforms, the latest GCC version is installed by default. 

* 🎉 feat: use GitHub API to match MinGW assets by @aminya in https://github.com/aminya/setup-cpp/pull/277 
	
	- Instead of manually maintaining the available releases, now the GitHub API is used to find the MinGW assets. This method will be used for LLVM in future releases.

* 🎉  feat: introduce setup-brew package by @aminya in https://github.com/aminya/setup-cpp/pull/266 

* feat!: support addAptKey options through installAptPack by @aminya in https://github.com/aminya/setup-cpp/pull/269
	- no default keys are added during apt installations anymore. Explicitly pass the keys needed.
	- the arguments to addAptKeyViaServer and addAptKeyViaDownload changed. addAptKeyViaDownload renamed to addAptKeyViaURL

* fix: reduce bundle size by patching actions/http-client undici import by @aminya in https://github.com/aminya/setup-cpp/pull/270
* fix: install nala via default repo or installer by @aminya in https://github.com/aminya/setup-cpp/pull/276
* build!: remove actions bundle in favour of modern bundle by @aminya in https://github.com/aminya/setup-cpp/pull/278
* build: add Modern ESModule target via Vite by @aminya in https://github.com/aminya/setup-cpp/pull/279
* build: build legacy target via Vite + migrate from Parcel by @aminya in https://github.com/aminya/setup-cpp/pull/280
* chore: update dependencies by @aminya in https://github.com/aminya/setup-cpp/pull/275


**Full Changelog**: https://github.com/aminya/setup-cpp/compare/v0.39.0...v0.40.0
