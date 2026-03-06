---
title: perf-lint
date: 2026-03-06 20:58:24 +00:00
tags:
  - markslilley
  - GitHub Actions
draft: false
repo: https://github.com/markslilley/perf-lint-action
marketplace: https://github.com/marketplace/actions/perf-lint
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/markslilley/perf-lint-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/perf-lint) to find the latest changes.

## Action Summary

The `perf-lint` GitHub Action automates static analysis for performance test scripts directly within CI pipelines, supporting files from JMeter, k6, and Gatling. It identifies over 15 quality issues, such as missing think times, hardcoded values, and unrealistic ramp patterns, helping ensure the reliability and hygiene of performance tests before they reach production. Key capabilities include rule-based validation, integration with dashboards for advanced insights, and optional SARIF uploads for GitHub Code Scanning.

## Release notes

## perf-lint action v1.0.1

See [CHANGELOG.md](CHANGELOG.md) for details.

### Usage

```yaml
- uses: markslilley/perf-lint-action@v1.0.1
  with:
    paths: tests/
    api_key: 
```

