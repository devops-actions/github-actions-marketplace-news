---
title: deps-sentinel-action
date: 2026-04-28 22:05:22 +00:00
tags:
  - maxonfjvipon
  - GitHub Actions
draft: false
repo: https://github.com/maxonfjvipon/deps-sentinel-action
marketplace: https://github.com/marketplace/actions/deps-sentinel-action
version: 0.0.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/maxonfjvipon/deps-sentinel-action** to version **0.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deps-sentinel-action) to find the latest changes.

## Action Summary

This GitHub Action automates the process of merging pull requests created by dependency management bots, such as Renovate and Dependabot, once CI checks pass. It reduces manual effort by ensuring that updates to dependencies are merged seamlessly and notifies repository owners if CI fails. The action can optionally integrate with Rultor for merging and provides configurable options for bot identification, merge methods, and required checks.

## What's Changed

- fix: use state-only check from gh pr checks, drop invalid conclusion field (092ef7d)
- fix: replace inline HTML br with comma in inputs table (e7a844a)
- feat: broaden scope to all dependency bots, rename to deps-sentinel-action (d51ac54)
- fix: disable MD013 line-length check for markdown tables (03ab4b3)
- fix: CI failures in markdown-lint, make, yamllint and up workflows (1fe3c20)
- feat: initial release (1956e2c)
