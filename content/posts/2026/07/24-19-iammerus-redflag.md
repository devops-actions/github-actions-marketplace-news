---
title: Redflag Secret Scanner
date: 2026-07-24 19:19:34 +00:00
tags:
  - iammerus
  - GitHub Actions
draft: false
repo: https://github.com/iammerus/redflag
marketplace: https://github.com/marketplace/actions/redflag-secret-scanner
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Redflag is a cross-platform CLI that scans source files and Git history for secrets using regular-expression rules and heuristic Shannon entropy checks. It helps automate the detection of sensitive information, such as passwords and API keys, in both codebases and version control systems. The action integrates with GitHub Actions to perform secret scanning in CI pipelines.
---


Version updated for **https://github.com/iammerus/redflag** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/redflag-secret-scanner) to find the latest changes.

## Action Summary

Redflag is a cross-platform CLI that scans source files and Git history for secrets using regular-expression rules and heuristic Shannon entropy checks. It helps automate the detection of sensitive information, such as passwords and API keys, in both codebases and version control systems. The action integrates with GitHub Actions to perform secret scanning in CI pipelines.

## What's Changed

## What changed

- Renamed the Action to `Redflag Secret Scanner` to satisfy the GitHub Marketplace unique-name requirement.
- Published the reusable Action at `iammerus/redflag@v0.1.1`.
- Updated the package version and README examples to `0.1.1`.
- Kept scanner behaviour unchanged from `v0.1.0`.

## Usage

```yaml
- uses: actions/checkout@v4
  with:
    fetch-depth: 0
- uses: iammerus/redflag@v0.1.1
  with:
    git-history: "true"
```

**Full changelog:** https://github.com/iammerus/redflag/compare/v0.1.0...v0.1.1
