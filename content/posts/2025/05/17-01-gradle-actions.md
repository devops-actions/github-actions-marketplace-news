---
title: Build with Gradle
date: 2025-05-17 01:11:47 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: https://github.com/gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v4.4.0
dependentsNumber: "35,798"
---


Version updated for **https://github.com/gradle/actions** to version **v4.4.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **35,798** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Release notes

This release updates 2 downstream components:
* Develocity injection has been updated to [v2.0](https://github.com/gradle/develocity-ci-injection/releases/tag/v2.0)
  * Some environment variables related to Develocity injection have been renamed. All vars now being with `DEVELOCITY_INJECTION_`. Check [the docs](https://github.com/gradle/actions/blob/main/docs/setup-gradle.md#configuring-develocity-injection) for more details.
* Dependency-graph plugin has been updated to [v1.4.0](https://github.com/gradle/github-dependency-graph-gradle-plugin/releases/tag/v1.4.0)
  * The 'detector' values included in the generated graph can now be configured via environment variables.

## What's Changed
* Update develocity-injection init script to v1.3 by @bot-githubaction in https://github.com/gradle/actions/pull/592
* Update develocity-injection init script to v2.0 by @bot-githubaction in https://github.com/gradle/actions/pull/593
* [StepSecurity] ci: Harden GitHub Actions by @step-security-bot in https://github.com/gradle/actions/pull/597
* Use v1.4.0 of dependency graph plugin by @bigdaz in https://github.com/gradle/actions/pull/638

## New Contributors
* @step-security-bot made their first contribution in https://github.com/gradle/actions/pull/597

**Full Changelog**: https://github.com/gradle/actions/compare/v4.3.1...v4.4.0
