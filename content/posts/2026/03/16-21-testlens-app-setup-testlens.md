---
title: Setup TestLens
date: 2026-03-16 21:40:45 +00:00
tags:
  - testlens-app
  - GitHub Actions
draft: false
repo: https://github.com/testlens-app/setup-testlens
marketplace: https://github.com/marketplace/actions/setup-testlens
version: v1.8.0
dependentsNumber: "16"
actionType: Composite
---


Version updated for **https://github.com/testlens-app/setup-testlens** to version **v1.8.0**.
- This action is used across all versions by **16** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-testlens) to find the latest changes.

## Action Summary

The `setup-testlens` GitHub Action integrates Maven or Gradle builds with TestLens, a tool designed to instrument test tasks for enhanced analysis and insights. It automates the configuration process by modifying build files (e.g., Gradle init scripts or Maven POM profiles) to enable seamless instrumentation of test executions. This streamlines workflows for developers by providing an efficient way to connect their projects to TestLens for improved test visibility and debugging.

## Release notes

## What's Changed

* feat: add action typing by @Vampire in https://github.com/testlens-app/setup-testlens/pull/46
* feat: add debug logging support for Maven builds by @marcphilipp in https://github.com/testlens-app/setup-testlens/pull/47
* feat: use version 1.8.0 of junit-platform-instrumentation by @marcphilipp in https://github.com/testlens-app/setup-testlens/pull/49
* feat: reduce transitive dependencies for Maven projects to avoid influencing test framework detection
* feat: update grpc-netty to avoid unsafe memory access warnings

## New Contributors
* @Vampire made their first contribution in https://github.com/testlens-app/setup-testlens/pull/46

**Full Changelog**: https://github.com/testlens-app/setup-testlens/compare/v1.7.1...v1.8.0
