---
title: Snowflake Actions
date: 2026-08-10 14:22:00 +00:00
tags:
  - snowflakedb
  - GitHub Actions
draft: false
repo: https://github.com/snowflakedb/snowflake-actions
marketplace: https://github.com/marketplace/actions/snowflake-actions
version: v3.3.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The Snowflake Actions GitHub Action installs and configures the Snowflake CLI in a workflow, enabling tasks like deploying dbt projects, running SQL commands, automating Snowflake App Runtime apps, and more. It supports OIDC authentication for secure access to Snowflake without storing secrets and is recommended for most environments.
---


Version updated for **https://github.com/snowflakedb/snowflake-actions** to version **v3.3.1**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snowflake-actions) to find the latest changes.

## Action Summary

The Snowflake Actions GitHub Action installs and configures the Snowflake CLI in a workflow, enabling tasks like deploying dbt projects, running SQL commands, automating Snowflake App Runtime apps, and more. It supports OIDC authentication for secure access to Snowflake without storing secrets and is recommended for most environments.

## What's Changed

**Snowflake Actions v3.3.1**

## Fixes
* **DCM composite actions** (`dcm/`): `pull_request_target` workflows with `comment-on-pr: "true"` no longer post the plan comment on the last-merged pull request instead of the open one. `GITHUB_SHA` on that event points at the default branch tip, so the old commit-based lookup returned the wrong PR; both `resolvePrNumber` and `resolvePrBranch` now recognise `pull_request_target` as a payload event and read the PR number and head branch directly from the event
  payload. (#31)
* **DCM composite actions** (`dcm/`): the deployment alias is now `<source>-<run id>.<run attempt>` instead of `<branch>-<short sha>`, so re-running a workflow or retrying after a transient failure no longer fails with a duplicate-alias error. Push-triggered deploys previously received no alias at all and appeared in `SHOW DEPLOYMENTS` as only `DEPLOYMENT$N`; they now get `<ref>-<run id>.<run attempt>`. (#31)

## Notes
* No inputs or outputs changed. Both fixes are transparent to existing workflow files.

**Usage:** `uses: snowflakedb/snowflake-actions@v3`

**Full Changelog**: https://github.com/snowflakedb/snowflake-actions/compare/v3.3.0...v3.3.1

## What's Changed
* Fix PR resolution on pull_request_target and make the deployment alias unique per run by @sfc-gh-jsommerfeld in https://github.com/snowflakedb/snowflake-actions/pull/31


**Full Changelog**: https://github.com/snowflakedb/snowflake-actions/compare/v3...v3.3.1
