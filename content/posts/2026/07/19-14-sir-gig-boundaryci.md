---
title: BoundaryCI tenant-isolation scan
date: 2026-07-19 14:37:07 +00:00
tags:
  - sir-gig
  - GitHub Actions
draft: false
repo: https://github.com/sir-gig/boundaryci
marketplace: https://github.com/marketplace/actions/boundaryci-tenant-isolation-scan
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  BoundaryCI is a local-first CLI that scans Supabase and PostgreSQL projects for security issues related to tenant isolation in RLS rules. It checks for exposed tables without RLS, missing or incorrect policies, and identifies potential bypasses by `SECURITY DEFINER` functions. BoundaryCI can also review policy interactions using a Fireworks model if configured, providing insights into how different policies interact. The tool is designed to help catch errors before a migration reaches production and offers features for baselining and managing security findings.
---


Version updated for **https://github.com/sir-gig/boundaryci** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/boundaryci-tenant-isolation-scan) to find the latest changes.

## Action Summary

BoundaryCI is a local-first CLI that scans Supabase and PostgreSQL projects for security issues related to tenant isolation in RLS rules. It checks for exposed tables without RLS, missing or incorrect policies, and identifies potential bypasses by `SECURITY DEFINER` functions. BoundaryCI can also review policy interactions using a Fireworks model if configured, providing insights into how different policies interact. The tool is designed to help catch errors before a migration reaches production and offers features for baselining and managing security findings.

## What's Changed

BoundaryCI Cloud private beta.

Added:
- Opt-in, secret-redacted scan upload from the CLI and GitHub Action.
- Repository-bound ingestion tokens and tenant-isolated Supabase scan history.
- Subscription status and monthly scan-limit enforcement.
- Authenticated organization and repository onboarding dashboard.
- Repository health, usage, scan history, and finding evidence views.

Dashboard: https://sir-gig.github.io/boundaryci/

CLI:

npx boundaryci scan .
