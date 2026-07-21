---
title: BoundaryCI tenant-isolation scan
date: 2026-07-21 15:08:35 +00:00
tags:
  - sir-gig
  - GitHub Actions
draft: false
repo: https://github.com/sir-gig/boundaryci
marketplace: https://github.com/marketplace/actions/boundaryci-tenant-isolation-scan
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  BoundaryCI is a local-first CLI tool designed to scan Supabase and PostgreSQL projects for cross-tenant authorization issues before migrations are applied to production. It reconstructs the final security state from SQL migrations, applies deterministic tenant-isolation rules, and optionally adds managed or bring-your-own-key Fireworks review for policy interactions that static rules cannot reliably understand. The tool is particularly useful for identifying exposed schema restrictions and ensuring that RLS policies are correctly configured across multiple tenants.
---


Version updated for **https://github.com/sir-gig/boundaryci** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/boundaryci-tenant-isolation-scan) to find the latest changes.

## Action Summary

BoundaryCI is a local-first CLI tool designed to scan Supabase and PostgreSQL projects for cross-tenant authorization issues before migrations are applied to production. It reconstructs the final security state from SQL migrations, applies deterministic tenant-isolation rules, and optionally adds managed or bring-your-own-key Fireworks review for policy interactions that static rules cannot reliably understand. The tool is particularly useful for identifying exposed schema restrictions and ensuring that RLS policies are correctly configured across multiple tenants.

## What's Changed

BoundaryCI v0.4.0 expands deterministic final-state analysis from six to twelve tenant-boundary checks.

## New deterministic checks

- **BND007:** exposed regular views without `security_invoker`
- **BND008:** RLS policies that authorize with user-editable metadata
- **BND009:** selectable materialized views in exposed API schemas
- **BND010:** client-reachable foreign tables in exposed API schemas
- **BND011:** default table or function grants to API roles
- **BND012:** exposed `SECURITY DEFINER` functions executable by `anon` or `authenticated`

The relation and privilege inventory now follows ordered object/default grants, revokes, schema-wide and multi-object changes, materialized views, foreign tables, function overloads, replacements, and exact privilege provenance. AI input truncation also prioritizes the newest migrations and reports partial or omitted coverage.

## Upgrade impact

BND007, BND008, BND009, BND010, and BND012 are high severity. An existing workflow using `fail-on: high` may fail when v0.4.0 identifies SQL that earlier versions did not report. Review each finding before changing a baseline; do not baseline a real exposure merely to restore CI.

- For BND007, use `security_invoker = true` on PostgreSQL 15+, or revoke `PUBLIC`, `anon`, and `authenticated` access and move the view to an unexposed schema.
- For BND008, prefer a protected tenant-membership table. Never use `user_metadata` or `raw_user_meta_data` for authorization; even server-controlled JWT claims may remain stale until refresh.
- For BND009/BND010, keep materialized views and foreign tables out of exposed schemas unless their API access is intentional and reviewed.
- For BND012, revoke direct API-role execution or expose a narrow wrapper that validates identity, membership, tenant correlation, and writable fields.

BoundaryCI remains static final-state migration analysis. It is not a penetration test or proof that an application is secure.

## Validation

- 46 CLI tests and 44 web tests
- production CLI/web builds and 29 pre-rendered public pages
- Deno formatting and all Edge Function checks
- secure fixture: zero findings; vulnerable fixture: all twelve deterministic checks
- installed-package smoke test and zero high-severity npm audit findings

