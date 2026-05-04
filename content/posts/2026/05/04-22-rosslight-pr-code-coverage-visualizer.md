---
title: pr-code-coverage-visualizer
date: 2026-05-04 22:21:17 +00:00
tags:
  - rosslight
  - GitHub Actions
draft: false
repo: https://github.com/rosslight/pr-code-coverage-visualizer
marketplace: https://github.com/marketplace/actions/pr-code-coverage-visualizer
version: v2.2.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/rosslight/pr-code-coverage-visualizer** to version **v2.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-code-coverage-visualizer) to find the latest changes.

## Action Summary

The **`pr-code-coverage-visualizer`** GitHub Action automates the visualization of test coverage in pull requests by analyzing code coverage data from one or more `cobertura.xml` files. It provides a detailed summary of overall and per-file coverage, highlighting covered, uncovered, and partially covered code lines within the context of the PR. This action solves the problem of manually assessing test coverage changes, enabling developers to quickly identify gaps and ensure code quality.

## What's Changed

## [2.2.1](https://github.com/rosslight/pr-code-coverage-visualizer/compare/v2.2.0...v2.2.1) (2026-05-03)


### Bug Fixes

* Catch errors when adding a github comment and write to the step summary instead ([#15](https://github.com/rosslight/pr-code-coverage-visualizer/issues/15)) ([b0681fe](https://github.com/rosslight/pr-code-coverage-visualizer/commit/b0681fe0699c96d118f030dffcd0f1130b45bcb9))
