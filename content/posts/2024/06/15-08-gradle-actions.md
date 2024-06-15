---
title: Build with Gradle
date: 2024-06-15 08:45:52 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v3.4.1
dependentsNumber: "9,053"
---


Version updated for **gradle/actions** to version **v3.4.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **9,053** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This patch release fixes a bug introduced in v3.4.0, that prevents build scan publication to Develocity.
The bug results in the removal of the `DEVELOCITY_ACCESS_KEY` variable being removed, so that Gradle cannot authenticate with the Develocity server.

## What's Changed
* Don't clear access key when access token cannot be obtained by @cdsap in https://github.com/gradle/actions/pull/258
* Simplify requesting short-lived Develocity access tokens by @bigdaz in https://github.com/gradle/actions/pull/259


**Full Changelog**: https://github.com/gradle/actions/compare/v3.4.0...v3.4.1
