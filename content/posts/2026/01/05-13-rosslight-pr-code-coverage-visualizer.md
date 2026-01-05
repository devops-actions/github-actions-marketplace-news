---
title: pr-code-coverage-visualizer
date: 2026-01-05 13:24:00 +00:00
tags:
  - rosslight
  - GitHub Actions
draft: false
repo: https://github.com/rosslight/pr-code-coverage-visualizer
marketplace: https://github.com/marketplace/actions/pr-code-coverage-visualizer
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/rosslight/pr-code-coverage-visualizer** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-code-coverage-visualizer) to find the latest changes.

## Action Summary

The `pr-code-coverage-visualizer` GitHub Action automates the process of analyzing and visualizing code coverage for pull requests. It parses one or more `cobertura.xml` files and adds a comment to the PR summarizing overall coverage and highlighting per-file coverage details, including line-by-line annotations. This action helps developers quickly assess the impact of their changes on test coverage, improving code quality and review efficiency.

## Release notes

## [2.0.0](https://github.com/rosslight/pr-code-coverage-visualizer/compare/v1.1.0...v2.0.0) (2026-01-04)


### ⚠ BREAKING CHANGES

* Update runner to node24

### Features

* Add logging information to markdown generation ([5481319](https://github.com/rosslight/pr-code-coverage-visualizer/commit/5481319f393b933451654a9a3a69ff73928125fd))
* Drop non-functional function-coverage ([e239e8c](https://github.com/rosslight/pr-code-coverage-visualizer/commit/e239e8cd3c1bc2a3e60230638c303edb0a162f4a))
* Improved markdown generation with repo summary ([b486b3a](https://github.com/rosslight/pr-code-coverage-visualizer/commit/b486b3ad485fe5352f1dbafc500300af1ce36e2f))
* Refactor generator and get truncation working ([0ada9bc](https://github.com/rosslight/pr-code-coverage-visualizer/commit/0ada9bc26daa263a4257eea9aba716127b4c011d))


### Bug Fixes

* Calculate repo wide coverage correctly ([d1b88dd](https://github.com/rosslight/pr-code-coverage-visualizer/commit/d1b88dd18c5e1ff0ff0109ef1564fb6da274da44))
* Comment on open PRs only ([7468ba1](https://github.com/rosslight/pr-code-coverage-visualizer/commit/7468ba1052af8659c26a0134fb90c3dbeaf2dd4e))
* Consolidate percentage formatting ([a87a571](https://github.com/rosslight/pr-code-coverage-visualizer/commit/a87a5715cfccc7af3ca2d9f6a89d36f75e90850a))
* Ordering and whitespaces ([178c9f6](https://github.com/rosslight/pr-code-coverage-visualizer/commit/178c9f64abc7f4bd39dddffcd5ed1e20a7b2e466))
* Parse git diff files with absolute paths ([a999cfa](https://github.com/rosslight/pr-code-coverage-visualizer/commit/a999cfaa00d79a2e13324c6922d811efcc3ece62))
* Spacing between badges to ensure they are rendered in a single line ([eb9dcf9](https://github.com/rosslight/pr-code-coverage-visualizer/commit/eb9dcf9f696a2ddd72235751605c5ce644b00643))


### Build System

* Update runner to node24 ([3e8aa38](https://github.com/rosslight/pr-code-coverage-visualizer/commit/3e8aa3807da68428eb4e7beec93bac98ad8f3965))
