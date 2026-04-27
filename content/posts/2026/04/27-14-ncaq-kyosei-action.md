---
title: Kyosei Code Review
date: 2026-04-27 14:35:11 +00:00
tags:
  - ncaq
  - GitHub Actions
draft: false
repo: https://github.com/ncaq/kyosei-action
marketplace: https://github.com/marketplace/actions/kyosei-code-review
version: v2.0.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/ncaq/kyosei-action** to version **v2.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kyosei-code-review) to find the latest changes.

## Action Summary

The `kyosei-action` GitHub Action automates AI-driven code reviews for pull requests using the Kyosei plugin, focusing on code quality, performance, security, test coverage, and documentation accuracy. It resolves issues with redundant or outdated review comments by filtering out previously addressed feedback, resolved discussions, and project-specific coding conventions, ensuring reviews are relevant and tailored to the repository. This action simplifies integration with CI pipelines, enabling efficient and context-aware code reviews for every push.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at v2.0.2 -->

## What's Changed
### Bug Fixes
* fix: `allowed_tools`に`Task`等の非破壊ツールを追加 by @ncaq in https://github.com/ncaq/kyosei-action/pull/82
### Documentation
* docs: commit hashの取得方法をclone不要な`git ls-remote`に変更 by @ncaq in https://github.com/ncaq/kyosei-action/pull/80
### Dependency Updates
* build(deps): lock file maintenance by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/81


**Full Changelog**: https://github.com/ncaq/kyosei-action/compare/v2.0.1...v2.0.2
