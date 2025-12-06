---
title: Sheriff Action CI
date: 2025-11-26 13:11:02 +00:00
tags:
  - teneplaysofficial
  - GitHub Actions
draft: false
repo: https://github.com/teneplaysofficial/sheriff
marketplace: https://github.com/marketplace/actions/sheriff-action-ci
version: v4.0.0
dependentsNumber: "5"
---


Version updated for **https://github.com/teneplaysofficial/sheriff** to version **v4.0.0**.
- This action is used across all versions by **5** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sheriff-action-ci) to find the latest changes.

## Release notes

## What's Changed

* feat: add support for `[skip-ci]` to bypass checks by @teneplaysofficial in https://github.com/teneplaysofficial/sheriff/pull/5

## Features

You can now append **`[skip-ci]`** (case-insensitive, with optional internal spacing) at the **end** of a PR title to automatically skip all title validation checks.

### Valid skip patterns

* `feat: add feature [skip-ci]`
* `fix(core): correct logic [ skip-ci ]`
* `docs: update guide [SKIP-CI]`

### Invalid skip patterns

* `[skip-ci] feat: xyz` (must be at the **end**)
* `feat: update skip-ci text` (must be inside brackets)

### Behavior

* When `[skip-ci]` is detected properly, validation returns `valid: true` immediately.
* No type/scope/breaking-rules are evaluated.
* This enables workflows to bypass strict commit/PR title rules when needed.

**Full Changelog**: https://github.com/teneplaysofficial/sheriff/compare/v3.0.0...v4.0.0
