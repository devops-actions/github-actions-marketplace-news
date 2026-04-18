---
title: Verify by Born14
date: 2026-04-18 13:58:34 +00:00
tags:
  - Born14
  - GitHub Actions
draft: false
repo: https://github.com/Born14/verify
marketplace: https://github.com/marketplace/actions/verify-by-born14
version: v1.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Born14/verify** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-by-born14) to find the latest changes.

## Action Summary

This GitHub Action, **Verify**, is designed to detect unsafe database migrations before they are merged into production, preventing issues that could cause deployment failures. It specifically identifies problematic patterns, such as adding `NOT NULL` columns without default values, which can break deployments on non-empty tables. Additionally, it provides historical context on migration-related incidents, helping teams identify and mitigate potential deploy coordination issues.

## What's Changed

First release of Verify as a migrations-only GitHub Action.

**DM-18:** ADD COLUMN NOT NULL without DEFAULT — blocks merge. 19 true positives, 0 false positives on 761 production migrations.

**DM-15/16/17:** DROP COLUMN with FK dependents, DROP TABLE with FK dependents, ALTER TYPE with data loss — warning only, uncalibrated.

**Install:**

- uses: Born14/verify@v1
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

Deterministic. No LLM. PostgreSQL only. 169KB bundle.

