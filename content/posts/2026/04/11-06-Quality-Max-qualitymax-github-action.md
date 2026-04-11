---
title: QualityMax Test Runner
date: 2026-04-11 06:26:26 +00:00
tags:
  - Quality-Max
  - GitHub Actions
draft: false
repo: https://github.com/Quality-Max/qualitymax-github-action
marketplace: https://github.com/marketplace/actions/qualitymax-test-runner
version: v1.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Quality-Max/qualitymax-github-action** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qualitymax-test-runner) to find the latest changes.

## Action Summary

The **QualityMax Test Runner GitHub Action** automates end-to-end (E2E) testing as part of your CI/CD pipeline, leveraging AI to generate, execute, and maintain tests. It provides fast feedback by running tests on every push, pull request, or schedule, with results automatically posted to pull requests for streamlined collaboration. Key features include AI-powered test creation, flaky test detection with automatic retries, local execution support, and the ability to configure test suites, browsers, and execution modes.

## What's Changed

## New feature: matrix sharding

Split large test suites across parallel GitHub runners using Playwright's native `--shard=N/M` flag.

```yaml
jobs:
  test:
    strategy:
      fail-fast: false
      matrix:
        shard: [1, 2, 3, 4]
    steps:
      - uses: Quality-Max/qualitymax-github-action@v1
        with:
          api-key: ${{ secrets.QUALITYMAX_API_KEY }}
          project-name: 'My Web App'
          shard: ${{ matrix.shard }}
          shards-total: 4
```

Each shard runs a deterministic slice of the suite in parallel. Turns a 30-minute sequential run into ~5 minutes.

### Changes
- New inputs: `shard`, `shards-total` (both optional; both required to activate)
- Fix: `total-tests` output now reflects the actual shard slice, not the full suite
- README: new "Matrix Sharding" example

**Full changelog**: https://github.com/Quality-Max/qualitymax-github-action/compare/v1.2.1...v1.3.0
