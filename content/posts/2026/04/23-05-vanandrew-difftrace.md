---
title: difftrace
date: 2026-04-23 05:54:00 +00:00
tags:
  - vanandrew
  - GitHub Actions
draft: false
repo: https://github.com/vanandrew/difftrace
marketplace: https://github.com/marketplace/actions/difftrace
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vanandrew/difftrace** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/difftrace) to find the latest changes.

## Action Summary

The `difftrace` GitHub Action is designed to optimize CI pipelines for monorepos by identifying which packages are directly or transitively affected by changes in the codebase. It parses `uv.lock` files to build a workspace dependency graph and maps `git diff` output to determine impacted packages, enabling workflows to run targeted builds, tests, and deployments instead of processing the entire repository. This action automates change detection, improving CI efficiency and reducing unnecessary resource usage.

## What's Changed

## What's Changed
* perf: speed up action startup by dropping per-call uv overhead by @vanandrew in https://github.com/vanandrew/difftrace/pull/9


**Full Changelog**: https://github.com/vanandrew/difftrace/compare/v1.2.0...v1.3.0
