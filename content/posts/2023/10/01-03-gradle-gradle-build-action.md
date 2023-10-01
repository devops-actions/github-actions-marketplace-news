---
title: Gradle Build Action
date: 2023-10-01 03:14:45 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/gradle-build-action
marketplace: https://github.com/marketplace/actions/gradle-build-action
version: v2.9.0
dependentsNumber: "36,143"
---


Version updated for **gradle/gradle-build-action** to version **v2.9.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **36,143** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gradle-build-action) to find the latest changes.

## Release notes

The GitHub [dependency-review-action](https://github.com/actions/dependency-review-action) helps you 
understand dependency changes (and the security impact of these changes) for a pull request.
This release updates the GItHub Dependency Graph support to be compatible with the `dependency-review-action`.

See [the documentation](https://github.com/gradle/gradle-build-action#integrating-the-dependency-review-action) for detailed examples.

### Changelog
- [FIX] Use correct SHA for `pull-request` events #882 
- [FIX] Avoid generating dependency graph during cache cleanup #905 
- [NEW] Improve warning on failure to submit dependency graph 
- [NEW] Compatibility with GitHub `dependency-review-action` #879 

**Full-changelog**: https://github.com/gradle/gradle-build-action/compare/v2.8.1...v2.9.0
