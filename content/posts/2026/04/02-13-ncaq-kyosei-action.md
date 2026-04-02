---
title: Kyosei Code Review
date: 2026-04-02 13:58:44 +00:00
tags:
  - ncaq
  - GitHub Actions
draft: false
repo: https://github.com/ncaq/kyosei-action
marketplace: https://github.com/marketplace/actions/kyosei-code-review
version: v0.3.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/ncaq/kyosei-action** to version **v0.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kyosei-code-review) to find the latest changes.

## Action Summary

The `kyosei-action` GitHub Action automates multi-perspective AI code reviews for pull requests, analyzing code quality, performance, security, test coverage, and documentation accuracy. It addresses issues with existing review workflows by ensuring re-reviews are triggered after code updates, avoiding redundant or resolved comments, and allowing project-specific coding conventions to be defined. This action integrates seamlessly into CI pipelines, offering both a low-level composite action and a simpler reusable workflow for flexible implementation.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at v0.3.0 -->

## What's Changed
### Breaking Changes
* refactor: inputsを論理的なグループ順に並び替え by @ncaq in https://github.com/ncaq/kyosei-action/pull/20
### Features
* ci: GitHub UIでのチェック表示名を改善 by @ncaq in https://github.com/ncaq/kyosei-action/pull/18
* feat: Reusable Workflowに`runs-on` inputを追加 by @ncaq in https://github.com/ncaq/kyosei-action/pull/19
### Bug Fixes
* ci: zizmorのpedanticモードでの警告にできる限り対応 by @ncaq in https://github.com/ncaq/kyosei-action/pull/17
### Documentation
* docs: ワークフローとREADMEのpermissionsコメントを統合 by @ncaq in https://github.com/ncaq/kyosei-action/pull/16


**Full Changelog**: https://github.com/ncaq/kyosei-action/compare/v0.2.1...v0.3.0
