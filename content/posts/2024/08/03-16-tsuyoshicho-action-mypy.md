---
title: Run mypy with reviewdog
date: 2024-08-03 16:46:32 +00:00
tags:
  - tsuyoshicho
  - GitHub Actions
draft: false
repo: tsuyoshicho/action-mypy
marketplace: https://github.com/marketplace/actions/run-mypy-with-reviewdog
version: v5.0.0
dependentsNumber: "0"
---


Version updated for **tsuyoshicho/action-mypy** to version **v5.0.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-mypy-with-reviewdog) to find the latest changes.

## Release notes

# Summary

## BREAKING CHANGE

Configuration compatibility is maintained, but option behavior has changed.

The following options have been changed:

* ignore_note: Fixed to true, no longer used internally, always ignores note:
* output_json: Newly added, defaults to false, requires mypy 1.11 or higher

## What's Changed

* feat: JSON format support by @tsuyoshicho in https://github.com/tsuyoshicho/action-mypy/pull/162

## New Contributors

* @dependabot made their first contribution in https://github.com/tsuyoshicho/action-mypy/pull/144

**Full Changelog**: https://github.com/tsuyoshicho/action-mypy/compare/v4...v5.0.0
