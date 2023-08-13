---
title: Unit Test and Analysis with SonarCloud
date: 2023-08-13 03:18:54 +00:00
tags:
  - bcgov-nr
  - GitHub Actions
draft: false
repo: bcgov-nr/action-test-and-analyse
marketplace: https://github.com/marketplace/actions/unit-test-and-analysis-with-sonarcloud
version: v1.0.0
dependentsNumber: 48
---


Version updated for **bcgov-nr/action-test-and-analyse** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **48** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unit-test-and-analysis-with-sonarcloud) to find the latest changes.

## Release notes

# Version 1.0 has been released!

## Breaking Changes

* `node_version` is now required (previously defaulted to 16)
* `sonar_comment_token` has been removed (ignored by SonarCloud)
* `sonar_project_token` has been renamed `sonar_token`

## New Features

• `triggers` specifies whether to run tests or exit succesfully (when not needed)
• `branch` allows cloning a non-default branch (useful for testing)

## What's Changed
* feat: make node_version a required field by @craigyu in https://github.com/bcgov-nr/action-test-and-analyse/pull/20
 * feat: add triggers by @DerekRoberts in https://github.com/bcgov-nr/action-test-and-analyse/pull/25
* feat: optional non-default checkout branch by @DerekRoberts in https://github.com/bcgov-nr/action-test-and-analyse/pull/28
* bug: drop ignored sonar comment token by @DerekRoberts in https://github.com/bcgov-nr/action-test-and-analyse/pull/29

## New Contributors
* @craigyu made their first contribution in https://github.com/bcgov-nr/action-test-and-analyse/pull/20

**Full Changelog**: https://github.com/bcgov-nr/action-test-and-analyse/compare/v0.0.2...v1.0.0
