---
title: Build with Gradle
date: 2024-09-13 08:46:15 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v4.1.0
dependentsNumber: "15,589"
---


Version updated for **gradle/actions** to version **v4.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **15,589** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This release brings some minor improvements:
* The latest release of Gradle is no longer required to perform cache-cleanup. If Gradle is found to on the PATH and the version meets minimum version requirements, then the version on PATH is used for cache-cleanup and Gradle is not downloaded.
* Fixes a bug where setting the `develocity-token-expiry` parameter had no effect (#381)
* Numerous NPM dependency updates

**Full Changelog**: https://github.com/gradle/actions/compare/v4.0.1...v4.1.0
