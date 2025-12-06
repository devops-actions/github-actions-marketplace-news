---
title: Backport merged pull requests to selected branches
date: 2024-08-22 00:51:24 +00:00
tags:
  - korthout
  - GitHub Actions
draft: false
repo: korthout/backport-action
marketplace: https://github.com/marketplace/actions/backport-merged-pull-requests-to-selected-branches
version: v3.1.0
dependentsNumber: "534"
---


Version updated for **korthout/backport-action** to version **v3.1.0**.
- This action is used across all versions by **534** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/backport-merged-pull-requests-to-selected-branches) to find the latest changes.

## Release notes

## What's Changed
This release adds a new input [`source_pr_number`](https://github.com/korthout/backport-action?tab=readme-ov-file#source_pr_number) that allows you to specify the pull request to backport explicitly in your workflow. Previously, the action always determined the pull request from the event payload, limiting the action to only backport the pull request associated to the current workflow run. This new input can be helpful in workflows that prefer to be explicit, in usage with `workflow_dispatch` events, and for more complex workflows. Thanks for this great contribution @chancez!
* Add `source_pr_number` input by @chancez in https://github.com/korthout/backport-action/pull/434

## New Contributors
* @chancez made their first contribution in https://github.com/korthout/backport-action/pull/434

**Full Changelog**: https://github.com/korthout/backport-action/compare/v3.0.2...v3.1.0
