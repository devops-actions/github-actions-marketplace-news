---
title: CF Workers Actions
date: 2025-12-11 13:34:00 +00:00
tags:
  - harunonsystem
  - GitHub Actions
draft: false
repo: https://github.com/harunonsystem/cf-workers-actions
marketplace: https://github.com/marketplace/actions/cf-workers-actions
version: v1.0.5
dependentsNumber: "1"
---


Version updated for **https://github.com/harunonsystem/cf-workers-actions** to version **v1.0.5**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cf-workers-actions) to find the latest changes.

## Release notes

### Patch Changes

- b693ead: fix: use GITHUB_HEAD_REF for PR branch name retrieval

  Fixed an issue where pull request branch names were incorrectly displayed as GitHub's internal reference (refs/pull/\*/merge) instead of the actual source branch name. Now correctly uses GITHUB_HEAD_REF environment variable for PRs and github.context.payload.pull_request.head.ref in PR comments.

## What's Changed
* Fix branch name retrieval issue in https://github.com/harunonsystem/cf-workers-actions/pull/15
* release v1.0.5 by @github-actions[bot] in https://github.com/harunonsystem/cf-workers-actions/pull/16


**Full Changelog**: https://github.com/harunonsystem/cf-workers-actions/compare/v1.0.4...v1.0.5
