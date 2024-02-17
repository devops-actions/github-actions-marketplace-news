---
title: Dependency tree diff for Gradle
date: 2024-02-17 19:14:29 +00:00
tags:
  - usefulness
  - GitHub Actions
draft: false
repo: usefulness/dependency-tree-diff-action
marketplace: https://github.com/marketplace/actions/dependency-tree-diff-for-gradle
version: v2.1.0
dependentsNumber: "21"
---


Version updated for **usefulness/dependency-tree-diff-action** to version **v2.1.0**.
- This action is used across all versions by **21** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependency-tree-diff-for-gradle) to find the latest changes.

## Release notes

## What's Changed
* Added new outputs:
`outputs.file-diff` - path to a file containing the raw diff output
`outputs.file-dependencies-head` - path to a file containing dependencies dump from currently checked out ref
`outputs.file-dependencies-base` - path to a file containing dependencies dump from pull request base (`github.base_ref`)

If you relied on existing internal behavior to capture tool's inputs, this release will contain breaking changes, as the input files have been renamed to `dependency-tree-diff_dependencies-head.txt` and `dependency-tree-diff_dependencies-base.txt`

## New Contributors
* @TWiStErRob made their first contribution in https://github.com/usefulness/dependency-tree-diff-action/pull/116

**Full Changelog**: https://github.com/usefulness/dependency-tree-diff-action/compare/v2...v2.1.0
