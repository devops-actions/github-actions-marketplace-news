---
title: Totem Shield
date: 2026-03-29 04:39:25 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.6.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action that transforms lessons learned from pull request (PR) reviews into automated, enforceable coding rules, ensuring consistent code quality and reducing repetitive review feedback ("Bot-Tax"). By observing PRs, extracting lessons in plain English, and converting them into deterministic linting rules, it automates the prevention of recurring code issues and enforces project standards through pre-push Git hooks. This self-healing system helps teams maintain clean, standardized codebases while minimizing manual intervention.

## What's Changed

### Patch Changes

-   fix: pipeline fixes, compiler DX improvements, and shield auto-refresh
    -   Shield flag auto-refresh on pre-push — no more stale flag after every commit (#1045)
    -   Bot source enum in LedgerEvent for accurate exemption tracking (#1048)
    -   Thread context propagation for reliable PR comment replies (#1051)
    -   Shield false positive fix on synchronous adapter methods (#1058)
    -   Compiler transparency — `totem compile --verbose` shows why lessons are skipped (#1060)
    -   Zero-match rule detection in lint output (#1061)
    -   Compile-time validation for ast-grep patterns (#1062)
    -   Hardened hook upgrade tests (#1068)

