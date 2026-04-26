---
title: Kyosei Code Review
date: 2026-04-26 13:38:44 +00:00
tags:
  - ncaq
  - GitHub Actions
draft: false
repo: https://github.com/ncaq/kyosei-action
marketplace: https://github.com/marketplace/actions/kyosei-code-review
version: v2.0.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/ncaq/kyosei-action** to version **v2.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kyosei-code-review) to find the latest changes.

## Action Summary

The `kyosei-action` GitHub Action integrates the Kyosei AI-powered code review plugin into CI workflows, automating multi-perspective code reviews on pull requests for quality, performance, security, test coverage, and documentation accuracy. It addresses issues like redundant or outdated review comments by filtering out resolved or acknowledged feedback and avoiding project-specific coding biases. This action streamlines continuous pull request reviews by providing actionable, relevant feedback after every push.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at v2.0.1 -->

## What's Changed
### Bug Fixes
* fix: `KYOSEI_ACTION_VERSION`環境変数を注入しkonoka側の変更に追随 by @ncaq in https://github.com/ncaq/kyosei-action/pull/78
### Dependency Updates
* build(deps): update anthropics/claude-code-action action to v1.0.106 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/76
* build(deps): update anthropics/claude-code-action action to v1.0.107 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/77
* build(deps): update dependency ncaq/konoka to v6.1.0 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/79


**Full Changelog**: https://github.com/ncaq/kyosei-action/compare/v2.0.0...v2.0.1
