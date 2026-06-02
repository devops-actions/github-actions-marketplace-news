---
title: pgrls — Postgres RLS linter
date: 2026-06-02 06:52:57 +00:00
tags:
  - pgrls
  - GitHub Actions
draft: false
repo: https://github.com/pgrls/pgrls-action
marketplace: https://github.com/marketplace/actions/pgrls-postgres-rls-linter
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pgrls/pgrls-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgrls-postgres-rls-linter) to find the latest changes.

## What's Changed

Marketplace copy refresh for **pgrls 0.16.0** — rule count 47 → **51 rules** (17 with mechanical auto-fixes).

**Highlight — `SEC038` (semantic anonymous-read, Z3-backed).** The semantic sibling of `SEC004`: it uses the Z3 SMT solver to *prove* a read-capable policy's `USING` clause is unconditionally true for an unauthenticated session, catching inverted-auth variants (e.g. `NOT (auth.uid() IS NOT NULL) OR …`) that pattern-matching misses. Activates with the optional `pgrls[diff-z3]` extra; the always-on syntactic `SEC004` guards inverted-auth out of the box.

No action behavior change: the action installs current pgrls from PyPI at run time, so `@v1` users already run 0.16.0's default rule set. This release refreshes the listing copy (`action.yml`, README, repo description) and advances the `v1` tag.
