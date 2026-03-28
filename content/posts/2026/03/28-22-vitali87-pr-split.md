---
title: pr-split score
date: 2026-03-28 22:12:42 +00:00
tags:
  - vitali87
  - GitHub Actions
draft: false
repo: https://github.com/vitali87/pr-split
marketplace: https://github.com/marketplace/actions/pr-split-score
version: v1.0.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/vitali87/pr-split** to version **v1.0.0**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-split-score) to find the latest changes.

## Action Summary

The `pr-split` GitHub Action automates the decomposition of large, unwieldy pull requests into smaller, manageable sub-PRs organized in a dependency DAG. It leverages AI to analyze diffs and create focused sub-PRs with clear scopes and dependencies, ensuring easier and more efficient code reviews. This tool solves the problem of review bottlenecks caused by massive PRs, enabling teams to collaborate more effectively and maintain high code quality.

## Release notes

## pr-split GitHub Action v1.0.0

Score every PR and automatically suggest splits when it's too large.

### Features
- Runs on every PR with zero config — no API key needed
- Uses the graph partitioning backend for fast, deterministic scoring
- Posts a PR comment with metrics table and suggested split plan
- Supports fork PRs via refs/pull/{n}/head
- Idempotent comments — re-runs update the existing comment

### Usage

```yaml
- uses: vitali87/pr-split@v1
  with:
    max-loc: "400"
```

See the [README](https://github.com/vitali87/pr-split#github-action) for all inputs and outputs.
