---
title: Airlock Migration Guard
date: 2026-07-17 22:38:26 +00:00
tags:
  - mateuszingano
  - GitHub Actions
draft: false
repo: https://github.com/mateuszingano/airlock-migrate
marketplace: https://github.com/marketplace/actions/airlock-migration-guard
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  Migration Guard is a GitHub Action designed to prevent Supabase/Postgres migration scripts from introducing data leaks or breaking authentication by checking for certain conditions such as tables without RLS, disabled RLS, permissive policies, and dropped policies/triggers. It helps identify potential issues before they reach production, ensuring the integrity of the database schema and security measures are maintained.
---


Version updated for **https://github.com/mateuszingano/airlock-migrate** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/airlock-migration-guard) to find the latest changes.

## Action Summary

**Summary:**
Migration Guard is a GitHub Action designed to prevent Supabase/Postgres migration scripts from introducing data leaks or breaking authentication by checking for certain conditions such as tables without RLS, disabled RLS, permissive policies, and dropped policies/triggers. It helps identify potential issues before they reach production, ensuring the integrity of the database schema and security measures are maintained.

## What's Changed

First release. `uses: mateuszingano/airlock-migrate@v1` now resolves. The action runs `npx airlock-migrate` (published on npm).
