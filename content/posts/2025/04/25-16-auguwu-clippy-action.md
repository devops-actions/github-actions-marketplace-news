---
title: Clippy Action
date: 2025-04-25 16:58:45 +00:00
tags:
  - auguwu
  - GitHub Actions
draft: false
repo: https://github.com/auguwu/clippy-action
marketplace: https://github.com/marketplace/actions/clippy-action
version: 1.4.0
dependentsNumber: "122"
---


Version updated for **https://github.com/auguwu/clippy-action** to version **1.4.0**.
- This action is used across all versions by **122** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/clippy-action) to find the latest changes.

## Release notes

This release contains a overhauled version of the inputs for this action and my first action that is built and developed with [Bun](https://bun.sh) :rabbit:! If any issues occur, please report them on [GitHub](https://github.com/auguwu/clippy-action/issues/new).

## Breaking Changes
- The `args` and `check-args` uses a space delimiter instead of a comma delimiter as of this release.

## Deprecated Inputs
- `allow`, `deny`, `forbid`, and `warn` inputs are being deprecated as they can be used in `check-args` as well.

**Full Changelog**: https://github.com/auguwu/clippy-action/compare/1.3.0...1.4.0
