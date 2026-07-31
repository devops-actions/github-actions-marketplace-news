---
title: Apple Client Secret Rotator
date: 2026-07-31 22:39:30 +00:00
tags:
  - oskar-makarov
  - GitHub Actions
draft: false
repo: https://github.com/oskar-makarov/apple-client-secret-rotator
marketplace: https://github.com/marketplace/actions/apple-client-secret-rotator
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Apple Client Secret Rotator Action automates the process of regenerating the `client_secret` JWT used by Sign in with Apple, a 6-month-expiring token. This action ensures that users don't encounter silent login issues due to expired tokens. It includes outputs only mode for integration into different authentication services and supports Supabase for automatic updates.
---


Version updated for **https://github.com/oskar-makarov/apple-client-secret-rotator** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/apple-client-secret-rotator) to find the latest changes.

## Action Summary

The Apple Client Secret Rotator Action automates the process of regenerating the `client_secret` JWT used by Sign in with Apple, a 6-month-expiring token. This action ensures that users don't encounter silent login issues due to expired tokens. It includes outputs only mode for integration into different authentication services and supports Supabase for automatic updates.

## What's Changed

First stable release. 🍎🔄

**Apple Client Secret Rotator** — a zero-dependency GitHub Action that automatically rotates your Sign in with Apple `client_secret` (an ES256 JWT that expires after at most ~6 months) and updates it in Supabase via the Management API.

## Highlights

- **Zero dependencies** — pure Node built-ins, the entire logic is one readable file, `rotate.js`
- **Supabase auto-update** via the Management API (`PATCH /v1/projects/{ref}/config/auth`)
- **Output-only mode** for Firebase, Auth0, self-hosted GoTrue or any other stack
- **Secret safety** — the JWT is masked in logs (`::add-mask::`) and never printed
- **Loud failures** — invalid inputs, a broken `.p8` key or a Supabase API error fail the workflow with a clear message, so you find out from a failed-run email, not from your users
- **Tested** — 8-test suite covering ES256 signature verification, claims, input validation, `.p8` normalization and the exact Supabase request; CI runs on Node 18/20/22

## Usage

```yaml
- uses: oskar-makarov/apple-client-secret-rotator@v1
  with:
    apple_team_id: ${{ secrets.APPLE_TEAM_ID }}
    apple_key_id: ${{ secrets.APPLE_KEY_ID }}
    apple_services_id: com.example.app.web
    apple_p8: ${{ secrets.APPLE_P8 }}
    supabase_project_ref: your-project-ref
    supabase_access_token: ${{ secrets.SUPABASE_ACCESS_TOKEN }}
