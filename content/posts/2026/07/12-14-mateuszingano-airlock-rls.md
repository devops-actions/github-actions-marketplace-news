---
title: Airlock RLS — CI Gate for Supabase
date: 2026-07-12 14:45:52 +00:00
tags:
  - mateuszingano
  - GitHub Actions
draft: false
repo: https://github.com/mateuszingano/airlock-rls
marketplace: https://github.com/marketplace/actions/airlock-rls-ci-gate-for-supabase
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mateuszingano/airlock-rls** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/airlock-rls-ci-gate-for-supabase) to find the latest changes.

## What's Changed

**The CI gate for Supabase RLS.** Fails your build when a table ships without RLS, a policy is permissive (`USING (true)`), or anon can read/write without scoping — the class of bug scanners miss because they check *presence*, not *logic*.

Add it to any workflow:

```yaml
- uses: mateuszingano/airlock-rls@v1
  with:
    db-url: ${{ secrets.SUPABASE_DB_URL }}
    allow: "public_status_select"   # optional: intentionally-public policies
```

### What it checks
- Tables without RLS, `USING (true)`, writes without `WITH CHECK`
- `SECURITY DEFINER` functions anon can execute, views that bypass RLS, Storage/Realtime exposure
- **DAST**: actually reads *and* writes with the anon key to prove exposure (safe — empty payload never persists)

### Since v0.1.0
- fix: connect to Supabase over SSL without cert-chain failure
- fix: `write_unchecked` false positive on scoped `ALL` policies
- add: gated integration test running `audit()` against a real Postgres
- add: repository metadata + `SECURITY.md`

Also on npm: `npx airlock-rls@0.1.2`. MIT. Not affiliated with Supabase.
