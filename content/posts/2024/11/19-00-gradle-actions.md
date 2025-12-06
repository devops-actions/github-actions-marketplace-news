---
title: Build with Gradle
date: 2024-11-19 00:56:43 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v4.2.1
dependentsNumber: "20,753"
---


Version updated for **gradle/actions** to version **v4.2.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **20,753** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This patch release fixes some issues with Develocity and Build Scan integration:
- Build scan links not captured in project using plugin com.gradle.enteprise:3.18.2 (#449)
- Enabling `build-scan-publish` causes some Develocity injection parameters to be ignored (#447)
- Setting `develocity-ccud-plugin-version` parameter is ignored (#446)

## What's Changed
* Do not fail wrapper-validation on filename with illegal characters #438
* Bump references to Develocity Gradle plugin from 3.18.1 to 3.18.2 by @bot-githubaction in https://github.com/gradle/actions/pull/441
* Bump Gradle from 8.10.2 to 8.11 in https://github.com/gradle/actions/pull/443
* Develocity injection fixes in https://github.com/gradle/actions/pull/448
* Adapt build-result-capture script for GE plugin 3.17+ in https://github.com/gradle/actions/pull/450
* ci: add scorecard by @nitrocode in https://github.com/gradle/actions/pull/384

## New Contributors
* @nitrocode made their first contribution in https://github.com/gradle/actions/pull/384

**Full Changelog**: https://github.com/gradle/actions/compare/v4.2.0...v4.2.1
