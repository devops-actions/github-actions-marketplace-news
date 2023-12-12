---
title: Gradle Build Action
date: 2023-12-12 19:15:17 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/gradle-build-action
marketplace: https://github.com/marketplace/actions/gradle-build-action
version: v2.11.0
dependentsNumber: "41,705"
---


Version updated for **gradle/gradle-build-action** to version **v2.11.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **41,705** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gradle-build-action) to find the latest changes.

## Release notes

In addition to a number of dependency updates, this release:

- Allows a custom Plugin Repository to be specified when resolving the [github-dependency-graph-gradle-plugin](https://plugins.gradle.org/plugin/org.gradle.github-dependency-graph-gradle-plugin). See [the documentation](https://github.com/gradle/gradle-build-action#using-a-custom-plugin-repository) for details.
- Brings increased resilience when failures occur collecting build results or cleaning the Gradle User Home. Such failures should no longer prevent the caching of Gradle User Home or lead to build failures.

### Changelog
- [NEW] Allow a custom plugin repository to be used to resolve dependency-graph plugin #933 
- [FIX] Cache entries and Job Summary not written on cache-cleanup failure #990 #858 
- [FIX] Failure to write build results file should not cause overall build to fail #866

**Full-changelog**: https://github.com/gradle/gradle-build-action/compare/v2.10.0...v2.11.0

