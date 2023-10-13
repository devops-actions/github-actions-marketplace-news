---
title: Java Unit Test and Analysis with SonarCloud
date: 2023-10-13 11:04:21 +00:00
tags:
  - bcgov-nr
  - GitHub Actions
draft: false
repo: bcgov-nr/action-test-and-analyse-java
marketplace: https://github.com/marketplace/actions/java-unit-test-and-analysis-with-sonarcloud
version: v1.0.0
dependentsNumber: "12"
---


Version updated for **bcgov-nr/action-test-and-analyse-java** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/java-unit-test-and-analysis-with-sonarcloud) to find the latest changes.

## Release notes

# Version 1.0 has been released!

## Breaking Changes

* `java-version` is now required (previously defaulted to 17)
* `sonar_project_token` has been renamed `sonar_token`

## New Features

* `triggers` specifies whether to run tests or exit succesfully (when not needed)
* `branch` allows cloning a non-default branch (useful for testing)
* `triggers_event` allows limiting action to event type, defaults to pull_request

## What's Changed
* chore(config): migrate renovate config by @bcgov-devops in https://github.com/bcgov-nr/action-test-and-analyse-java/pull/15
* Bump actions/checkout from 3 to 4 by @dependabot in https://github.com/bcgov-nr/action-test-and-analyse-java/pull/16
* chore: remove dependabot for renovate by @DerekRoberts in https://github.com/bcgov-nr/action-test-and-analyse-java/pull/18
* feat: bring over updates from node repo by @DerekRoberts in https://github.com/bcgov-nr/action-test-and-analyse-java/pull/19
* fix: updates to fix publishing by @DerekRoberts in https://github.com/bcgov-nr/action-test-and-analyse-java/pull/20

## New Contributors
* @bcgov-devops made their first contribution in https://github.com/bcgov-nr/action-test-and-analyse-java/pull/15
* @dependabot made their first contribution in https://github.com/bcgov-nr/action-test-and-analyse-java/pull/16

**Full Changelog**: https://github.com/bcgov-nr/action-test-and-analyse-java/compare/v0.2.0...v1.0.0
