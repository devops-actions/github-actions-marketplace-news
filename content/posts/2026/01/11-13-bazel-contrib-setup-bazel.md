---
title: Setup Bazel environment
date: 2026-01-11 13:20:47 +00:00
tags:
  - bazel-contrib
  - GitHub Actions
draft: false
repo: https://github.com/bazel-contrib/setup-bazel
marketplace: https://github.com/marketplace/actions/setup-bazel-environment
version: 0.17.0
dependentsNumber: "770"
---


Version updated for **https://github.com/bazel-contrib/setup-bazel** to version **0.17.0**.
- This action is used across all versions by **770** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-bazel-environment) to find the latest changes.

## Action Summary

This GitHub Action, `setup-bazel`, configures Bazel and Bazelisk across all operating systems and optimizes build workflows with advanced caching mechanisms. It automates the setup of Bazel versions, caching of dependencies and build outputs, and custom configurations to improve performance and simplify environment setup. The action is particularly useful for streamlining CI/CD pipelines by reducing redundant downloads and build times.

## Release notes

## What's Changed
* fix: Improve error handling in restoreCache (fixes #120) by @vorburger in https://github.com/bazel-contrib/setup-bazel/pull/122
* chore(deps): update dependency @actions/core to v2.0.2 by @renovate[bot] in https://github.com/bazel-contrib/setup-bazel/pull/124
* chore(deps): update dependency @actions/cache to v5.0.2 - autoclosed by @renovate[bot] in https://github.com/bazel-contrib/setup-bazel/pull/123
* docs: Add missing initial "npm install" to Development on README by @vorburger in https://github.com/bazel-contrib/setup-bazel/pull/126
* Catch & show error by @vorburger in https://github.com/bazel-contrib/setup-bazel/pull/127
* fix(deps): update dependency @actions/tool-cache to v3 by @renovate[bot] in https://github.com/bazel-contrib/setup-bazel/pull/130
* fix(deps): update dependency @actions/github to v7 by @renovate[bot] in https://github.com/bazel-contrib/setup-bazel/pull/129
* Fix bazel version not working with disk cache by @limdor in https://github.com/bazel-contrib/setup-bazel/pull/119

## New Contributors
* @vorburger made their first contribution in https://github.com/bazel-contrib/setup-bazel/pull/122
* @limdor made their first contribution in https://github.com/bazel-contrib/setup-bazel/pull/119

**Full Changelog**: https://github.com/bazel-contrib/setup-bazel/compare/0.16.0...0.17.0
