---
title: pgfence
date: 2026-02-22 13:24:28 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool designed to analyze SQL migration files and assess their safety before deployment. It identifies lock modes, evaluates risk levels based on database size, and provides safe rewrite recipes to prevent downtime caused by problematic database operations. This action automates the detection of potential issues in raw SQL and popular ORMs, ensuring production stability during schema changes.

## Release notes

Patch release fixing scoped package name.

**Bug fixes:**
- Fixed `action.yml` to use `@flvmnt/pgfence` instead of unscoped `pgfence`
- Fixed `pgfence init` hook to use `@flvmnt/pgfence` instead of unscoped `pgfence`

Both the GitHub Action and git hook installer were referencing a package name that doesn't exist, causing failures in CI and pre-commit hooks.
