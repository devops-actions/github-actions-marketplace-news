---
title: difftrace
date: 2026-04-14 22:19:53 +00:00
tags:
  - vanandrew
  - GitHub Actions
draft: false
repo: https://github.com/vanandrew/difftrace
marketplace: https://github.com/marketplace/actions/difftrace
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vanandrew/difftrace** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/difftrace) to find the latest changes.

## Action Summary

The `difftrace` GitHub Action analyzes changes in monorepos managed by [uv](https://docs.astral.sh/uv/) to identify directly and transitively affected packages by parsing `uv.lock` and mapping `git diff` outputs. It automates CI/CD workflows by determining which packages need to be built, tested, or deployed, reducing unnecessary pipeline executions and improving efficiency. The action provides seamless integration with workflows by handling Python setup, installation, and output parsing, and supports dependency-aware job matrices for targeted CI tasks.

## What's Changed

## What's Changed
* docs: document --test-all flag in README by @vanandrew in https://github.com/vanandrew/difftrace/pull/7


**Full Changelog**: https://github.com/vanandrew/difftrace/compare/v1.0.6...v1.1.0
