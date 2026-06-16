---
title: pgrls — Postgres RLS linter
date: 2026-06-16 15:49:39 +00:00
tags:
  - pgrls
  - GitHub Actions
draft: false
repo: https://github.com/pgrls/pgrls-action
marketplace: https://github.com/marketplace/actions/pgrls-postgres-rls-linter
version: v1.0.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pgrls/pgrls-action** to version **v1.0.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgrls-postgres-rls-linter) to find the latest changes.

## What's Changed

Marketplace copy refresh for **pgrls 0.31.0** — the catalog is now **57 lint rules**, 17 with mechanical auto-fixes.

Newly covered since the last refresh (0.29.0 → 0.31.0):

- **SEC043** — a legacy-`INHERITS` child with RLS off under an RLS-enforcing ancestor + a direct row-access grant is directly bypassable.
- **SEC044** — `ALTER DEFAULT PRIVILEGES … GRANT … ON TABLES TO PUBLIC` auto-grants every future table to a low-trust role, so a later table that forgets RLS is silently exposed.

No behavior change: the action installs pgrls from PyPI at run time, so it already runs the current rule set — this only refreshes the README headline, the `action.yml` Marketplace tagline, and the repo description. The floating `@v1` tag advances to v1.0.6.

