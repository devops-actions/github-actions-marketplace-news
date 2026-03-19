---
title: pytest-gremlins
date: 2026-03-19 13:51:23 +00:00
tags:
  - mikelane
  - GitHub Actions
draft: false
repo: https://github.com/mikelane/pytest-gremlins-action
marketplace: https://github.com/marketplace/actions/pytest-gremlins
version: v1.1.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mikelane/pytest-gremlins-action** to version **v1.1.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pytest-gremlins) to find the latest changes.

## Action Summary

The `pytest-gremlins-action` integrates [pytest-gremlins](https://github.com/mikelane/pytest-gremlins) mutation testing into your CI pipeline, automating the process of identifying weaknesses in your test suite by simulating code mutations. It streamlines tasks like parallel mutation testing, caching for faster runs, PR comments with detailed mutation reports, and enforcing a mutation score threshold to maintain or improve code quality. This action is ideal for teams aiming to automate and enhance their test effectiveness in CI workflows.

## Release notes

## What's Fixed

- **PR comment no longer fails when no mutations are found.** `pr-comment.sh` now posts a simplified "no mutations generated" comment instead of crashing with a jq error.
- Extracted `post_comment()` function to eliminate code duplication.

**Full Changelog**: https://github.com/mikelane/pytest-gremlins-action/compare/v1.1.1...v1.1.2
