---
title: Build with Gradle
date: 2025-06-12 01:12:13 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: https://github.com/gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v4.4.1
dependentsNumber: "38,306"
---


Version updated for **https://github.com/gradle/actions** to version **v4.4.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **38,306** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This patch release fixes a bug in Develocity Injection with a custom plugin repository.
The `gradle-plugin-repository-*` action parameters were not being correctly mapped to environment variables that are read by the Develocity Injection init script.

This issue has been fixed by setting the correct environment variables:
- `gradle-plugin-repository-url` is mapped to `DEVELOCITY_INJECTION_PLUGIN_REPOSITORY_URL`
- `gradle-plugin-repository-username` is mapped to `DEVELOCITY_INJECTION_PLUGIN_REPOSITORY_USERNAME`
- `gradle-plugin-repository-password` is mapped to `DEVELOCITY_INJECTION_PLUGIN_REPOSITORY_PASSWORD`

Additionally, these parameters can now be used to configure a custom plugin repository for the GitHub Dependency Graph Gradle Plugin, required for dependency submission.

## What's Changed
* Dependency updates by @bigdaz in https://github.com/gradle/actions/pull/667
* Fix plugin repository env vars by @bigdaz in https://github.com/gradle/actions/pull/669

**Full Changelog**: https://github.com/gradle/actions/compare/v4.4.0...v4.4.1
