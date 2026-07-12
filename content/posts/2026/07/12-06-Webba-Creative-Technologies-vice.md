---
title: VICE Security Audit
date: 2026-07-12 06:05:10 +00:00
tags:
  - Webba-Creative-Technologies
  - GitHub Actions
draft: false
repo: https://github.com/Webba-Creative-Technologies/vice
marketplace: https://github.com/marketplace/actions/vice-security-audit
version: v3.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Webba-Creative-Technologies/vice** to version **v3.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vice-security-audit) to find the latest changes.

## What's Changed

## Summary

VICE 3.3.0 strengthens remote and local audits with stricter scope controls,
safer probes, clearer evidence and more reliable reports.

This release keeps the existing CLI commands, `runScan` API, scan profiles and
GitHub Action inputs compatible.

## Security and scope

- Strict URL, DNS, redirect, browser and raw socket scope enforcement
- Per-scan isolation, cancellation, request budgets and bounded concurrency
- Non-destructive remote probes for APIs, authentication, storage and login flows
- Credentials kept on the original target and removed from reports and logs
- Sensitive values redacted in JSON, SARIF, console and HTML reports

## Detection quality

- Evidence-based classification for Supabase, APIs, GraphQL, WebSockets, TLS and exposed services
- Stable rule IDs, fingerprints, confidence levels and versioned scoring
- Better distinction between confirmed findings, heuristics and public information
- Reduced false positives for secrets, source maps, CORS, files, forms and public data
- Deterministic client bundle collection for consistent CLI and platform results

## Reports and GitHub Action

- Coverage, module errors, metrics and score reliability included in JSON reports
- Per-rule score breakdown for easier result review
- Live progress restored for interactive CLI scans
- SARIF paths validated for GitHub Code Scanning
- GitHub Action updated for CodeQL v4 and current Node-based actions
- The moving `v3` tag now points to this release

## Validation

- 244 engine, reporter and CLI tests
- GitHub Action self-audit completed successfully
- npm audit reports no known vulnerabilities
- Published package contains no tests, local reports or environment files

## Upgrade

```bash
npm install -g vice-security@latest
```

GitHub Action users can keep the current major tag:

```yaml
- uses: Webba-Creative-Technologies/vice@v3
```

