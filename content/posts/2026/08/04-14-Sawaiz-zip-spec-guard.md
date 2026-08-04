---
title: SpecGuard CI
date: 2026-08-04 14:59:16 +00:00
tags:
  - Sawaiz-zip
  - GitHub Actions
draft: false
repo: https://github.com/Sawaiz-zip/spec-guard
marketplace: https://github.com/marketplace/actions/specguard-ci
version: v0.4.4
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SpecGuard is a GitHub Action that automates semantic governance of spec files by evaluating changes against locked project goals and scopes. It helps catch unintentional scope shifts early in the development process and ensures that all PRs adhere to the established project direction, preventing potential issues later on during merges.
---


Version updated for **https://github.com/Sawaiz-zip/spec-guard** to version **v0.4.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/specguard-ci) to find the latest changes.

## Action Summary

SpecGuard is a GitHub Action that automates semantic governance of spec files by evaluating changes against locked project goals and scopes. It helps catch unintentional scope shifts early in the development process and ensures that all PRs adhere to the established project direction, preventing potential issues later on during merges.

## What's Changed

## SpecGuard v0.4.4

Completes the local/CI parity work on the advisory surfaces.

### Fix since v0.4.3

- **MCP write-time tools are now multi-scope aware (#17):** `check_proposed_change`, `check_permission`, and `get_scope_lock` judged a path against the repo-root lock only. In a monorepo they now resolve the path's own package scope (nearest-ancestor `.specguard/lock.json`), matching the merge gate. `get_scope_lock` gains an optional `path`. Adds `resolve_scope_for_path` to the scope resolver.

No engine/classification changes; no provider or default-model change. Not yet on PyPI (the Action still pins `specguard-ci==0.4.0`).

