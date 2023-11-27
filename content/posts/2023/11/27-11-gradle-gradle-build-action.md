---
title: Gradle Build Action
date: 2023-11-27 11:14:41 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/gradle-build-action
marketplace: https://github.com/marketplace/actions/gradle-build-action
version: v2.10.0
dependentsNumber: "40,448"
---


Version updated for **gradle/gradle-build-action** to version **v2.10.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **40,448** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gradle-build-action) to find the latest changes.

## Release notes

This release introduces a new `artifact-retention-days` parameter, which allows a user to configure how long the generated dependency-graph artifacts are retained by GitHub Actions. Adjusting the retention period can be useful to reduce storage costs associated with these dependency-graph artifacts.

See [the documentation](https://github.com/gradle/gradle-build-action/tree/v2.10.0#reducing-storage-costs-for-saved-dependency-graph-artifacts) for more details.

### Changelog
- [NEW] Add `artifact-retention-days` configuration parameter #903 
- [FIX] Update to `v1.0.0` of the [github-dependency-graph-gradle-plugin](https://plugins.gradle.org/plugin/org.gradle.github-dependency-graph-gradle-plugin)
- [FIX] Update `@babel/traverse` to address [reported security vulnerability](https://github.com/gradle/gradle-build-action/security/dependabot/18)

**Full-changelog**: https://github.com/gradle/gradle-build-action/compare/v2.9.0...v2.10.0
