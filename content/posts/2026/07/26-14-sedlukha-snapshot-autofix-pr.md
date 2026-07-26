---
title: Snapshot auto-fix PR
date: 2026-07-26 14:39:26 +00:00
tags:
  - sedlukha
  - GitHub Actions
draft: false
repo: https://github.com/sedlukha/snapshot-autofix-pr
marketplace: https://github.com/marketplace/actions/snapshot-auto-fix-pr
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of updating baselines and creating or closing an auto-fix pull request that carries only changed snapshot files. It handles various snapshotting tools (like Playwright) and ensures that only relevant files are included in the PR, maintaining a clean commit history and workflow. The action is particularly useful for continuous integration pipelines where visual test failures need to be addressed quickly without affecting other parts of the codebase.
---


Version updated for **https://github.com/sedlukha/snapshot-autofix-pr** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snapshot-auto-fix-pr) to find the latest changes.

## Action Summary

This GitHub Action automates the process of updating baselines and creating or closing an auto-fix pull request that carries only changed snapshot files. It handles various snapshotting tools (like Playwright) and ensures that only relevant files are included in the PR, maintaining a clean commit history and workflow. The action is particularly useful for continuous integration pipelines where visual test failures need to be addressed quickly without affecting other parts of the codebase.

## What's Changed

### Added

- Input `fail-on-error` (default `"false"`). When `"true"`, a non-zero exit from `run-command` fails the action and skips the PR. Use it when `run-command` updates snapshots (so a baseline diff exits `0`) and a non-zero exit means a real test failure — e.g. Playwright with `--update-snapshots=all --max-failures=1`. Default keeps the old behavior: swallow the exit and always build the PR.

**Full changelog:** https://github.com/sedlukha/snapshot-autofix-pr/blob/master/CHANGELOG.md
