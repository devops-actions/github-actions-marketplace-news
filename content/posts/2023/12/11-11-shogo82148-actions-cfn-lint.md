---
title: actions-cfn-lint
date: 2023-12-11 11:18:02 +00:00
tags:
  - shogo82148
  - GitHub Actions
draft: false
repo: shogo82148/actions-cfn-lint
marketplace: https://github.com/marketplace/actions/actions-cfn-lint
version: v2.0.0
dependentsNumber: "22"
---


Version updated for **shogo82148/actions-cfn-lint** to version **v2.0.0**.
- This action is used across all versions by **22** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/actions-cfn-lint) to find the latest changes.

## Release notes

## Breaking Changes

- `args` input is removed. use `cfn_lint_args` instead of it.
- the default of `cfn_lint_args` is now `""`. To have the same behavior as v1, please specify `"**/*.yaml **/*.yml **/*.json"`.

## What's Changed
* auto update dependencies by @shogo82148-slim in https://github.com/shogo82148/actions-cfn-lint/pull/520
* auto update dependencies by @shogo82148-slim in https://github.com/shogo82148/actions-cfn-lint/pull/521
* migrate to official python image by @shogo82148 in https://github.com/shogo82148/actions-cfn-lint/pull/523
* drop support of args input by @shogo82148 in https://github.com/shogo82148/actions-cfn-lint/pull/524
* bump reviewdog v0.15.0 by @shogo82148 in https://github.com/shogo82148/actions-cfn-lint/pull/525
* Update requirements.txt and create a backup file by @shogo82148 in https://github.com/shogo82148/actions-cfn-lint/pull/526
* Update readme for v2 by @shogo82148 in https://github.com/shogo82148/actions-cfn-lint/pull/527


**Full Changelog**: https://github.com/shogo82148/actions-cfn-lint/compare/v1.92.0...v2.0.0
