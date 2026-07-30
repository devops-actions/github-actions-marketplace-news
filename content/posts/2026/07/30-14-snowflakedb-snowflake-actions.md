---
title: Snowflake Actions
date: 2026-07-30 14:35:38 +00:00
tags:
  - snowflakedb
  - GitHub Actions
draft: false
repo: https://github.com/snowflakedb/snowflake-actions
marketplace: https://github.com/marketplace/actions/snowflake-actions
version: v3.2.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action installs and configures the Snowflake CLI in a workflow, enabling tasks such as deploying dbt projects, running SQL queries, automating DCM deployments, and more. It supports OIDC authentication for secure access to Snowflake resources without storing secrets. The action also allows customization of configuration files and installation from specific branches or tags.
---


Version updated for **https://github.com/snowflakedb/snowflake-actions** to version **v3.2.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snowflake-actions) to find the latest changes.

## Action Summary

The GitHub Action installs and configures the Snowflake CLI in a workflow, enabling tasks such as deploying dbt projects, running SQL queries, automating DCM deployments, and more. It supports OIDC authentication for secure access to Snowflake resources without storing secrets. The action also allows customization of configuration files and installation from specific branches or tags.

## What's Changed

**Snowflake Actions v3.2.0**

## Highlights
* **Cortex Code action** (`cortex-code/`): reflect exec subcommand GA on stable channel. (#23)
* **DCM composite actions** (`dcm/`): DCM action artifact names and PR comment markers are unique per project. (#22)
* **DCM composite actions** (`dcm/`): install released Snowflake CLI instead of dcm-early-access branch. (#25)
* **DCM composite actions** (`dcm/`): add plan-delta input to the dcm-plan action (#26)

**Usage:** `uses: snowflakedb/snowflake-actions@v3`

**Full Changelog**: https://github.com/snowflakedb/snowflake-actions/compare/v3.1.0...v3.2.0
