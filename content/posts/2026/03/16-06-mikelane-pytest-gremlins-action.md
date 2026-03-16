---
title: pytest-gremlins
date: 2026-03-16 06:13:04 +00:00
tags:
  - mikelane
  - GitHub Actions
draft: false
repo: https://github.com/mikelane/pytest-gremlins-action
marketplace: https://github.com/marketplace/actions/pytest-gremlins
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mikelane/pytest-gremlins-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pytest-gremlins) to find the latest changes.

## Action Summary

The `pytest-gremlins-action` GitHub Action integrates mutation testing into CI pipelines using the `pytest-gremlins` framework. It automates mutation testing with features like incremental caching for faster repeat runs, parallel test execution, mutation score ratcheting to enforce quality improvements, and automatic PR comments with mutation reports. This action simplifies the process of ensuring code quality by providing detailed mutation test results and progress tracking, making it an efficient tool for maintaining robust test coverage.

## Release notes

## pytest-gremlins-action v1.0.1

Drop pytest-gremlins mutation testing into your CI pipeline in one step.

### Features

- Run mutation testing with one action step
- Incremental caching via `actions/cache` (13x speedup on repeat runs)
- Score ratcheting — mutation score can only go up, auto-commits improvements
- PR comments with mutation report and surviving mutations table
- Shields.io badge URL output
- 8 inputs, 8 outputs, full customization

### Usage

```yaml
- uses: mikelane/pytest-gremlins-action@v1
```

See [README](https://github.com/mikelane/pytest-gremlins-action#readme) for full documentation.

### Requirements

- Requires `pytest-gremlins >= 1.5.1`
- Requires `jq` on the runner (pre-installed on GitHub-hosted runners)
