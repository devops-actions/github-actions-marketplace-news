---
title: Landsafe — Postgres migration safety
date: 2026-07-17 15:00:08 +00:00
tags:
  - landsafe-dev
  - GitHub Actions
draft: false
repo: https://github.com/landsafe-dev/action
marketplace: https://github.com/marketplace/actions/landsafe-postgres-migration-safety
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Landsafe GitHub Action checks PostgreSQL migration safety by analyzing the diff between two database schemas and identifying potential issues such as blocking index builds, full-table rewrites, and data loss. The action verifies these risks without connecting to or interacting with the actual database, ensuring that developers are aware of potential production impacts before merging migrations.
---


Version updated for **https://github.com/landsafe-dev/action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/landsafe-postgres-migration-safety) to find the latest changes.

## Action Summary

The Landsafe GitHub Action checks PostgreSQL migration safety by analyzing the diff between two database schemas and identifying potential issues such as blocking index builds, full-table rewrites, and data loss. The action verifies these risks without connecting to or interacting with the actual database, ensuring that developers are aware of potential production impacts before merging migrations.

## What's Changed

First public release.

Landsafe reads the SQL in your pull request and tells you which lock each migration takes, what that lock blocks, and how long it will hold — before it merges.

```yaml
- uses: actions/checkout@v4
- uses: landsafe-dev/action@v1
```

**28 rules**, every one version-aware: PG 11's fast `ADD COLUMN ... DEFAULT`, PG 12's scan-free `SET NOT NULL` via a valid CHECK, `REINDEX CONCURRENTLY`, `DETACH PARTITION CONCURRENTLY` in 14. It knows `DEFAULT 'free'` is catalog-only and `DEFAULT gen_random_uuid()` rewrites all 48 million rows, and it will only wake you up for the second one.

**What's in it**

- Sticky PR comment — updated in place, never spammed. Lock profile, what it blocks, the safe path.
- Advisory about merging, honest about signalling: the check goes red on a critical by default, and you can merge straight through it. It never holds a required status and never blocks a merge. `fail-on: never` to silence it.
- `mode: digest` — a weekly cross-repo rollup answering the question a single PR comment can't: which PRs merged with criticals unresolved. It reads the payloads Landsafe already wrote into your own PR comments, via your own token. If it can't read a repo, it says so and marks the counts a lower bound.
- Org-wide policy enforcement via the license: repos can tighten the fail threshold, never loosen it.
- `npx landsafe check --json` and `npx landsafe init` for AI agents writing migrations.

**Why you can audit it rather than trust it**

The engine has zero dependencies — its only import anywhere is `node:crypto`. No telemetry, no phone-home, no licensing server: verification is offline Ed25519 against a public key compiled in. No LLM in the analysis path — explicit rules over documented Postgres lock semantics, so the same migration always produces the same answer. `src/` and the tests are published next to `dist/`.

Pin a commit SHA rather than trusting me, as you should with any third-party Action.

**Limits**

Postgres only. It reads `.sql` — Rails/Django/Prisma migrations written in Ruby/Python/TypeScript aren't analyzed, only the SQL they generate. And it's brand new.

Free tier is the whole detection engine on unlimited repos and developers. Pro ($79/mo) adds ready-to-paste zero-downtime rewrites and impact estimated against your real table sizes. Business ($299/mo) adds the digest, org policy, and cross-repo dashboard. Details at [landsafe.dev](https://landsafe.dev).

