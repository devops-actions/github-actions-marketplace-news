---
title: BoundaryCI tenant-isolation scan
date: 2026-07-20 07:26:58 +00:00
tags:
  - sir-gig
  - GitHub Actions
draft: false
repo: https://github.com/sir-gig/boundaryci
marketplace: https://github.com/marketplace/actions/boundaryci-tenant-isolation-scan
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  BoundaryCI is a local CLI that helps developers catch cross-tenant authorization mistakes in Supabase and PostgreSQL projects by scanning SQL migrations, applying deterministic tenant isolation rules, and optionally using a Fireworks model for review. It catches specific types of security issues related to row-level security (RLS) policies and provides a way to manage baseline findings and waivers.
---


Version updated for **https://github.com/sir-gig/boundaryci** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/boundaryci-tenant-isolation-scan) to find the latest changes.

## Action Summary

BoundaryCI is a local CLI that helps developers catch cross-tenant authorization mistakes in Supabase and PostgreSQL projects by scanning SQL migrations, applying deterministic tenant isolation rules, and optionally using a Fireworks model for review. It catches specific types of security issues related to row-level security (RLS) policies and provides a way to manage baseline findings and waivers.

## What's Changed

## Managed Fireworks review

- Team, Growth, and Enterprise organizations can explicitly authorize server-managed Fireworks semantic review without exposing a provider key to GitHub.
- The runner performs a metadata-only eligibility check before sending locally redacted migration text.
- Organization, repository, and workflow opt-outs keep customer control explicit.
- Managed findings remain advisory by default, and deterministic scanning continues through provider failures.
- The dashboard now includes consent controls, repository settings, AI scan history, permanent setup guidance, and managed-AI documentation.

See the [managed AI documentation](https://boundaryci.com/docs/managed-ai/) for the full data flow and setup.
