---
title: Setup Symlink for Action Repository
date: 2026-06-11 07:17:42 +00:00
tags:
  - wei18
  - GitHub Actions
draft: false
repo: https://github.com/wei18/local-composite-action
marketplace: https://github.com/marketplace/actions/setup-symlink-for-action-repository
version: 1.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/wei18/local-composite-action** to version **1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-symlink-for-action-repository) to find the latest changes.

## What's Changed

## Highlights

Fixes several hard-to-reproduce failures and adds a unit test suite.

### Fixed
- **Dangling symlinks with mixed-case `uses:` lines** — the resolved checkout path was lowercased before output; it now keeps the on-disk casing.
- **Third-party callers failed without `action_path`** — the `action_path` default evaluates to this action's own checkout, so the caller's repository is now also looked up under the runner's `_actions` directory as a fallback.
- **Repeated runs created nested garbage symlinks** — `ln -sfn` with an idempotency guard replaces the previous `ln -fs`.
- **Job hang on degenerate `action_path`** — the directory walk-up now terminates on relative paths instead of looping forever.
- **Clear error when `action_repository` is empty** (e.g. when an action is referenced via a local `uses: ./...` path).

### Added
- An all-lowercase symlink alias is always created, so hardcoded `./../org/repo/...` references work regardless of how the caller's `uses:` line is cased.
- `tests/run-tests.sh` unit test harness, run in CI on pushes and pull requests.

### Removed
- The deprecated `composite_action_path` / `composite_action_repository` inputs. Use `action_path` / `action_repository` instead.

**Full Changelog**: https://github.com/wei18/local-composite-action/compare/1.1.1...1.2.0
