---
title: Environment/Output Setter
date: 2026-07-21 15:05:20 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/env-output-setter
marketplace: https://github.com/marketplace/actions/environment-output-setter
version: v1.8.1
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  The GitHub Environment/Output Setter is a versatile action that enables users to dynamically set environment variables and outputs within their workflows. It supports setting multiple key-value pairs in both `$GITHUB_ENV` and `$GITHUB_OUTPUT`, making it ideal for automating tasks that require defining variables across different stages of the workflow. The action provides features like value transformation, masking sensitive values, JSON support, and retry mechanisms, enhancing its utility for complex environments.
---


Version updated for **https://github.com/somaz94/env-output-setter** to version **v1.8.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/environment-output-setter) to find the latest changes.

## Action Summary

The GitHub Environment/Output Setter is a versatile action that enables users to dynamically set environment variables and outputs within their workflows. It supports setting multiple key-value pairs in both `$GITHUB_ENV` and `$GITHUB_OUTPUT`, making it ideal for automating tasks that require defining variables across different stages of the workflow. The action provides features like value transformation, masking sensitive values, JSON support, and retry mechanisms, enhancing its utility for complex environments.

## What's Changed


### Build
- bump actions/checkout from 6 to 7 by @dependabot[bot]
- bump actions/setup-go from 6 to 7 by @dependabot[bot]

### CI/CD
- add DCO check via shared reusable workflow by @somaz94
- add PR welcome workflow stub by @somaz94
- add ok-to-test workflow stub by @somaz94
- use reusable contributors workflow by @somaz94
- use reusable dependabot-auto-merge workflow by @somaz94
- use reusable issue-greeting workflow by @somaz94
- use reusable stale-issues workflow by @somaz94
- adopt semantic-pr, labels, lock-threads, PR size, and auto-assign reusables by @somaz94
- remove DCO workflow by @somaz94

### Refactoring
- replace transformer.New positional args with Options struct by @somaz94

**Full Changelog**: https://github.com/somaz94/env-output-setter/compare/v1.8.0...v1.8.1

