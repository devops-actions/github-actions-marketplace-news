---
title: Route Auditor
date: 2026-04-04 21:41:41 +00:00
tags:
  - drbarzaga
  - GitHub Actions
draft: false
repo: https://github.com/drbarzaga/route-auditor
marketplace: https://github.com/marketplace/actions/route-auditor
version: route-auditor/cli5.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/drbarzaga/route-auditor** to version **@route-auditor/cli@5.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/route-auditor) to find the latest changes.

## Action Summary

The `route-auditor` GitHub Action is designed to scan Next.js projects for security vulnerabilities in routes, such as missing authentication, CSRF protection gaps, permissive CORS policies, hardcoded secrets, and more. It automates the detection of common security issues across App Router, Pages Router, and API Routes, providing tailored fix suggestions based on the project's authentication, validation, and rate-limiting libraries. This tool helps developers proactively address security risks before deployment to ensure safer web applications.

## What's Changed

### Major Changes

-   ded915b: Reduce false positives for routes protected by centralized auth mechanisms.

