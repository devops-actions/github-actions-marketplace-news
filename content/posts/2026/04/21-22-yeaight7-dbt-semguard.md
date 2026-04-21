---
title: dbt-semguard
date: 2026-04-21 22:00:12 +00:00
tags:
  - yeaight7
  - GitHub Actions
draft: false
repo: https://github.com/yeaight7/dbt-semguard
marketplace: https://github.com/marketplace/actions/dbt-semguard
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yeaight7/dbt-semguard** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dbt-semguard) to find the latest changes.

## Action Summary

`dbt-semguard` is a semantic change detection tool for dbt’s Semantic Layer, designed to identify and classify changes to metrics and models as breaking, risky, or safe. It automates the process of detecting semantic drift by comparing two versions of semantic contracts, focusing on meaningful changes that could impact downstream consumers, such as dashboards or APIs, while ignoring non-functional YAML changes. This tool helps teams safeguard metric integrity by providing actionable insights during code reviews and CI workflows.

## What's Changed

## dbt-semguard v0.3.0

Focused semantic-depth release.

### Added
- breaking change detection for entity and dimension expression changes
- end-to-end support for cumulative and conversion metrics in YAML and `semantic_manifest.json`
- field-coverage policy for the semantic contract so diffed, nested, and intentionally excluded fields are auditable in tests
- CI smoke coverage for the published action in manifest mode with hostile spaced paths

### Changed
- declarative field comparators in the diff engine instead of ad hoc per-field branching
- grouped markdown/text findings under the same semantic object for easier review
- more precise semantic object context in change messages, especially for nested entities and dimensions

