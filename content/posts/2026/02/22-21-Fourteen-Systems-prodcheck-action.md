---
title: Prodcheck — Production Readiness Scanner for Next.js
date: 2026-02-22 21:14:31 +00:00
tags:
  - Fourteen-Systems
  - GitHub Actions
draft: false
repo: https://github.com/Fourteen-Systems/prodcheck-action
marketplace: https://github.com/marketplace/actions/prodcheck-production-readiness-scanner-for-next-js
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Fourteen-Systems/prodcheck-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prodcheck-production-readiness-scanner-for-next-js) to find the latest changes.

## Action Summary

The Prodcheck GitHub Action is designed to analyze Next.js App Router codebases for security vulnerabilities, including unprotected routes, missing rate limiting, and SSRF risks. It automates code scanning, provides detailed findings via PR comments and inline annotations, and verifies authentication and rate-limiting implementations using TypeScript AST analysis. This action streamlines security reviews by identifying issues, grouping findings, and enforcing thresholds to ensure code quality and mitigate risks.

## Release notes

## What's New

- **Auth-aware rate limit suppression** — routes with strongly enforced auth no longer produce rate-limit findings
- **General rate limit detection** — recognizes any function with `rateLimit`/`ratelimit`/`rate_limit` in the name
- **`prodcheck:public-intent` annotation** — suppress auth findings on intentionally public routes
- **Broader auth detection** — improved pattern matching for auth enforcement
- **Prodcheck 0.3.2 engine** — tenancy rule context window improvements, baseline key collision fix

## Requirements

Requires a [Prodcheck Pro](https://fourteensystems.com/prodcheck) license key. Set `PRODCHECK_PRO_KEY` as a repository secret.

