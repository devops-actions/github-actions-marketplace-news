---
title: SecURL Security Posture Scan
date: 2026-08-27 07:42:36 +00:00
tags:
  - this-is-securl
  - GitHub Actions
draft: false
repo: https://github.com/this-is-securl/scan-action
marketplace: https://github.com/marketplace/actions/securl-security-posture-scan
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The SecURL Website Posture Scan action automates the addition of passive external website posture evidence to GitHub Actions workflows. It checks public responses, redirects, TLS, headers, cookies, DNS, and other bounded signals without requiring a SecURL account or repository access. The action provides human-readable summaries and full JSON reports, supports optional policy gates based on scores and criticality levels, and integrates with GitHub integrations for PR comments and Code Scanning uploads. It is designed for use only with public targets owned or authorized to assess.
---


Version updated for **https://github.com/this-is-securl/scan-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/securl-security-posture-scan) to find the latest changes.

## Action Summary

The SecURL Website Posture Scan action automates the addition of passive external website posture evidence to GitHub Actions workflows. It checks public responses, redirects, TLS, headers, cookies, DNS, and other bounded signals without requiring a SecURL account or repository access. The action provides human-readable summaries and full JSON reports, supports optional policy gates based on scores and criticality levels, and integrates with GitHub integrations for PR comments and Code Scanning uploads. It is designed for use only with public targets owned or authorized to assess.

## What's Changed

## SecURL Marketplace action restored

This release replaces the obsolete v1 implementation with a production-aligned, permission-minimal action.

- runs the pinned `securl@1.28.6` package instead of the deprecated predecessor
- writes the native SecURL GitHub job summary and hosted continuation
- safely constructs CLI arguments from validated inputs
- returns current score, grade, finding counts, pass state, JSON and SARIF paths
- keeps PR comments and Code Scanning uploads off by default
- pins all third-party actions to reviewed commit SHAs on current GitHub runtimes
- adds end-to-end smoke and fail-closed input validation CI
- updates the documentation, privacy boundary, package links and repository links

### Migration from v1

Use `this-is-securl/scan-action@v2`. The removed `format` input was not honored consistently by v1. Set `post-pr-comment: "true"` or `upload-sarif: "true"` explicitly and grant the documented write permission if either integration is required.

