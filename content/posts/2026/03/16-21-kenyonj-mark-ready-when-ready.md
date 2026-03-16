---
title: Mark Ready When Ready
date: 2026-03-16 21:41:37 +00:00
tags:
  - kenyonj
  - GitHub Actions
draft: false
repo: https://github.com/kenyonj/mark-ready-when-ready
marketplace: https://github.com/marketplace/actions/mark-ready-when-ready
version: v1.1.3
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/kenyonj/mark-ready-when-ready** to version **v1.1.3**.
- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mark-ready-when-ready) to find the latest changes.

## Action Summary

This GitHub Action, **Mark Ready When Ready**, automates the process of marking draft pull requests as ready for review once all required checks pass successfully. It streamlines workflows by monitoring required checks, validating preconditions, and ensuring no merge conflicts before updating the PR's status, saving time and reducing manual intervention, especially for repositories with lengthy CI pipelines. This action is particularly useful for automating pull request readiness in high-activity repositories.

## Release notes

### What's Changed

- **Fixed permission validation**: The `contents: write` check now uses a direct write test instead of the repo endpoint's `.permissions` field, which didn't reliably reflect `GITHUB_TOKEN` permissions when set at the workflow level.
- **Updated error messages**: Permission error messages now reference both workflow and job level placement.

**Full Changelog**: https://github.com/kenyonj/mark-ready-when-ready/compare/v1.1.2...v1.1.3
