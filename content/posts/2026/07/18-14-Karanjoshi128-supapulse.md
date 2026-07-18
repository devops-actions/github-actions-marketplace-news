---
title: SupaPulse — Supabase keep-alive
date: 2026-07-18 14:32:43 +00:00
tags:
  - Karanjoshi128
  - GitHub Actions
draft: false
repo: https://github.com/Karanjoshi128/supapulse
marketplace: https://github.com/marketplace/actions/supapulse-supabase-keep-alive
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The GitHub Action SupaPulse keeps a Supabase free-tier project from pausing by proving each ping actually reached Postgres, sending a random nonce with the ping and expecting it to be echoed back within two timestamps. If the check fails, it exits non-zero, triggering a red run in GitHub Actions that emails the user about the failure. The action also warns users about expiring anon keys and public repositories being disabled by GitHub.
---


Version updated for **https://github.com/Karanjoshi128/supapulse** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supapulse-supabase-keep-alive) to find the latest changes.

## Action Summary

The GitHub Action SupaPulse keeps a Supabase free-tier project from pausing by proving each ping actually reached Postgres, sending a random nonce with the ping and expecting it to be echoed back within two timestamps. If the check fails, it exits non-zero, triggering a red run in GitHub Actions that emails the user about the failure. The action also warns users about expiring anon keys and public repositories being disabled by GitHub.

## What's Changed

## SupaPulse v1.0.0

A Supabase keep-alive GitHub Action that **proves the ping actually reached Postgres**, and fails loudly when it stops working.

### Why
Supabase free-tier projects pause after about a week of inactivity, and restoring is a manual dashboard click. Most keep-alives report success even when they failed - one pings an endpoint that never touches the database, one swallows its own errors and exits green. This one refuses to.

### What it does
- **Provable ping** - a random nonce round-trips through Postgres, so a cached `200 OK` can't fake success.
- **Fails red** on any failure, so a dead keep-alive emails you.
- **Refuses `service_role`/PAT keys**; warns before your anon key expires and before GitHub's 60-day public-repo disable.
- **Zero dependencies** - the whole action is one auditable file.
- Optional degraded `select` mode for projects that skip the SQL.

### Usage

    - uses: Karanjoshi128/supapulse@v1
      with:
        anon-key: ${{ secrets.SUPABASE_ANON_KEY }}

Run `sql/supapulse.sql` once per project first. Full setup in the README.

