---
title: AEOrank — AEO Scanner
date: 2026-04-04 06:09:18 +00:00
tags:
  - vinpatel
  - GitHub Actions
draft: false
repo: https://github.com/vinpatel/aeorank-action
marketplace: https://github.com/marketplace/actions/aeorank-aeo-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vinpatel/aeorank-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aeorank-aeo-scanner) to find the latest changes.

## Action Summary

The AEOrank GitHub Action evaluates a URL's AI Engine Optimization (AEO) score and automates the reporting of results by posting them as a GitHub Check Run and a pull request (PR) comment. It helps developers maintain high AEO quality standards by providing detailed score breakdowns and enforcing thresholds with a "fail-below" feature to flag low scores during CI workflows. This action streamlines AEO analysis, ensuring consistent optimization across code changes.

## What's Changed

## AEOrank Action v1.0.0

Scan any URL for AI Engine Optimization (AEO) score directly from your GitHub workflow.

### What this action does
- Runs `aeorank scan <url>` via npx
- Posts an AEO score as a GitHub Check Run (with 36-dimension breakdown table)
- Posts (or updates) a PR comment with the score and recommendations
- Supports `fail-below` threshold to enforce minimum AEO quality in CI

### Inputs
- `url` (required) — URL to scan
- `token` (optional) — GitHub token, defaults to `github.token`
- `fail-below` (optional) — fail Check if score drops below threshold, default `0` (never)

### Permissions required
```yaml
permissions:
  checks: write
  pull-requests: write
  contents: read
```

### Usage
```yaml
- uses: vinpatel/aeorank-action@v1
  with:
    url: https://your-site.com
```
