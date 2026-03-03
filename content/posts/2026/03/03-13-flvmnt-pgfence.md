---
title: pgfence
date: 2026-03-03 13:34:44 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.2.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.2.3**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool designed to analyze SQL migration files for Postgres databases to identify potential locking issues, risk levels, and provide safe rewrite recipes before deployment. It automates the detection of problematic DDL statements, explains their lock modes, and offers optimized migration strategies to reduce downtime and prevent production disruptions. This action is particularly useful for developers working with ORMs like TypeORM, Prisma, and Sequelize to ensure safe database schema changes.

## Release notes

## Open Source (MIT License)

pgfence is now fully open source under the MIT license, replacing the previous FSL-1.1-MIT.

### Changes since v0.2.2
- License changed from FSL-1.1-MIT to MIT
- Updated all documentation and badges to reflect MIT license
- Added pgfence.com domain rule to project guidelines

This release includes all the ORM extractor improvements from v0.2.2:
- Knex: .alter() modifier, setNullable/dropNullable, references/inTable chain, timestamps, identifier quoting
- Sequelize: up-only filtering, addConstraint/removeConstraint, addIndex options (concurrently, unique), literal() detection
- TypeORM: builder API detection with 40+ methods, auto-commit detection
- 167 tests, all passing
