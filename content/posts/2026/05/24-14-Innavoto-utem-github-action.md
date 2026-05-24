---
title: UTEM Security Scan
date: 2026-05-24 14:17:19 +00:00
tags:
  - Innavoto
  - GitHub Actions
draft: false
repo: https://github.com/Innavoto/utem-github-action
marketplace: https://github.com/marketplace/actions/utem-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Innavoto/utem-github-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/utem-security-scan) to find the latest changes.

## Action Summary

The UTEM Security Scan GitHub Action integrates automated security scanning into CI/CD workflows, enabling developers to detect vulnerabilities, secrets, misconfigurations, and compliance violations in their code. It ensures code quality and security by allowing users to define severity thresholds that can fail builds if critical issues are detected. Key capabilities include support for various scan types (e.g., code, vulnerability, compliance), customizable severity levels, and actionable outputs like detailed scan results and metrics.

## What's Changed

## UTEM Security Scan — GitHub Action v1.0.0

Run UTEM security scans in your CI/CD pipeline and fail builds on findings above a severity threshold.

### Quick Start

```yaml
- uses: Innavoto/utem-github-action@v1
  with:
    api-key: ${{ secrets.UTEM_API_KEY }}
    scan-type: code
    severity-threshold: high
```

### Features

- 9 configurable inputs (scan type, severity threshold, modules, timeout, etc.)
- 8 outputs (scan ID, finding counts by severity, dashboard URL, pass/fail status)
- Job summary with findings table
- Retry with exponential backoff + rate limit handling
- Node.js 20 with native fetch (single dependency: @actions/core)

### Scan Types

- `code` — SAST, SCA, secrets, IaC scanning
- `vulnerability` — CVE and vulnerability scanning
- `compliance` — Policy compliance assessment
- `full` — All scan modules

**Publisher:** Innavoto India Pvt Ltd
