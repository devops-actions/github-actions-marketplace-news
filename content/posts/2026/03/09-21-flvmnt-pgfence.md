---
title: pgfence
date: 2026-03-09 21:50:23 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.3.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.3.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool designed to enhance the safety of PostgreSQL schema migrations by analyzing SQL migration files to identify lock modes, assess operation risk levels, and provide safer rewrite recommendations. It helps developers prevent production downtime caused by database locks during migrations by offering detailed insights into locking behavior and alternative migration strategies. This tool works seamlessly with raw SQL and popular ORMs like TypeORM, Prisma, and Sequelize, ensuring safer and more predictable database changes.

## Release notes

## What's Changed

### Bug Fixes
- **Coverage formula**: reports 0% when parse errors prevent analysis (was falsely reporting 100%, Trust Contract violation)
- **Safe rewrite recipes**: SET NOT NULL migration boundary comments (PG12+), ADD COLUMN NOT NULL + volatile default appends constraint steps, smallserial maps to smallint
- **LSP server**: wrap `workspace/configuration` in try/catch (prevents crash on Neovim/Helix), code action safe rewrite trailing newline
- **Policy checks**: REINDEX TABLE no longer classified as ACCESS EXCLUSIVE (takes SHARE lock on table), DROP TRIGGER now tracked for wide-lock-window detection, pgfence-ignore comments suppress file-level policy violations
- **RENAME TABLE recipe**: corrected view note (simple views ARE auto-updatable in PostgreSQL)

### Security
- **FK action allowlist**: knex/sequelize transpilers now validate onDelete/onUpdate values against an allowlist (CASCADE, RESTRICT, NO ACTION, SET NULL, SET DEFAULT), preventing crafted migration files from injecting extra statements into the analysis pipeline
- **Sequelize.literal()**: no longer interpolates user content into synthetic SQL

### Cleanup
- `pg` moved to optionalDependencies (only needed for `--db-url`)
- Removed dead code (`src/git-diff.ts`)
- Deduplicated `RISK_ORDER` (LSP imports from analyzer instead of redeclaring)
- `--format` help text now lists drizzle and sequelize
