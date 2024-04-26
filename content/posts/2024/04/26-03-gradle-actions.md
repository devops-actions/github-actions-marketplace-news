---
title: Build with Gradle
date: 2024-04-26 03:06:37 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v3.3.2
dependentsNumber: "5,565"
---


Version updated for **gradle/actions** to version **v3.3.2**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **5,565** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This patch release fixes a bug in both `dependency-submission` and `setup-gradle` (#196 introduced in v3.3.1), which resulted in
"No dependency-graph files found to submit" when using  the `download-and-submit` function.
A number of other minor issues have also been addressed:

## What's Changed
* [dependency-submission] Fix bug finding dependency-graph files with 'download-and-submit' (#199)
* [dependency-submission] Use Gradle logger instead of println in dependency graph init script (#191 from @aleksandrserbin)
* [dependency-submission] Retain and log full stacktrace for dependency submission errors (#192)
* [setup-gradle] Improve build scan badge readability with long task names (#200 from @gabrielfeo)

**Full Changelog**: https://github.com/gradle/actions/compare/v3.3.1...v3.3.2
