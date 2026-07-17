---
title: pgrls — Postgres RLS linter
date: 2026-07-17 06:50:52 +00:00
tags:
  - pgrls
  - GitHub Actions
draft: false
repo: https://github.com/pgrls/pgrls-action
marketplace: https://github.com/marketplace/actions/pgrls-postgres-rls-linter
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `pgrls-action` automates the use of the static analyzer `pgrls` to detect and prevent Row-Level Security bugs in PostgreSQL databases. It supports two modes: linting a live database's RLS state or serving as a pull-request gate that checks for regressions and new issues in schema changes without requiring a running database.
---


Version updated for **https://github.com/pgrls/pgrls-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgrls-postgres-rls-linter) to find the latest changes.

## Action Summary

The GitHub Action `pgrls-action` automates the use of the static analyzer `pgrls` to detect and prevent Row-Level Security bugs in PostgreSQL databases. It supports two modes: linting a live database's RLS state or serving as a pull-request gate that checks for regressions and new issues in schema changes without requiring a running database.

## What's Changed

Adds **`mode: pr`** — a DB-free base↔head RLS regression gate — beside the existing live-DB `mode: lint` (unchanged, fully back-compatible).

On a `pull_request`, it snapshots your migrations directory at the base and head **offline** (a detached `git worktree` + `pgrls snapshot --migrations` — no database, no Docker), then runs `pgrls pr`:
- **diff (base → head)** — a policy this PR *loosened* is Z3-proven `dangerous` and fails the check
- **lint (head)** — a new RLS finding in the changed schema

Either crossing its threshold fails the check, and a sticky review comment is posted with the report.

```yaml
- uses: actions/checkout@v4
  with: { fetch-depth: 0 }   # the base revision must be reachable
- uses: pgrls/pgrls-action@v1
  with:
    mode: pr
    migrations: supabase/migrations
```

Requires **pgrls >= 0.50.0** (auto-installed). Catalog copy refreshed to **67 rules**.

Verified in CI on a real runner: installs pgrls from PyPI, asserts `pgrls pr` + `snapshot --migrations` exist, passes a clean head, and fails a Z3-verified loosening.
