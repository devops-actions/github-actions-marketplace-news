---
title: Kyosei Code Review
date: 2026-08-16 22:17:44 +00:00
tags:
  - ncaq
  - GitHub Actions
draft: false
repo: https://github.com/ncaq/kyosei-action
marketplace: https://github.com/marketplace/actions/kyosei-code-review
version: v2.4.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates a multi-perspective AI code review using the kyosei plugin. It collects existing feedback from PR conversations, excludes redundant comments, and removes project-specific coding conventions. The action wraps kyosei as a reusable workflow that handles checkout and timeout internally, requiring permissions to be declared by the caller.
---


Version updated for **https://github.com/ncaq/kyosei-action** to version **v2.4.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kyosei-code-review) to find the latest changes.

## Action Summary

This GitHub Action automates a multi-perspective AI code review using the kyosei plugin. It collects existing feedback from PR conversations, excludes redundant comments, and removes project-specific coding conventions. The action wraps kyosei as a reusable workflow that handles checkout and timeout internally, requiring permissions to be declared by the caller.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at v2.4.0 -->

## What's Changed
### Features
* feat: レビューに必要な権限をデフォルトで揃えます by @ncaq in https://github.com/ncaq/kyosei-action/pull/192
### Dependency Updates
* build(deps): lock file maintenance by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/189
* build(deps): update ncaq/nix-composite-action action to v3.0.3 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/190


**Full Changelog**: https://github.com/ncaq/kyosei-action/compare/v2.3.1...v2.4.0
