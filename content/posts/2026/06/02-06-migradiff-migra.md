---
title: MigraDiff Schema Check
date: 2026-06-02 06:55:43 +00:00
tags:
  - migradiff
  - GitHub Actions
draft: false
repo: https://github.com/migradiff/migra
marketplace: https://github.com/marketplace/actions/migradiff-schema-check
version: v1.5.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/migradiff/migra** to version **v1.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/migradiff-schema-check) to find the latest changes.

## What's Changed

MigraDiff now diffs `COMMENT ON` metadata across all major PostgreSQL object types — tables, columns, views, materialized views, functions, sequences, types, indexes, constraints, and schemas.

### Why this matters

If you store schema documentation, AI context, or compliance metadata in `COMMENT ON` blocks, MigraDiff no longer silently drops it during migrations. Added, changed, and removed comments all generate the correct `COMMENT ON` (or `COMMENT ON ... IS NULL`) SQL.

### AI integration

`--explain` and `--generate` now read your `COMMENT ON` metadata as schema context. The AI knows not just that a column is `text`, but what it's *for* — richer explanations, more accurate generated migrations.

### Works everywhere

- **Live connections:** queries `pg_catalog.pg_description` directly
- **`--from-file` mode:** works automatically with pg_dump output
- **`--output json`:** all comment changes classified as `safe` risk

190 tests passing. No new dependencies.

```
pip install --upgrade migradiff
```
