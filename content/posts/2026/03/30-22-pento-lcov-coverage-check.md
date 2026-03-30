---
title: LCOV Coverage Check
date: 2026-03-30 22:19:28 +00:00
tags:
  - pento
  - GitHub Actions
draft: false
repo: https://github.com/pento/lcov-coverage-check
marketplace: https://github.com/marketplace/actions/lcov-coverage-check
version: v3.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pento/lcov-coverage-check** to version **v3.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lcov-coverage-check) to find the latest changes.

## Action Summary

The LCOV Coverage Check GitHub Action automates the process of parsing LCOV coverage files, generating coverage summaries, and enforcing customizable coverage thresholds. It helps ensure code quality by preventing coverage regressions, requiring minimum coverage for new files, and verifying that changes do not reduce coverage. Key features include automatic baseline management, language-agnostic support, summary reporting, PR commenting, and flexible configuration options for multi-language workflows.

## What's Changed

### New: Consolidated PR comments

Multiple coverage labels now share a single PR comment instead of posting separate comments per label. Each label occupies its own section within the comment, independently updated on each run.

Sections are sorted alphabetically (unlabeled runs appear first as "default"). A read-modify-write cycle with retry handles concurrent updates from parallel jobs. (#14)

### Migration

Old-format per-label comments are automatically deleted on the first run after upgrading. No manual cleanup needed.

Single-invocation users without `coverage-label` are unaffected — the comment format changes internally but the visible content is identical.
