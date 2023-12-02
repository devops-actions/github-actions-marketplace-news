---
title: Install Vulkan SDK
date: 2023-12-02 11:13:38 +00:00
tags:
  - humbletim
  - GitHub Actions
draft: false
repo: humbletim/install-vulkan-sdk
marketplace: https://github.com/marketplace/actions/install-vulkan-sdk
version: v1.1.1
dependentsNumber: "135"
---


Version updated for **humbletim/install-vulkan-sdk** to version **v1.1.1**.
- This action is used across all versions by **135** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-vulkan-sdk) to find the latest changes.

## Release notes

* Fix installation of older macOS SDKs.
  * Thanks again goes to @sbrkopac for the feedback.
* Fix bug with cache setting (where it worked correctly in terms of builds, but was attempting to generate the cache even when set false).
* Added support for exhaustively testing old SDK installers as part of this action's CI workflow_dispatch.
* `version: latest` is now the default (so that the Use button in marketplace provides a copy/paste .yml snippet that works as-is)

**Full Changelog**: https://github.com/humbletim/install-vulkan-sdk/compare/v1.1...v1.1.1

