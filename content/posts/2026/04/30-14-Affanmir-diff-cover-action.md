---
title: Diff Cover Action
date: 2026-04-30 14:14:26 +00:00
tags:
  - Affanmir
  - GitHub Actions
draft: false
repo: https://github.com/Affanmir/diff-cover-action
marketplace: https://github.com/marketplace/actions/diff-cover-action
version: v2.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Affanmir/diff-cover-action** to version **v2.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diff-cover-action) to find the latest changes.

## Action Summary

The **diff-cover-action** is a GitHub Action designed to analyze test coverage and code quality specifically for changed lines of code in pull requests. It automates the generation of coverage and linting reports, posts detailed PR comments, provides inline annotations in diffs, and creates badges—all within the GitHub ecosystem without relying on external services. This action streamlines code review by integrating diff-based coverage and quality checks into CI workflows, supporting multiple languages and tools while ensuring data remains securely within the CI environment.

## What's Changed

## What's New in v2.1.0

### Title input for PR comments

A new optional `title` input renders an H2 heading at the top of the PR comment. Useful in monorepos where a matrix of coverage jobs runs and each comment needs to identify which app or package it belongs to.

```yaml
- uses: Affanmir/diff-cover-action@v2
  with:
    title: partners-app
    coverage-files: apps/partners-app/coverage/lcov.info
    comment-identifier: diff-cover-partners-app
    fail-under: '80'
```

When `title` is empty (default), no heading is rendered — behavior is unchanged from v2.0.0.

### Documentation

- README adds a **Comment Customization** input table and a **Monorepo Matrix** advanced example
- All quick-start snippets in the README, the GitHub Pages site, and `llms.txt` now reference `@v2`
- CHANGELOG updated for 2.1.0

### Migration from v2.0.0

No action needed — fully backwards compatible. Just bump the ref:

```yaml
- uses: Affanmir/diff-cover-action@v2   # tracks v2.x
# or pin
- uses: Affanmir/diff-cover-action@v2.1.0
```

**Full Changelog**: https://github.com/Affanmir/diff-cover-action/compare/v2.0.0...v2.1.0
