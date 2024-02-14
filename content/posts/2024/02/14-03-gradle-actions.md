---
title: Build with Gradle
date: 2024-02-14 03:29:00 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v3.1.0
dependentsNumber: "5"
---


Version updated for **gradle/actions** to version **v3.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This release provides more Gradle output when running with actions debug logging, and fixes some minor issues with `gradle/actions/dependency-submission`.

### Changelog

- [NEW] Support ACTIONS_STEP_DEBUG mode (#6)
- [NEW] Provide link to GitHub job in generated PR comment (#11)
- [NEW] Report source of dependency in dependency-graph via debug logging (#44)
- [FIX] Unknown command-line option '--dependency-verification' with Gradle 5.6 (#15)
- [FIX] Dependency submission action should handle non-executable gradlew script (#17)
- [FIX] Dependency submission fails when project isolation is enabled (#39)
- [FIX] Incomplete dependency-graph is submitted on build failure (#43)

**Full changelog**: https://github.com/gradle/actions/compare/v3.0.0...v3.1.0

### Note

Release includes `v3.1.0` of `gradle/actions/setup-gradle` and `gradle/actions/dependency-submission`.
Available under the `v3` version tag.

The `gradle/actions/setup-gradle` action supersedes `gradle/gradle-build-action`.
The `gradle/gradle-build-action@v3.1.0` version will be released in parallel, and will delegate to this release of `gradle/actions/setup-gradle`.

