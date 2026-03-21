---
title: Nucleus Verify
date: 2026-03-21 21:22:12 +00:00
tags:
  - Alter-Menta-Technologies
  - GitHub Actions
draft: false
repo: https://github.com/Alter-Menta-Technologies/nucleus-verify-action
marketplace: https://github.com/marketplace/actions/nucleus-verify
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Alter-Menta-Technologies/nucleus-verify-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nucleus-verify) to find the latest changes.

## Action Summary

Nucleus Verify is a GitHub Action designed for deterministic code verification using cryptographically signed certificates. It automates comprehensive static analysis with 681 operators, mapping findings to 11 compliance frameworks (e.g., ISO 27001, GDPR, SOC 2) and generating trust scores, security findings, and a publicly accessible verification certificate. This action streamlines compliance validation, ensures code integrity, and provides actionable insights for improving security and quality.

## Release notes

Cryptographically signed code verification for your CI/CD pipeline.

Every scan produces:
- An Ed25519-signed certificate with a permanent public verification URL
- A deterministic proof pack — same code, same hash, every time
- Findings mapped to 11 compliance frameworks: DORA, FCA, NIST, OWASP, SOC 2, ISO 27001, GDPR, HIPAA, PCI-DSS

Quick start:
```yaml
- uses: Alter-Menta-Technologies/nucleus-verify-action@v1
  with:
    api_key: ${{ secrets.NUCLEUS_API_KEY }}
```

Get your API key at altermenta.com

Changes in v1.0.1:
- Increased scan timeout to 30 minutes for large repositories
- Graceful async handling for very large scans
