---
title: LCOV Coverage Check
date: 2026-03-17 21:46:56 +00:00
tags:
  - pento
  - GitHub Actions
draft: false
repo: https://github.com/pento/lcov-coverage-check
marketplace: https://github.com/marketplace/actions/lcov-coverage-check
version: v2.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pento/lcov-coverage-check** to version **v2.1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lcov-coverage-check) to find the latest changes.

## Action Summary

The **LCOV Coverage Check** GitHub Action automates the analysis and enforcement of code coverage standards using LCOV data. It parses coverage files, generates summaries, and optionally enforces thresholds by comparing against a stored baseline, ensuring consistent coverage quality across pull requests. Key capabilities include automatic baseline management, language-agnostic support, PR comments, and configurable rules to prevent coverage regressions on overall, modified, and new files.

## Release notes

### Fix: New/modified file detection in shallow clones

`actions/checkout` defaults to `fetch-depth: 1`, which means only the merge commit is available locally. The action's `git diff` calls used three-dot syntax (`A...B`), which requires merge-base computation and connected history between commits — neither of which exist in a shallow clone. The error was silently swallowed, causing the action to report "No new files detected" and "No modified files detected" even when the PR had changed files.

Three changes:

- **Auto-fetch refs**: Before running `git diff`, the action now fetches the base and head refs with `git fetch --depth=1`. No workflow changes needed.
- **Two-ref diff syntax**: Switched from `A...B` (merge-base) to `A B` (direct tree comparison), which only needs the two commits to be present.
- **Warnings on failure**: If `git diff` still fails (e.g., no remote access), a `::warning::` annotation is emitted instead of silently returning zero files. (#6)
