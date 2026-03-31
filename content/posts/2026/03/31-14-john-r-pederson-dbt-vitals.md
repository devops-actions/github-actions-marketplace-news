---
title: dbt-vitals
date: 2026-03-31 14:02:20 +00:00
tags:
  - john-r-pederson
  - GitHub Actions
draft: false
repo: https://github.com/john-r-pederson/dbt-vitals
marketplace: https://github.com/marketplace/actions/dbt-vitals
version: v0.2.1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/john-r-pederson/dbt-vitals** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dbt-vitals) to find the latest changes.

## Action Summary

**dbt-vitals** is a GitHub Action designed to analyze the impact of dbt model, snapshot, or seed changes in a pull request by generating a **Warehouse Impact Report**. It automates the detection of deleted, renamed, or schema-altered dbt resources, cross-referencing them with the live Snowflake warehouse to provide details such as table sizes, usage metrics, and downstream dependencies. This helps teams identify potential risks and ensure informed decision-making before merging changes that could disrupt data pipelines or impact active consumers.

## What's Changed

### Changed

- Action branding updated for GitHub Marketplace: icon → `activity`, color → `orange`
- Description tightened to fit Marketplace listing format
- Author field added to `action.yml`

> This release contains no functional changes. All warehouse query logic, report generation, and transitive lineage traversal are identical to v0.2.0.

---

**Full changelog:** https://github.com/john-r-pederson/dbt-vitals/blob/main/CHANGELOG.md
