---
title: pgrls — Postgres RLS linter
date: 2026-08-16 05:59:19 +00:00
tags:
  - pgrls
  - GitHub Actions
draft: false
repo: https://github.com/pgrls/pgrls-action
marketplace: https://github.com/marketplace/actions/pgrls-postgres-rls-linter
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action `pgrls-action` automates static analysis of PostgreSQL Row-Level Security (RLS) using the `pgrls` tool. It checks for policy bugs like broken tenant/per-user scoping and write-side holes, failing builds to prevent deployment of problematic RLS configurations. The action can either lint a live database's RLS state or serve as a pull-request gate to detect regressions and new issues in the schema without requiring access to a running database or Docker container.
---


Version updated for **https://github.com/pgrls/pgrls-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pgrls-postgres-rls-linter) to find the latest changes.

## Action Summary

The GitHub Action `pgrls-action` automates static analysis of PostgreSQL Row-Level Security (RLS) using the `pgrls` tool. It checks for policy bugs like broken tenant/per-user scoping and write-side holes, failing builds to prevent deployment of problematic RLS configurations. The action can either lint a live database's RLS state or serve as a pull-request gate to detect regressions and new issues in the schema without requiring access to a running database or Docker container.

## What's Changed

Marketplace and README copy: **19** rules with mechanical auto-fixes, not 20.

The SEC006 auto-fixer was removed in pgrls 0.53.0 — it was provably disjoint from its own rule, so it could never remediate a real finding and instead rewrote *clean* policies.

Rule count is unchanged at **67**: pgrls 0.54.0 added a `verify` mode (`--mode reachability`), not a lint rule. No behaviour change to the action itself; `v1` has been moved here.
