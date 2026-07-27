---
title: Report Go Code Coverage
date: 2026-07-27 23:13:47 +00:00
tags:
  - nicklasfrahm-dev
  - GitHub Actions
draft: false
repo: https://github.com/nicklasfrahm-dev/go-coverage-action
marketplace: https://github.com/marketplace/actions/report-go-code-coverage
version: v2.0.5
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  This action generates Go code coverage reports without using third-party services, storing previous coverage data as Git commit notes. It automatically tracks changes between pull requests and commits, provides job summaries with coverage statistics, and optionally adds comments to pull requests detailing any changes in coverage. The action should be triggered on pushes to the main branch and can generate reports for all packages or specific ones, ignoring code-generated files.
---


Version updated for **https://github.com/nicklasfrahm-dev/go-coverage-action** to version **v2.0.5**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/report-go-code-coverage) to find the latest changes.

## Action Summary

This action generates Go code coverage reports without using third-party services, storing previous coverage data as Git commit notes. It automatically tracks changes between pull requests and commits, provides job summaries with coverage statistics, and optionally adds comments to pull requests detailing any changes in coverage. The action should be triggered on pushes to the main branch and can generate reports for all packages or specific ones, ignoring code-generated files.

## What's Changed

## [2.0.5](https://github.com/nicklasfrahm-dev/go-coverage-action/compare/v2.0.4...v2.0.5) (2026-07-27)


### Bug Fixes

* **action:** prevent setting coverage note on pull requests ([#10](https://github.com/nicklasfrahm-dev/go-coverage-action/issues/10)) ([c98422f](https://github.com/nicklasfrahm-dev/go-coverage-action/commit/c98422f704df2fcf76ae75e0f97dd6c482b4f504))

