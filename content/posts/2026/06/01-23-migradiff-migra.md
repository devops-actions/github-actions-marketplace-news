---
title: MigraDiff Schema Check
date: 2026-06-01 23:52:43 +00:00
tags:
  - migradiff
  - GitHub Actions
draft: false
repo: https://github.com/migradiff/migra
marketplace: https://github.com/marketplace/actions/migradiff-schema-check
version: v1.4.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/migradiff/migra** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/migradiff-schema-check) to find the latest changes.

## What's Changed

MigraDiff v1.4.0 turns the PostgreSQL schema-diff tool into a complete
AI-powered migration assistant. Four schema-aware AI flags, all optional —
the core diff engine stays dependency-free.

### Added
- `--explain`  — plain-English explanation of any migration
- `--rollback` — generates a reversal migration for a given diff
- `--advise`   — deterministic + AI risk assessment of a migration
- `--generate` — writes a migration from a plain-English description,
                 using your *real* table names and column types from a
                 live connection or schema file

### Safety
- `--generate` hard-refuses bulk-destructive requests ("drop all",
  "wipe", etc.) before any API call is made
- Soft-warns and flags individual destructive operations
- All AI output is marked as AI-generated; temperature 0 for determinism
- `--generate` is combinable with `--advise` for immediate risk feedback

175 tests passing. AI features require an Anthropic API key:

    pip install migradiff[ai]
