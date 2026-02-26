---
title: pgfence
date: 2026-02-26 05:45:21 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.2.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool that analyzes SQL migration files to identify potential database lock issues, assess risk levels, and provide safe rewrite strategies for executing migrations without disrupting production systems. It automates the detection of problematic lock modes and unsafe operations and offers optimized solutions for safer schema changes. This action is particularly useful for preventing downtime caused by unintentional locks during database migrations.

## Release notes

## Security

- **Fix shell injection in GitHub Action** — all inputs now passed through env vars and bash array, eliminating injection vectors and fixing paths with spaces

## Bug Fixes

- **Correct lock mode for REFRESH MATERIALIZED VIEW CONCURRENTLY** — was EXCLUSIVE, now correctly SHARE UPDATE EXCLUSIVE per PostgreSQL docs (allows reads AND writes)
- **Eliminate silent failures in plugin system** — plugin errors logged to stderr instead of silently swallowed
- **Eliminate silent failures in extractors** — TypeORM now matches `queryRunner.manager.query()`, Knex/Sequelize transpilers emit warnings for dynamic table names instead of returning empty results
- **Add missing rule coverage** — default case for unknown constraint types, DROP SCHEMA CASCADE detection, DropStmt/TruncateStmt/RenameStmt added to lock tracking
- **Per-file parse error handling** — a syntax error in one file no longer aborts analysis of the entire batch
- **maxRisk includes policy violations** — error-level policy violations now reflected in maxRisk (was showing SAFE with error-level violations)
- **SARIF coverage summary** — Trust Contract compliance: SARIF output now includes coverage stats
- **Error handling improvements** — start-after only catches ENOENT, cloud hooks always log errors, stats file schema validated, config JSON validated

## Chores

- Exclude `tests/cloud/` from vitest config
- Add `@iarna/toml` as optional dependency
- Fix duplicate drizzle detection condition
- Flag `CreateProcedureStmt` as unanalyzable
