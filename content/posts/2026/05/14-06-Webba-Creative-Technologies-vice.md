---
title: VICE Security Audit
date: 2026-05-14 06:27:27 +00:00
tags:
  - Webba-Creative-Technologies
  - GitHub Actions
draft: false
repo: https://github.com/Webba-Creative-Technologies/vice
marketplace: https://github.com/marketplace/actions/vice-security-audit
version: v3.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Webba-Creative-Technologies/vice** to version **v3.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vice-security-audit) to find the latest changes.

## Action Summary

The VICE GitHub Action is a security auditing tool that automates vulnerability scanning for web applications during pull requests and pushes. It performs black-box and white-box tests, analyzing both live URLs and source code to detect issues such as SQL injection, XSS, and exposed secrets. Key capabilities include generating PR comments with security scores and findings, updating a live security badge in the repository, and integrating with GitHub Code Scanning to provide detailed annotations and score gating to prevent regressions.

## What's Changed

## Summary

  Patch release with 8 false positive fixes in remote scan modules. No new features, no breaking changes - install `vice-security@3.2.1` for cleaner scan reports.

  ## Fixes

  - **Sensitive Files**: SPA catch-all detection generalized for paths like `.env.local`, `.env.production`, `/api/`, `/.well-known/`, `.htaccess`, `server.js`. Size-similarity threshold widened to 250 bytes for i18n SPAs (Next.js, Nuxt) that vary the shell content slightly per route.
  - **Open Redirect**: only flagged when the `Location` header resolves to a different origin. Same-origin redirects that just preserve a query parameter (e.g. `/fr?redirect=https://evil.com`) are no longer reported.
  - **API SQL Injection**: third-party origins (Google Maps, Stripe, etc.) are now skipped. Detection regex tightened to specific per-database error signatures rather than the bare word "query".
  - **Dangling CNAME**: now checks NXDOMAIN via DNS resolution instead of HTTP 404. Vercel DNS validators (`*.vercel-dns-XXX.com`) and other infrastructure hosts that don't serve HTTP are no longer flagged.
  - **Cookies**: differentiates sensitive cookies (session, auth, token) from preference cookies (`NEXT_LOCALE`, theme, etc.). Preference cookies skip the HttpOnly check entirely since they need JS access.
  - **Generic Secret pattern**: skips identifier-shaped values (`fetch_client_secret`, `stripeWebhookKey`) and low-entropy values that are clearly variable names rather than actual secrets.
  - **API endpoints**: filters out documentation URLs (`docs.stripe.com`, `learn.microsoft.com`, etc.), unresolved template literals (`{prefix}.example.com`), and anchor-only URLs.
  - **Pattern dedup**: when a value matches both a specific pattern (Firebase API Key, Stripe key, etc.) and the Generic API Key pattern, only the specific one is reported.

  ## Upgrade

  ```bash
  npm install -g vice-security@latest
 ```
