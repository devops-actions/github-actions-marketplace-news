---
title: Validate data with verdict
date: 2026-04-30 21:54:25 +00:00
tags:
  - kkruglik
  - GitHub Actions
draft: false
repo: https://github.com/kkruglik/verdict
marketplace: https://github.com/marketplace/actions/validate-data-with-verdict
version: verdict-cli-v0.1.7
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/kkruglik/verdict** to version **verdict-cli-v0.1.7**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-data-with-verdict) to find the latest changes.

## Action Summary

The **`verdict` GitHub Action** is a static binary tool designed to validate CSV data against a predefined schema in JSON or YAML format. It automates tasks such as type-checking, enforcing column constraints (e.g., uniqueness, value ranges, regex patterns), and validating dataset-level properties (e.g., row counts, column existence). This lightweight solution eliminates the need for runtime dependencies like Python, making it ideal for use in CI pipelines, Docker environments, and other shell-based workflows.

## What's Changed

- chore: release (538206d)
- Merge pull request #32 from kkruglik/feature/22-table-constraints (12affd5)
- updated readme (3cf346e)
- updated docs (0faf8dd)
- applied formatting (e2e8857)
- applied formatting (a650357)
- add TestTableConstraints class with 21 tests (d2bbb61)
- add TableConstraint and TableRule bindings and register in module (ec025b4)
- update explore script for renamed Python API (ceb24dc)
- rename RuleBuilder and py_validate in pandera benchmark (2afd437)
