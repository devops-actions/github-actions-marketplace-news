---
title: pgfence
date: 2026-03-14 21:28:27 +00:00
tags:
  - flvmnt
  - GitHub Actions
draft: false
repo: https://github.com/flvmnt/pgfence
marketplace: https://github.com/marketplace/actions/pgfence
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flvmnt/pgfence** to version **v0.4.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgfence) to find the latest changes.

## Action Summary

pgfence is a CLI tool designed to analyze SQL migration files before deployment to identify potential issues with PostgreSQL lock modes, risk levels, and operational impacts. It automates the detection of high-risk database operations and provides safe rewrite recipes to avoid downtime or performance degradation. This tool enhances migration safety and transparency, supporting various ORMs and raw SQL workflows.

## Release notes

## Trace Mode

Run your migrations against a real Postgres instance and verify every lock prediction:

```bash
pgfence trace migrations/*.sql
```

Spins up a disposable Docker container, executes each statement, queries `pg_locks` + system catalog, and compares what actually happened against static analysis predictions. Every check gets a verification status: `confirmed`, `mismatch`, `trace-only`, `static-only`, or `error`.

### Highlights

- **Observer polling for CONCURRENTLY**: opens a second connection that polls `pg_locks` while the main connection runs the statement, capturing transient locks that other tools skip
- **Catalog diffing**: detects table rewrites (relfilenode changes), column modifications, constraint validation state, and index creation
- **Custom images**: `--docker-image postgis/postgis:17` for extensions
- **Version targeting**: `--pg-version 14` to test against your production version
- **CI mode**: `--ci` fails on mismatches, execution errors, or risk threshold violations

### Security

- Credential sanitization covers both `postgres://` and `postgresql://` URL schemes
- Plugin loader rejects paths outside the project directory
- Container: random password, `127.0.0.1` only, cleaned up on crash

### Trust Contract Fixes

- trace-only findings: risk derived from observed lock mode (was hard-coded LOW)
- mismatch findings: risk upgraded to max(static, traced) when trace is stronger
- CI now fails on execution errors, not just mismatches

### Rules

- Default minimum PostgreSQL version bumped from 11 to 14
- `rename-column` suppresses expand/contract recipe on PG14+ (instant)
- Removed stale PG10/PG12 references from safe rewrites

### Stats

- 371 tests (was 176)
- 3,400+ lines added across 32 files

Full changelog: https://github.com/flvmnt/pgfence/blob/main/CHANGELOG.md
