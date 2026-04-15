---
title: Actions Example Checker
date: 2026-04-15 22:03:21 +00:00
tags:
  - jessehouwing
  - GitHub Actions
draft: false
repo: https://github.com/jessehouwing/actions-example-checker
marketplace: https://github.com/marketplace/actions/actions-example-checker
version: v0.0.8
dependentsNumber: "7"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jessehouwing/actions-example-checker** to version **v0.0.8**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/actions-example-checker) to find the latest changes.

## Action Summary

The **GitHub Actions Example Checker** is a GitHub Action designed to validate the usage examples in documentation against the action's `action.yml` schema. It automates the process of ensuring that all inputs, outputs, and values referenced in markdown files and `action.yml` descriptions are accurate, well-defined, and consistent with the schema. Key capabilities include input type validation, regex pattern matching, multi-line value handling, and precise error reporting, which help maintain reliable and error-free documentation for GitHub Actions.

## What's Changed

Adds support for verifying the current version used in the docs matches the currently released version(s).

Requires manual change to the workflow by adding:

```yaml
with:
  version: v1.2.3
```

[Or extract the version from the repo's state](https://github.com/jessehouwing/actions-example-checker/blob/main/docs/extract-version-from-ref.md).

## What's Changed
* Bump @actions/github from 9.0.0 to 9.1.0 by @dependabot[bot] in https://github.com/jessehouwing/actions-example-checker/pull/58
* Bump the npm-development group with 3 updates by @dependabot[bot] in https://github.com/jessehouwing/actions-example-checker/pull/57
* Bump typescript-eslint from 8.58.1 to 8.58.2 in the eslint group by @dependabot[bot] in https://github.com/jessehouwing/actions-example-checker/pull/56
* Bump jessehouwing/actions-example-checker from 0.0.6 to 0.0.7 in the actions-minor group by @dependabot[bot] in https://github.com/jessehouwing/actions-example-checker/pull/55
* Add version number checking support by @Copilot in https://github.com/jessehouwing/actions-example-checker/pull/59


**Full Changelog**: https://github.com/jessehouwing/actions-example-checker/compare/v0.0.7...v0.0.8
