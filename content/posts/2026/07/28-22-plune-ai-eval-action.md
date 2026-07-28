---
title: Plune eval diff
date: 2026-07-28 22:47:51 +00:00
tags:
  - plune-ai
  - GitHub Actions
draft: false
repo: https://github.com/plune-ai/eval-action
marketplace: https://github.com/marketplace/actions/plune-eval-diff
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates Plune evaluation tasks by running the `plune run` and `plune diff`
  commands. It compares the results of evaluations on pull requests against the base branch, leaving a
  sticky comment with diffs indicating regressions and improvements. If configured to fail checks,
  it blocks merges when regressions are detected. The Action can use either the built-in mock provider or a real provider, depending on configuration.
---


Version updated for **https://github.com/plune-ai/eval-action** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/plune-eval-diff) to find the latest changes.

## Action Summary

This GitHub Action automates Plune evaluation tasks by running the `plune run` and `plune diff`
commands. It compares the results of evaluations on pull requests against the base branch, leaving a
sticky comment with diffs indicating regressions and improvements. If configured to fail checks,
it blocks merges when regressions are detected. The Action can use either the built-in mock provider or a real provider, depending on configuration.

## What's Changed

## What's Changed
* chore: pin @plune-ai/cli 0.5.0 and smoke the pin in CI by @AZANIR in https://github.com/plune-ai/eval-action/pull/14


**Full Changelog**: https://github.com/plune-ai/eval-action/compare/v1...v1.3.0
