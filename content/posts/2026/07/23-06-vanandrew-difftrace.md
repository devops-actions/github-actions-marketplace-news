---
title: difftrace
date: 2026-07-23 06:16:52 +00:00
tags:
  - vanandrew
  - GitHub Actions
draft: false
repo: https://github.com/vanandrew/difftrace
marketplace: https://github.com/marketplace/actions/difftrace
version: v1.5.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action **difftrace** automates change detection in monorepos by analyzing the `uv.lock` file to build a dependency graph, mapping changes to packages, and identifying transitively affected packages. It identifies which packages are directly or indirectly impacted by code changes, optimizing CI pipelines to only process relevant packages.
---


Version updated for **https://github.com/vanandrew/difftrace** to version **v1.5.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/difftrace) to find the latest changes.

## Action Summary

The GitHub Action **difftrace** automates change detection in monorepos by analyzing the `uv.lock` file to build a dependency graph, mapping changes to packages, and identifying transitively affected packages. It identifies which packages are directly or indirectly impacted by code changes, optimizing CI pipelines to only process relevant packages.

## What's Changed

## What's Changed
* fix: key lock fingerprints per-name-set so multi-version deps aren't hidden by @vanandrew in https://github.com/vanandrew/difftrace/pull/13


**Full Changelog**: https://github.com/vanandrew/difftrace/compare/v1.5.0...v1.5.1
