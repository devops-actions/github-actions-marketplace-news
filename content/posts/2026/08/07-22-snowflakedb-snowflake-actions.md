---
title: Snowflake Actions
date: 2026-08-07 22:32:18 +00:00
tags:
  - snowflakedb
  - GitHub Actions
draft: false
repo: https://github.com/snowflakedb/snowflake-actions
marketplace: https://github.com/marketplace/actions/snowflake-actions
version: v3.3.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action installs and configures the Snowflake CLI, allowing users to automate tasks such as deploying dbt projects, streamlit apps, DCM pipelines, and running SQL queries directly from their CI/CD workflows. It supports OIDC authentication for secure access to Snowflake without storing secrets and is recommended for environments where OIDC is available.
---


Version updated for **https://github.com/snowflakedb/snowflake-actions** to version **v3.3.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snowflake-actions) to find the latest changes.

## Action Summary

The GitHub Action installs and configures the Snowflake CLI, allowing users to automate tasks such as deploying dbt projects, streamlit apps, DCM pipelines, and running SQL queries directly from their CI/CD workflows. It supports OIDC authentication for secure access to Snowflake without storing secrets and is recommended for environments where OIDC is available.

## What's Changed

**Snowflake Actions v3.3.0**

## Improvements
* **DCM composite actions** (`dcm/`): the changeset now sits in a collapsible `collapse/expand` section in both the job summary and the PR comment, with the processing steps above it and the totals line below it. `dcm-plan` leaves it expanded, `dcm-deploy` starts it collapsed. (#29)
* **DCM composite actions** (`dcm/`): `dcm-deploy` output is colour-coded like `dcm-plan` output (:large_green_square: `CREATE`, :large_yellow_square: `ALTER`, :large_red_square: `DROP`), having previously rendered through the generic summary path. (#29)
## Fixes
* **DCM composite actions** (`dcm/`): PR comments no longer exceed GitHub’s 65536-character body limit. A plan of a few hundred entities used to fail the job outright with `Validation Failed: body is too long`; oversized output is now truncated at a line boundary with a pointer to the run log and the uploaded artifact. (#29)
* **DCM composite actions** (`dcm/`): `dcm-deploy` drop detection reads `out/plan_result.json` instead of `out/plan/plan_result.json`, which had failed since the latest release of Snowflake CLI 3.24 with `Plan output file not found`. (#29)
## Notes
* Anyone using `comment-on-pr: “true”` will see a different comment shape after upgrading. No input changed and no action is required.
**Usage:** `uses: snowflakedb/snowflake-actions@v3`
**Full Changelog**: [github.com/snowflakedb/snowflake-actions/compare/…](https://github.com/snowflakedb/snowflake-actions/compare/v3.2.0...v3.3.0)
