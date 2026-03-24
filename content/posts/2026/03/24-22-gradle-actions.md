---
title: Build with Gradle
date: 2026-03-24 22:05:09 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: https://github.com/gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v6.0.1
dependentsNumber: "46,579"
actionType: Composite
---


Version updated for **https://github.com/gradle/actions** to version **v6.0.1**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **46,579** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Action Summary

This GitHub Action suite facilitates automation for Gradle-based projects, offering three primary functionalities: configuring Gradle for optimal execution (`setup-gradle`), generating and submitting dependency graphs for vulnerability tracking (`dependency-submission`), and validating Gradle Wrapper JAR checksums (`wrapper-validation`). It streamlines build processes, enhances dependency management, and ensures security compliance for Gradle projects hosted on GitHub.

## Release notes

> [!IMPORTANT]
> The release of `gradle/actions@v6` contains important changes to the license terms. More details in [this blog post](https://blog.gradle.org/github-actions-for-gradle-v6).
> **TL;DR**: By upgrading to v6, you accept the [Terms of Use](https://gradle.com/legal/terms-of-use/) for the `gradle-actions-caching` component.

## Summary

The [license changes in v6](https://blog.gradle.org/github-actions-for-gradle-v6) introduced a `gradle-actions-caching` license notice that is printed in logs and in each job summary.

With this release, the license notice will be muted if build-scan terms have been accepted, or if a Develocity access key is provided.

## What's Changed
* Bump actions used in docs by @Goooler in https://github.com/gradle/actions/pull/792
* Add typing information for use by typesafegithub by @bigdaz in https://github.com/gradle/actions/pull/910
* Mute license warning when terms are accepted by @bigdaz in https://github.com/gradle/actions/pull/911
* Mention explicit license acceptance in notice by @bigdaz in https://github.com/gradle/actions/pull/912
* Bump com.fasterxml.jackson.dataformat:jackson-dataformat-smile from 2.21.1 to 2.21.2 in /sources/test/init-scripts in the gradle group across 1 directory by @dependabot[bot] in https://github.com/gradle/actions/pull/907


**Full Changelog**: https://github.com/gradle/actions/compare/v6.0.0...v6.0.1
