---
title: Build with Gradle
date: 2024-04-13 03:30:54 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v3.3.0
dependentsNumber: "4,609"
---


Version updated for **gradle/actions** to version **v3.3.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **4,609** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This release includes a new action, and improvements to the existing actions.

Highlights include:
- New [wrapper-validation](https://github.com/gradle/actions/tree/main/wrapper-validation) action to replace the [gradle/wrapper-validation-action](https://github.com/gradle/wrapper-validation-action) action
- Converted [dependency-submission](https://github.com/gradle/actions/tree/main/dependency-submission) action to Typescript. This enabled other important features, like submitting the dependency graph in the same step that it is generated.
- Better caching support for Gradle 8.6+ in [setup-gradle](https://github.com/gradle/actions/tree/main/setup-gradle)

> [!IMPORTANT]
> The caching protocol version has changed in this release, so cache entries written with previous versions of the action will not be reused. This means that jobs will effectively start with an empty cache after switching to this release.

## Changelog

### NEW action `gradle/actions/wrapper-validation`
- [NEW] Add replacement for `wrapper-validation-action` (#160)

### Improvements to `gradle/actions/setup-gradle`
- [NEW] Cache paths have been updated for Gradle 8.6+ (#45, #163)
- [NEW] `setup-gradle` action can now perform wrapper-validation automatically (#161, #162)
- [FIX] Make cache-keys more consistent (#131).
- [FIX] Avoid listing old build results in Job Summary on self-hosted runner (#127)
- [FIX] Deprecation warnings are emitted when using deprecated inputs (#108)
- [FIX] Generate correct `toolchains.xml` file on ARM runners (#89)

### Improvements to `gradle/actions/depenency-submission`

- [NEW] Action is now implemented directly in TypeScript, and does not delegate to `setup-gradle` (#116)
- [NEW] Allow dependency resolution task name to be specified (#125)
- [NEW] Dependency-graph is submitted immediately with `dependency-submission` action (#123)
- [FIX] `setup-gradle` and `dependency-submission` can be used in the same Job (#36)

**Full Changelog**: https://github.com/gradle/actions/compare/v3.2.1...v3.3.0

## Actions Summary

Release includes `v3.3.0` of the following, available under the `v3` version tag:
- [gradle/actions/setup-gradle](https://github.com/gradle/actions/tree/main/setup-gradle)
- [gradle/actions/dependency-submission](https://github.com/gradle/actions/tree/main/dependency-submission)
- [gradle/actions/wrapper-validation](https://github.com/gradle/actions/tree/main/wrapper-validation)

> [!NOTE]
> The `gradle/actions/setup-gradle` action supersedes `gradle/gradle-build-action`.
> The `gradle/actions/wrapper-validation` action supersedes `gradle/wrapper-validation-action`.

