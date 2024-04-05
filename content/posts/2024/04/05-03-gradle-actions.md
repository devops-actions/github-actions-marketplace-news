---
title: Build with Gradle
date: 2024-04-05 03:02:11 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v3.2.0
dependentsNumber: "4,103"
---


Version updated for **gradle/actions** to version **v3.2.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,103** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

## Changelog

### General improvements

- [NEW] Support authentication for plugin repositories (#31)
- [FIX] Improve rendering of build results table with long values (#35)

### Improvements to Dependency Submission

- [FIX] Do not attempt to resolve dependency configurations that are excluded via env var (#107)

### Improvements to Develocity injection

- [NEW] Use `com.develocity.gradle` plugin version `3.17` by default
- [NEW] Can configure capture of file-fingerprint (#58)
- [FIX] Reduce log-level of messages emitted by Develocity injection (#60)

## Note

Release includes `v3.2.0` of `gradle/actions/setup-gradle` and `gradle/actions/dependency-submission`.
Available under the `v3` version tag.

The `gradle/actions/setup-gradle` action supersedes `gradle/gradle-build-action`.
The `gradle/gradle-build-action@v3.2.0` version will be released in parallel, and will delegate to this release of `gradle/actions/setup-gradle`.


**Full Changelog**: https://github.com/gradle/actions/compare/v3.1.0...v3.2.0
