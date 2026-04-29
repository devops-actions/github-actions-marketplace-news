---
title: pgfence
date: 2026-04-29 22:04:36 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.5.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.5.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool designed to analyze PostgreSQL database migrations before they are applied in production, identifying potential risks such as locking issues that could cause downtime. It evaluates SQL migration files to determine lock modes, risk levels, and provides safe rewrite strategies to mitigate problems. The tool supports popular ORMs like TypeORM, Prisma, Knex, Drizzle, and Sequelize, helping developers automate migration safety checks and avoid performance disruptions.

## What's Changed

## Fixes

- Replaced the VS Code Marketplace README badge with a stable badge after the previous dynamic endpoint started showing a retired badge.
- Fixed VACUUM option parsing so VACUUM (FULL false) is not reported as VACUUM FULL.
- Added detection and tests for inline CREATE TABLE ... EXCLUDE constraints on new tables.
- Updated the lock safety documentation matrix for the new inline EXCLUDE coverage.

## Verification

- pnpm prepush
- npm pack --dry-run
