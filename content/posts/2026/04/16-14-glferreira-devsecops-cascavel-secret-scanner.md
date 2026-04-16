---
title: Cascavel Secret Scanner
date: 2026-04-16 14:14:33 +00:00
tags:
  - glferreira-devsecops
  - GitHub Actions
draft: false
repo: https://github.com/glferreira-devsecops/cascavel-secret-scanner
marketplace: https://github.com/marketplace/actions/cascavel-secret-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/glferreira-devsecops/cascavel-secret-scanner** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cascavel-secret-scanner) to find the latest changes.

## Action Summary

Cascavel Secret Scanner is a GitHub Action designed for detecting and preventing hardcoded secrets, such as AWS keys, GitHub tokens, and database passwords, from reaching production environments in CI/CD pipelines. It automates secret scanning across 30+ file types with zero configuration, leveraging over 40 curated detection patterns and providing features like SARIF support, log redaction, and optional Git history scanning. This tool simplifies enterprise-grade secret management, reducing setup complexity and improving security workflows.

## What's Changed

## 🐍 Cascavel Secret Scanner v1.0.0

**Enterprise-grade secret detection for CI/CD pipelines.**

### Features
- 🔍 40+ detection patterns (AWS, GCP, Azure, GitHub, Stripe, Slack, Firebase, and more)
- 🎯 Severity filtering: low, medium, high, critical
- 🔒 SARIF output for GitHub Security tab integration
- 📊 GitHub Step Summary with results table
- 🕵️ Git history scanning for deleted secrets
- 📋 Baseline support for suppressing known findings
- 🔐 Automatic secret redaction in logs
- 📁 30+ file types supported
- ⚡ Zero configuration required

### Quick Start
```yaml
- uses: glferreira-devsecops/cascavel-secret-scanner@v1
```

### Built by
[RET Tecnologia](https://rettecnologia.org) — Software Engineering, Web Development, and Cybersecurity Services.

---

*Powered by the [Cascavel Security Framework](https://github.com/glferreira-devsecops/Cascavel)*
