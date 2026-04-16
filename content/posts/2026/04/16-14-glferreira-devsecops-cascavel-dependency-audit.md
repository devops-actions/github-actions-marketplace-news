---
title: Cascavel Dependency Audit
date: 2026-04-16 14:14:42 +00:00
tags:
  - glferreira-devsecops
  - GitHub Actions
draft: false
repo: https://github.com/glferreira-devsecops/cascavel-dependency-audit
marketplace: https://github.com/marketplace/actions/cascavel-dependency-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/glferreira-devsecops/cascavel-dependency-audit** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cascavel-dependency-audit) to find the latest changes.

## Action Summary

Cascavel Dependency Audit is a GitHub Action that automates the detection of vulnerabilities in project dependencies across seven major ecosystems (e.g., npm, pip, Go, Ruby). It scans package files, queries the Google OSV database for known CVEs, generates detailed reports (including SARIF format), and blocks CI/CD pipelines if critical vulnerabilities are found. This zero-configuration tool simplifies dependency security by supporting multiple ecosystems, integrating with native tools when available, and providing robust reporting and ignore options.

## What's Changed

## 📦 Cascavel Dependency Audit v1.0.0

**Multi-Ecosystem CVE Scanner for CI/CD Pipelines**

### Features
- 📦 7 ecosystems: npm, pip, Go, Ruby, Rust, PHP, Java
- 🔍 Auto-detection of package files
- 🌐 Google OSV database for vulnerability data
- 🔒 SARIF output for GitHub Security tab
- 🚫 CVE ignore list for accepted risks
- 📊 GitHub Step Summary
- ⚡ Native npm audit and govulncheck integration

### Quick Start
```yaml
- uses: glferreira-devsecops/cascavel-dependency-audit@v1
```

*Built by [RET Tecnologia](https://rettecnologia.org)*
