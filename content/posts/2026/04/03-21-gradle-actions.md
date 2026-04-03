---
title: Build with Gradle
date: 2026-04-03 21:45:23 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: https://github.com/gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v6.1.0
dependentsNumber: "47,104"
actionType: Composite
---


Version updated for **https://github.com/gradle/actions** to version **v6.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **47,104** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Action Summary

This GitHub Action provides tools to streamline and automate Gradle project workflows. It offers actions for configuring Gradle builds (`setup-gradle`), generating and submitting dependency graphs for vulnerability analysis (`dependency-submission`), and validating Gradle Wrapper JAR files for security compliance (`wrapper-validation`). These actions simplify build management, enhance security, and optimize performance through features like enhanced caching and integration with GitHub's Dependency Submission API.

## What's Changed

## New: Basic Cache Provider

A new MIT-licensed **Basic Caching** provider is now available as an alternative to the proprietary **Enhanced Caching** provided by `gradle-actions-caching`. Choose Basic Caching by setting `cache-provider: basic` on `setup-gradle` or `dependency-submission` actions.

- Built on `@actions/cache` -- fully open source
- Caches `~/.gradle/caches` and `~/.gradle/wrapper` directories
- Cache key derived from build files (`*.gradle*`, `gradle-wrapper.properties`, etc.)
- Clean cache on build file changes (no restore keys, preventing stale entry accumulation)

**Limitations vs Enhanced Caching:** No cache cleanup, no deduplication of cached content, cached content is fixed unless build files change.

## Revamped Licensing & Distribution Documentation

- New **DISTRIBUTION.md** documents the licensing of each component (particularly Basic Caching vs Enhanced Caching)
- Simplified licensing notices in README, docs, and runtime log output
- Clear usage tiers: Enhanced Caching is free for public repos and in Free Preview for private repos

## What's Changed
* Use a unique cache entry for wrapper-validation test by @bigdaz in https://github.com/gradle/actions/pull/921
* Update Dependencies by @bigdaz in https://github.com/gradle/actions/pull/922
* Update dependencies and resolve npm vulnerabilities by @bigdaz in https://github.com/gradle/actions/pull/933
* Add open-source 'basic' cache provider and revamp licensing documentation by @bigdaz in https://github.com/gradle/actions/pull/930
* Restructure caching documentation for basic and enhanced providers by @bigdaz in https://github.com/gradle/actions/pull/934

**Full Changelog**: https://github.com/gradle/actions/compare/v6.0.1...v6.1.0
