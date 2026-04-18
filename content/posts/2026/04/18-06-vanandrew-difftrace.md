---
title: difftrace
date: 2026-04-18 06:26:56 +00:00
tags:
  - vanandrew
  - GitHub Actions
draft: false
repo: https://github.com/vanandrew/difftrace
marketplace: https://github.com/marketplace/actions/difftrace
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vanandrew/difftrace** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/difftrace) to find the latest changes.

## Action Summary

The `difftrace` GitHub Action automates change detection in `uv` monorepos by identifying which packages are affected by a change, either directly or through transitive dependencies, using a workspace dependency graph and `git diff` output. This enables CI pipelines to selectively build, test, lint, and deploy only impacted packages, improving efficiency in large monorepos. Key capabilities include zero runtime dependencies, automatic base reference detection, and seamless integration into GitHub workflows for optimized pipeline execution.

## What's Changed

## What's Changed
* feat: support multiple uv.lock files per repo by @vanandrew in https://github.com/vanandrew/difftrace/pull/8


**Full Changelog**: https://github.com/vanandrew/difftrace/compare/v1.1.0...v1.2.0
