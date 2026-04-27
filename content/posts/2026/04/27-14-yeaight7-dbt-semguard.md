---
title: dbt-semguard
date: 2026-04-27 14:34:26 +00:00
tags:
  - yeaight7
  - GitHub Actions
draft: false
repo: https://github.com/yeaight7/dbt-semguard
marketplace: https://github.com/marketplace/actions/dbt-semguard
version: v0.5.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yeaight7/dbt-semguard** to version **v0.5.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dbt-semguard) to find the latest changes.

## Action Summary

`dbt-semguard` is a semantic change detection tool for dbt Semantic Layer definitions that identifies and classifies changes to metrics and models as `breaking`, `risky`, or `safe`. It automates the process of detecting semantic drift by comparing two versions of a semantic contract, focusing only on meaningful changes that could impact downstream consumers, such as dashboards or APIs. This helps teams catch potentially disruptive modifications to metric definitions before they reach production, ensuring data consistency and reliability.

## What's Changed

## Changed

- Added typed internal severities while preserving existing JSON strings and GitHub output values.
- Split extractor internals into YAML, manifest, and normalization modules behind existing public facade.
- Scoped CI workflow permissions so broad write access is not requested globally.

## Fixed

- Removed unused production field-diff policy table and replaced it with comparator coverage tests.
- Updated release docs for preserved case-sensitive SQL filters, measure diffing, sub-day grain handling, git ref validation, 30-second GitHub API timeouts, and scoped workflow permissions.
