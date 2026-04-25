---
title: dbt-semguard
date: 2026-04-25 05:54:31 +00:00
tags:
  - yeaight7
  - GitHub Actions
draft: false
repo: https://github.com/yeaight7/dbt-semguard
marketplace: https://github.com/marketplace/actions/dbt-semguard
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yeaight7/dbt-semguard** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dbt-semguard) to find the latest changes.

## Action Summary

`dbt-semguard` is a semantic change detection tool for dbt projects that identifies and classifies changes to metrics and semantic models as `breaking`, `risky`, or `safe`. It automates the process of analyzing dbt Semantic Layer definitions to detect changes in the business meaning of metrics (e.g., aggregation methods or dimensions) that could disrupt downstream systems like dashboards or APIs, even when dbt builds successfully. By focusing solely on semantic differences and filtering out non-impactful changes, it helps teams review and manage metric updates with precision and confidence.

## What's Changed

## v0.4.0 - 2026-04-24

### Added

- Added `.semguard.yml` YAML discovery configuration for `include` and `exclude` rules
- Added default YAML discovery safeguards to focus extraction on semantic directories and skip common non-project paths
- Added monorepo coverage tests for local YAML mode and checkout-free git ref mode scoped by `--project-dir`
- Added YAML validation tests for missing required metric/entity/dimension fields and malformed YAML

### Changed

- Git ref YAML extraction now scopes file listing to the selected `--project-dir` instead of scanning the full repository tree
- YAML extraction now raises user-facing validation errors with source-file context instead of surfacing raw `KeyError` exceptions
- CI now keeps pre-release smoke validation on `uses: ./`, while published-action smoke validation runs separately after release publication or manual dispatch
- README and usage docs now document monorepo `--project-dir` behavior, `.semguard.yml`, and `v0.4.0` migration notes

### Known limitations

- No `fail-on: none` advisory-only mode yet
- No allowlist for intentional semantic changes yet
- No inline PR annotations yet
- No PyPI publishing yet
- Manifest mode expects dbt `semantic_manifest.json`, not arbitrary `manifest.json`


