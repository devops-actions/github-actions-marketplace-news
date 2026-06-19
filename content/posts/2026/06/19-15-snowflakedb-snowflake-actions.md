---
title: Snowflake Actions
date: 2026-06-19 15:04:16 +00:00
tags:
  - snowflakedb
  - GitHub Actions
draft: false
repo: https://github.com/snowflakedb/snowflake-actions
marketplace: https://github.com/marketplace/actions/snowflake-actions
version: v3.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/snowflakedb/snowflake-actions** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snowflake-actions) to find the latest changes.

## What's Changed

**Snowflake Actions v3 — GA**

The Snowflake CLI GitHub Action is now generally available and fully supported. Install and configure the Snowflake CLI in any workflow to deploy dbt, DCM, Snowflake App Runtime, and Streamlit projects, run SQL, and automate Snowflake CLI tasks from CI/CD.

## Highlights
- OIDC (workload identity) authentication — no long-lived secrets.
- Install from PyPI (`cli-version`) or from source (`custom-github-ref`).
- Linux, macOS, and Windows runners.

## Since the last v2 patch
- Fix: stop leaking `UV_PYTHON` into the consumer job env (#4).
- CI: required install checks now run on `pull_request` (#5).

**Usage:** `uses: snowflakedb/snowflake-actions@v3`

**Full changelog**: https://github.com/snowflakedb/snowflake-actions/compare/v2.0.5...v3.0.0
