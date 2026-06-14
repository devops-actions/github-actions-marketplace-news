---
title: SecURL Security Posture Scan
date: 2026-06-14 15:11:25 +00:00
tags:
  - this-is-securl
  - GitHub Actions
draft: false
repo: https://github.com/this-is-securl/scan-action
marketplace: https://github.com/marketplace/actions/securl-security-posture-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/this-is-securl/scan-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/securl-security-posture-scan) to find the latest changes.

## What's Changed

## What it does

Passive external security posture analysis for public web targets — directly in your CI pipeline.

- Scans any public URL for security headers, TLS, DNS/email trust, third-party surface, and passive signals
- Produces a posture grade (A–F) and score (0–100)
- Uploads SARIF findings to GitHub Code Scanning
- Posts a PR comment with the posture table on every pull request
- Supports CI policy gates: fail on severity, score drops, or regressions against a saved baseline

## Quick start

```yaml
- uses: this-is-securl/scan-action@v1
  with:
    url: https://example.com
```

## Powered by

[@securl/core](https://www.npmjs.com/package/@securl/core) — the open-source SecURL engine.
