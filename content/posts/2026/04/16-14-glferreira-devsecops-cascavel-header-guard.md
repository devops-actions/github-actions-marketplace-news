---
title: Cascavel Header Guard
date: 2026-04-16 14:14:38 +00:00
tags:
  - glferreira-devsecops
  - GitHub Actions
draft: false
repo: https://github.com/glferreira-devsecops/cascavel-header-guard
marketplace: https://github.com/marketplace/actions/cascavel-header-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/glferreira-devsecops/cascavel-header-guard** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cascavel-header-guard) to find the latest changes.

## Action Summary

Cascavel Header Guard is a GitHub Action designed to analyze HTTP security headers in CI/CD pipelines. It audits web application URLs for the presence and quality of critical security headers (e.g., HSTS, CSP, X-Frame-Options), assigns a security score (A+ to F), and blocks deployments if headers fail to meet a specified threshold. This action helps teams proactively identify and address common web vulnerabilities, such as missing or misconfigured headers, before code reaches production.

## What's Changed

## 🛡️ Cascavel Header Guard v1.0.0

**HTTP Security Headers Analyzer for CI/CD Pipelines**

### Features
- 🔍 15+ security headers analyzed with quality validation
- 📊 Scoring (0-100) with A+ to F grades
- 🔴 Critical header detection (HSTS, CSP, X-Content-Type-Options)
- 🧪 Value quality analysis (HSTS max-age, CSP unsafe-inline)
- 🛡️ Server version disclosure detection
- 📋 JSON report with per-URL breakdown
- ⚡ Multi-URL scanning in one step

### Quick Start
```yaml
- uses: glferreira-devsecops/cascavel-header-guard@v1
  with:
    urls: 'https://your-app.com'
```

*Built by [RET Tecnologia](https://rettecnologia.org)*
