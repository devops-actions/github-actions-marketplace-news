---
title: Build with Gradle
date: 2024-07-16 00:51:02 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v3.5.0
dependentsNumber: "11,188"
---


Version updated for **gradle/actions** to version **v3.5.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **11,188** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This release contains a major upgrade to `gradle-home-cache-cleanup` as well as improvements to dependency-submission.

## What's Changed
* Include Gradle 8.9 in known wrapper checksums (avoiding the need to download) (#266)
* Improvements to cache-cleanup
  * Provision latest Gradle version to use for cache-cleanup (#33, #271)
  * Avoid use of timestamp manipulation for cache-cleanup (#24, #272)
  * Cleanup artifact transforms cache in Gradle home (#47)
  * More logging from cache-cleanup operation (#169)
* Use latest dependency graph plugin (#269)
  * Avoid resolving configurations that are deprecated for resolving (https://github.com/gradle/github-dependency-graph-gradle-plugin/pull/129)
  * Avoid circular task dependency when build includes itself (https://github.com/gradle/github-dependency-graph-gradle-plugin/issues/141)
* Automatically upload dependency graph file on submission failure (#291)


**Full Changelog**: https://github.com/gradle/actions/compare/v3.4.2...v3.5.0
