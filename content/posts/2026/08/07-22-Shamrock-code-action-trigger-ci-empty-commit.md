---
title: Trigger CI with empty commit
date: 2026-08-07 22:35:18 +00:00
tags:
  - Shamrock-code
  - GitHub Actions
draft: false
repo: https://github.com/Shamrock-code/action-trigger-ci-empty-commit
marketplace: https://github.com/marketplace/actions/trigger-ci-with-empty-commit
version: v1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automatically triggers CI by pushing an empty commit to a pull request branch when a maintainer adds a specific label (`trigger-ci`). It handles both main repository branches and fork PRs, ensuring that the action can push to fork PRs if **Allow edits from maintainers** is enabled. If push is not possible (e.g., in a forked repo without this setting), it posts a comment with instructions on how to manually trigger CI.
---


Version updated for **https://github.com/Shamrock-code/action-trigger-ci-empty-commit** to version **v1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trigger-ci-with-empty-commit) to find the latest changes.

## Action Summary

This GitHub Action automatically triggers CI by pushing an empty commit to a pull request branch when a maintainer adds a specific label (`trigger-ci`). It handles both main repository branches and fork PRs, ensuring that the action can push to fork PRs if **Allow edits from maintainers** is enabled. If push is not possible (e.g., in a forked repo without this setting), it posts a comment with instructions on how to manually trigger CI.

## What's Changed

This is the initial release of this action used to trigger a CI job on a PR (from fork or same repo) by creating an empty commit on the PR.

**Full Changelog**: https://github.com/Shamrock-code/action-trigger-ci-empty-commit/commits/v1
