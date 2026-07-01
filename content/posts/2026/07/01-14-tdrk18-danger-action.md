---
title: danger-ruby-action
date: 2026-07-01 14:52:56 +00:00
tags:
  - tdrk18
  - GitHub Actions
draft: false
repo: https://github.com/tdrk18/danger-action
marketplace: https://github.com/marketplace/actions/danger-ruby-action
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tdrk18/danger-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/danger-ruby-action) to find the latest changes.

## What's Changed

## What's Changed

### New Inputs

Added 6 new inputs to expose missing Danger CLI options:

- `fail-on-errors` — Always fail the build when Danger reports errors (`--fail-on-errors`)
- `fail-if-no-pr` — Fail the build if no PR is found (`--fail-if-no-pr`)
- `new-comment` — Post a new comment instead of editing the previous one (`--new-comment`)
- `remove-previous-comments` — Remove all previous comments and post a new one (`--remove-previous-comments`)
- `base` — Branch/tag/commit to use as the base of the diff (`--base`)
- `head` — Branch/tag/commit to use as the head of the diff (`--head`)

All new inputs are optional and default to their Danger defaults, so existing workflows are unaffected.
