---
title: MigraDiff Schema Check
date: 2026-05-30 21:45:47 +00:00
tags:
  - migradiff
  - GitHub Actions
draft: false
repo: https://github.com/migradiff/migra
marketplace: https://github.com/marketplace/actions/migradiff-schema-check
version: v1.3.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/migradiff/migra** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/migradiff-schema-check) to find the latest changes.

## Action Summary

MigraDiff is a PostgreSQL schema comparison tool that automates the generation of SQL migration scripts required to transform one database schema into another. Designed for use in CI pipelines, it eliminates the need for manual `ALTER TABLE` commands and supports schema diffing via live database connections, schema dumps, or migration directories. The tool also offers advanced features like scoped schema comparisons, JSON output for programmatic use, and AI-powered explanations of migration changes, making it ideal for managing database schema updates efficiently and securely.

## What's Changed

## Install

    pip install --upgrade migradiff

## What's New

### AI-Powered Migration Explanation (--explain)

MigraDiff can now explain any migration in plain English — what 
each change does, what risks it carries, and safer alternatives 
for destructive operations.

    pip install migradiff[ai]
    migra --setup-ai
    migra --explain postgres://db_a postgres://db_b

Powered by Claude Haiku (Anthropic). Bring your own API key — 
no data is sent to MigraDiff servers. Works with --output json, 
--from-file, --from-migrations-dir, and all existing flags.

### Migrations Folder Input Mode (--from-migrations-dir)

Diff a directory of numbered migration files against a base 
schema without requiring a live branch database.

    migra --from-migrations-dir ./supabase/migrations \
      postgres://db_production

Supports Supabase timestamp format, Flyway versioned format, 
and standard numeric prefixes. Files applied in correct numeric 
sort order (9 before 10, not lexicographic).

### Also in this release
- Naming clarification in README — CLI stays `migra` for backward 
  compatibility, package is `migradiff`

Full changelog: https://github.com/migradiff/migra/blob/main/CHANGELOG.md

## Upgrading

    pip install --upgrade migradiff
