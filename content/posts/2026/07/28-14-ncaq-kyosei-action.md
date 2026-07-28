---
title: Kyosei Code Review
date: 2026-07-28 14:58:04 +00:00
tags:
  - ncaq
  - GitHub Actions
draft: false
repo: https://github.com/ncaq/kyosei-action
marketplace: https://github.com/marketplace/actions/kyosei-code-review
version: v2.3.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  kyosei-action is a GitHub Action that automates code reviews using the kyosei plugin from the Konoka repository. It addresses issues with automatic reviews in PRs by collecting existing feedback, excluding resolved comments, and ensuring that only genuinely new feedback is provided. The action wraps kyosei as a reusable workflow to simplify setup and make it easy to run automated code reviews in CI environments.
---


Version updated for **https://github.com/ncaq/kyosei-action** to version **v2.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kyosei-code-review) to find the latest changes.

## Action Summary

kyosei-action is a GitHub Action that automates code reviews using the kyosei plugin from the Konoka repository. It addresses issues with automatic reviews in PRs by collecting existing feedback, excluding resolved comments, and ensuring that only genuinely new feedback is provided. The action wraps kyosei as a reusable workflow to simplify setup and make it easy to run automated code reviews in CI environments.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at v2.3.0 -->

## What's Changed
### Features
* feat: Claude Code CLIを自前でインストールしてOpus 5を使えるようにします by @ncaq in https://github.com/ncaq/kyosei-action/pull/184
### CI
* build(deps): update ncaq/nix-composite-action to v3 by @ncaq in https://github.com/ncaq/kyosei-action/pull/176
### Dependency Updates
* build(deps): update ncaq/nix-composite-action action to v2 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/174
* build(deps): update ncaq/nix-composite-action action to v3.0.1 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/177
* build(deps): lock file maintenance by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/178
* build(deps): update ncaq/nix-composite-action action to v3.0.2 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/179
* build(deps): lock file maintenance by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/180
* build(deps): update actions/setup-node action to v7 by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/182
* build(deps): update actions/checkout digest to 3d3c42e by @renovate[bot] in https://github.com/ncaq/kyosei-action/pull/183


**Full Changelog**: https://github.com/ncaq/kyosei-action/compare/v2.2.5...v2.3.0
