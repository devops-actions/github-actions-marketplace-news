---
title: Maximize build disk space
date: 2023-11-28 19:11:49 +00:00
tags:
  - easimon
  - GitHub Actions
draft: false
repo: easimon/maximize-build-space
marketplace: https://github.com/marketplace/actions/maximize-build-disk-space
version: v9
dependentsNumber: "1,953"
---


Version updated for **easimon/maximize-build-space** to version **v9**.
- This action is used across all versions by **1,953** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maximize-build-disk-space) to find the latest changes.

## Release notes

This release adds support for mounting the build volume over a *parent* folder of `$GITHUB_WORKSPACE`.

Previously, doing so would remove/shadow the current working directory, and make any later actions/steps fail.

New features:

- Warn about $BUILD_MOUNT_PATH not being empty and list contents in that case
- Recreate `$GITHUB_WORKSPACE` afterwards if missing, so following actions have a working directory to start from.
