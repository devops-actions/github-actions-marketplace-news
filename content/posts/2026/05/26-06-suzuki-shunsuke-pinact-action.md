---
title: pinact
date: 2026-05-26 06:25:33 +00:00
tags:
  - suzuki-shunsuke
  - GitHub Actions
draft: false
repo: https://github.com/suzuki-shunsuke/pinact-action
marketplace: https://github.com/marketplace/actions/pinact
version: v3.0.0
dependentsNumber: "375"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/suzuki-shunsuke/pinact-action** to version **v3.0.0**.

- This action is used across all versions by **375** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pinact) to find the latest changes.

## Action Summary

The `pinact-action` GitHub Action automates the process of ensuring that GitHub Actions and reusable workflows in a repository are "pinned" to specific versions, enhancing security and reliability. It scans workflow files, validates that actions are correctly pinned, and can optionally fix and commit any unpinned actions to the repository. This action simplifies maintaining secure and consistent workflows by preventing the use of potentially unsafe or unintended updates to third-party actions.

## What's Changed

[Issues](https://github.com/suzuki-shunsuke/pinact-action/issues?q=is%3Aissue+is%3Aclosed+milestone%3Av3.0.0) | [Pull Requests](https://github.com/suzuki-shunsuke/pinact-action/pulls?q=is%3Apr+is%3Aclosed+milestone%3Av3.0.0) | https://github.com/suzuki-shunsuke/pinact-action/compare/v2.0.0...v3.0.0 | [Base revision](https://github.com/suzuki-shunsuke/pinact-action/tree/8d2d6954b4c773dbb086a3d456c216c3490595e2)

This release is largely driven by the update to [pinact v4.0.0](https://github.com/suzuki-shunsuke/pinact/releases/tag/v4.0.0).
Please also refer to the pinact v4.0.0 release notes.

## :warning: Breaking Changes

#1065 Upgrade pinact to [v4.0.0](https://github.com/suzuki-shunsuke/pinact/releases/tag/v4.0.0)
#1065 Behavior change when `skip_push: true`

### Behavior change when `skip_push: true`

Previously, this was equivalent to a `-check` mode. It has been changed to
simply skip committing.
By default, a commit is created.

With `skip_push: true, fix: true`, the code is fixed but not committed.
A subsequent step can create the commit on its own.
This is useful when you want to bundle the pinact changes with other
modifications into a single commit.

With `skip_push: true, fix: false`, validation is performed just like the
previous `skip_push: true` behavior.

## Features

#1065 Added inputs to support more pinact options

- `files`: lets you specify target files (positional arguments of `pinact run`)
- `fix` (`--fix` option)
- `no_api` (`--no-api` option)
- `verify_min_age` (`--verify-min-age` option)
- `branch_to_tags` (`--branch-to-tags` option)
- `config` (`--config` option)
- `diff_file` (`--diff-file` option)

