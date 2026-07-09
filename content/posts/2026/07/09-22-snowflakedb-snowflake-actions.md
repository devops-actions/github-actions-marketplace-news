---
title: Snowflake Actions
date: 2026-07-09 22:35:51 +00:00
tags:
  - snowflakedb
  - GitHub Actions
draft: false
repo: https://github.com/snowflakedb/snowflake-actions
marketplace: https://github.com/marketplace/actions/snowflake-actions
version: v3.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/snowflakedb/snowflake-actions** to version **v3.1.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snowflake-actions) to find the latest changes.

## What's Changed

**Snowflake Actions v3.1.0**

New Cortex Code and DCM composite actions, a shared-script install foundation, and auth-type telemetry.

## Highlights
- **Cortex Code action** (`cortex-code/`): install the Cortex Code (CoCo) CLI and auto-configure a connection from the parent action's OIDC flow. (#12, #15)
- **DCM composite actions** (`dcm/`): `parse-manifest`, `connection-test`, `plan`, and `deploy` for building Snowflake DCM CI/CD pipelines, with color-coded plan summaries and PR comments. (#19, #20)
- **`snowflake-cli` leaf action + shared `scripts/`**: install / OIDC-minting / env-setup logic extracted into reusable scripts, sourced from a single-source `VERSION` file. (#14, #15)
- **Auth-type telemetry**: `SF_CICD_AUTH_TYPE=oidc` exported when `use-oidc` is enabled, so the CLI records which auth type this action configured. (#10)

## Docs
- Improved README intro, OIDC example, and how-it-works; documented the DCM actions and env-var vs `config.toml` auth. (#8, #9)

**Usage:** `uses: snowflakedb/snowflake-actions@v3`

**Full changelog**: https://github.com/snowflakedb/snowflake-actions/compare/v3.0.0...v3.1.0

