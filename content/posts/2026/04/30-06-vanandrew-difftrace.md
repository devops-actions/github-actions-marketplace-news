---
title: difftrace
date: 2026-04-30 06:01:43 +00:00
tags:
  - vanandrew
  - GitHub Actions
draft: false
repo: https://github.com/vanandrew/difftrace
marketplace: https://github.com/marketplace/actions/difftrace
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vanandrew/difftrace** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/difftrace) to find the latest changes.

## Action Summary

The `difftrace` GitHub Action automates change detection in `uv` monorepos by analyzing `git diff` and workspace dependencies to identify which packages are directly or transitively affected by a change. This enables CI pipelines to run only the necessary builds, tests, and deployments, reducing inefficiencies in large monorepos. It provides seamless integration into workflows by handling Python setup, installation, and output parsing, making it easy to implement targeted CI processes.

## What's Changed

## What's Changed
* feat: add --exclude-ext flag to ignore changed files by extension by @vanandrew in https://github.com/vanandrew/difftrace/pull/11


**Full Changelog**: https://github.com/vanandrew/difftrace/compare/v1.3.0...v1.4.0
