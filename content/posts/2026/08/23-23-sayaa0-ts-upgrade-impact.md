---
title: TS Upgrade Impact
date: 2026-08-23 23:02:07 +00:00
tags:
  - sayaa0
  - GitHub Actions
draft: false
repo: https://github.com/sayaa0/ts-upgrade-impact
marketplace: https://github.com/marketplace/actions/ts-upgrade-impact
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  TS Upgrade Impact is an experimental GitHub Action and CLI designed to analyze TypeScript declaration changes during npm dependency upgrades. It helps identify which supported type declarations actually intersect with APIs used by a TypeScript repository, focusing on high-confidence cases like package-level declarations and named exports. The tool can infer direct dependency version changes from PRs and automatically detect breaking updates, providing a clear summary of detected updates and their impact.
---


Version updated for **https://github.com/sayaa0/ts-upgrade-impact** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ts-upgrade-impact) to find the latest changes.

## Action Summary

TS Upgrade Impact is an experimental GitHub Action and CLI designed to analyze TypeScript declaration changes during npm dependency upgrades. It helps identify which supported type declarations actually intersect with APIs used by a TypeScript repository, focusing on high-confidence cases like package-level declarations and named exports. The tool can infer direct dependency version changes from PRs and automatically detect breaking updates, providing a clear summary of detected updates and their impact.

## What's Changed

Initial experimental release.
Detects supported TypeScript API changes in npm dependency upgrade PRs, filters them against APIs actually used by the repository, and reports likely breaking changes.
