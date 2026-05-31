---
title: Migration Autopilot
date: 2026-05-31 22:16:14 +00:00
tags:
  - isabellehuecloser-ctrl
  - GitHub Actions
draft: false
repo: https://github.com/isabellehuecloser-ctrl/migration-autopilot
marketplace: https://github.com/marketplace/actions/migration-autopilot
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/isabellehuecloser-ctrl/migration-autopilot** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/migration-autopilot) to find the latest changes.

## Action Summary

Migration Autopilot is a GitHub Action designed to review database migration pull requests and identify operations that could cause downtime, data loss, or performance issues in production environments. It automates the detection of risky migration patterns (e.g., locking, full-table scans, data drops) across multiple frameworks, such as Prisma, Drizzle, Rails, and raw SQL, and provides safe rewrite suggestions to mitigate these risks. This action helps teams prevent production disruptions by blocking problematic migrations during the PR review process.

## What's Changed

**Migration Autopilot reviews every database-migration PR and blocks the unsafe ones before they hit production.**

A migration that ran in 0.4s on staging can lock your `users` table for 20 minutes in production. `SET NOT NULL`, a non-`CONCURRENTLY` index, a column type change, a `NOT NULL` backfill — each takes an ACCESS EXCLUSIVE lock and scans every row. Generic AI review bots don't model lock semantics. Migration Autopilot does.

### What it catches (15 deterministic rules)
- 🔴 **Data loss**: `DROP COLUMN`, `DROP TABLE`, `TRUNCATE`
- 🔴 **Prod lock**: `SET NOT NULL`, type changes, non-`CONCURRENTLY` index
- 🔴 **Wrapped-transaction trap**: `CREATE INDEX CONCURRENTLY` inside a Prisma/Drizzle migration
- 🟡 **Silent break**: FK / CHECK / UNIQUE without `NOT VALID`, rename column/table
- 🔵 Volatile defaults, non-concurrent `DROP INDEX`

### Supported migrations
Prisma · Drizzle · Rails ActiveRecord · raw SQL (Postgres + MySQL dialects).

### Setup (2 min, no API key needed)

```yaml
# .github/workflows/migration-review.yml
name: Migration Autopilot
on: pull_request
permissions:
  contents: read
  pull-requests: write
jobs:
  review:
    runs-on: ubuntu-latest
    steps:
      - uses: isabellehuecloser-ctrl/migration-autopilot@v0
        with:
          fail-on: high     # block merge on dangerous migrations
```

Deterministic rule engine — works without an OpenAI key. Optional `api-key` only enriches findings with plain-English explanations.

Hosted Pro version (1-click install, dashboard, multi-repo policy) coming — early access:
https://migration.useautopilot.dev

