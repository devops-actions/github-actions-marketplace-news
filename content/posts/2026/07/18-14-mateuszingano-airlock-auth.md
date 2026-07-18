---
title: Auth Route Guard
date: 2026-07-18 14:30:13 +00:00
tags:
  - mateuszingano
  - GitHub Actions
draft: false
repo: https://github.com/mateuszingano/airlock-auth
marketplace: https://github.com/marketplace/actions/auth-route-guard
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Auth Route Guard is a GitHub Action that scans Next.js projects to prevent server secrets from being exposed and provides warnings on unauthenticated mutations and webhooks. It flags potential security issues by checking `NEXT_PUBLIC_*` variables, mutating route handlers without auth checks, and webhook routes without signature verification. The action ensures build failure for critical findings and provides warnings for further review.
---


Version updated for **https://github.com/mateuszingano/airlock-auth** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auth-route-guard) to find the latest changes.

## Action Summary

Auth Route Guard is a GitHub Action that scans Next.js projects to prevent server secrets from being exposed and provides warnings on unauthenticated mutations and webhooks. It flags potential security issues by checking `NEXT_PUBLIC_*` variables, mutating route handlers without auth checks, and webhook routes without signature verification. The action ensures build failure for critical findings and provides warnings for further review.

## What's Changed

First release. `uses: mateuszingano/airlock-auth@v1` now resolves. The action runs `npx airlock-auth` (published on npm).
