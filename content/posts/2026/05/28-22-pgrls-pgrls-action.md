---
title: pgrls — Postgres RLS linter
date: 2026-05-28 22:57:31 +00:00
tags:
  - pgrls
  - GitHub Actions
draft: false
repo: https://github.com/pgrls/pgrls-action
marketplace: https://github.com/marketplace/actions/pgrls-postgres-rls-linter
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pgrls/pgrls-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgrls-postgres-rls-linter) to find the latest changes.

## Action Summary

The `pgrls-action` GitHub Action integrates the `pgrls` static analyzer into CI workflows to automatically detect and prevent issues with Postgres Row-Level Security (RLS) policies, such as broken tenant scoping, inverted authorization checks, and security vulnerabilities. It lints live Postgres databases (not SQL files) against 47 rules, 17 of which include auto-fixes, and can output findings in multiple formats, including GitHub annotations and SARIF for code scanning. This action helps developers automate RLS validation, ensuring that policy errors are caught during CI and do not reach production.

## What's Changed

Copy refresh: pgrls now ships **47 lint rules**, **17 mechanically auto-fixable** (was 44 / 12 at the v1.0.1 cut for pgrls 0.6.1).

No action behavior change — the action installs the latest pgrls from PyPI, so it already ran the current rule set. This release updates the Marketplace-facing description (`action.yml`) and README to match.
