---
title: Scrutora Scan
date: 2026-07-08 14:55:40 +00:00
tags:
  - Scrutora
  - GitHub Actions
draft: false
repo: https://github.com/Scrutora/scrutora-scan
marketplace: https://github.com/marketplace/actions/scrutora-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Scrutora/scrutora-scan** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scrutora-scan) to find the latest changes.

## What's Changed

First public release of **Scrutora Scan** — free DPDPA & HIPAA compliance
code scanning in CI. Findings cite the exact obligation (e.g. DPDPA §8(5)), not a
generic rule id, and land in your **Security → Code scanning** tab. Runs offline:
**no API key, your code never leaves the runner.**

### Quick start
```yaml
- uses: actions/checkout@v4
- id: scan
  uses: Scrutora/dpdp-scan@v1
  with:
    frameworks: dpdpa,hipaa   # default: dpdpa
    fail-on: high             # none|low|medium|high|critical
- if: always()
  uses: github/codeql-action/upload-sarif@v3
  with:
    sarif_file: ${{ steps.scan.outputs.sarif-file }}

