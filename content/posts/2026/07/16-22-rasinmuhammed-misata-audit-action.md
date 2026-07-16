---
title: Misata Seed Data Audit
date: 2026-07-16 22:45:39 +00:00
tags:
  - rasinmuhammed
  - GitHub Actions
draft: false
repo: https://github.com/rasinmuhammed/misata-audit-action
marketplace: https://github.com/marketplace/actions/misata-seed-data-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the validation of seed data by running the `misata audit` tool on a specified directory of CSV files. It checks for various inconsistencies such as orders shipped before they were placed, ages not matching birth dates, cancelled orders with tracking numbers, negative counts, high fraud rates, and cross-table relationships like foreign-key orphans and causality issues. The action fails the CI job if any problems are found, and provides detailed logs indicating which tables, columns, and rows have issues. It supports schema validation to further enhance checks and can be run with zero tolerance for errors.
---


Version updated for **https://github.com/rasinmuhammed/misata-audit-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/misata-seed-data-audit) to find the latest changes.

## Action Summary

This GitHub Action automates the validation of seed data by running the `misata audit` tool on a specified directory of CSV files. It checks for various inconsistencies such as orders shipped before they were placed, ages not matching birth dates, cancelled orders with tracking numbers, negative counts, high fraud rates, and cross-table relationships like foreign-key orphans and causality issues. The action fails the CI job if any problems are found, and provides detailed logs indicating which tables, columns, and rows have issues. It supports schema validation to further enhance checks and can be run with zero tolerance for errors.

