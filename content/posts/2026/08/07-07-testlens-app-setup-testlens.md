---
title: Set up TestLens
date: 2026-08-07 07:18:08 +00:00
tags:
  - testlens-app
  - GitHub Actions
draft: false
repo: https://github.com/testlens-app/setup-testlens
marketplace: https://github.com/marketplace/actions/set-up-testlens
version: v1.9.4
dependentsNumber: "39"
actionType: Composite
actionSummary: |
  The GitHub Action `setup-testlens` connects Maven or Gradle builds to TestLens for code coverage analysis. It automates the process of instrumenting test tasks with TestLens, providing a type-safe way to integrate TestLens into workflows using Kotlin DSL. The action requires the TestLens GitHub App installation on the repository and supports both Gradle and Maven projects.
---


Version updated for **https://github.com/testlens-app/setup-testlens** to version **v1.9.4**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **39** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-testlens) to find the latest changes.

## Action Summary

The GitHub Action `setup-testlens` connects Maven or Gradle builds to TestLens for code coverage analysis. It automates the process of instrumenting test tasks with TestLens, providing a type-safe way to integrate TestLens into workflows using Kotlin DSL. The action requires the TestLens GitHub App installation on the repository and supports both Gradle and Maven projects.

## What's Changed

## What's Changed

* feat: capture env vars as properties file during action run by @marcphilipp in https://github.com/testlens-app/setup-testlens/pull/83
* feat: print detection result to ease onboarding by @marcphilipp in https://github.com/testlens-app/setup-testlens/pull/85
* feat: add `working-directory` option for non-root checkouts by @marcphilipp in https://github.com/testlens-app/setup-testlens/pull/86
* fix: handle empty environment variables
* fix: retry connecting to server after initial transient failures


**Full Changelog**: https://github.com/testlens-app/setup-testlens/compare/v1.9.3...v1.9.4
