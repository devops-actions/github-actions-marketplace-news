---
title: GuardLine Security Scan
date: 2026-03-16 21:41:20 +00:00
tags:
  - outlawmetrics
  - GitHub Actions
draft: false
repo: https://github.com/outlawmetrics/GuardLine
marketplace: https://github.com/marketplace/actions/guardline-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/outlawmetrics/GuardLine** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardline-security-scan) to find the latest changes.

## Action Summary

GuardLine is a free, open-source GitHub Action designed to automate security scanning for pull requests, ensuring code is reviewed for vulnerabilities before reaching production. It detects issues such as hardcoded secrets, dependency vulnerabilities, insecure configurations, unsafe code patterns, and permission risks, providing actionable remediation steps directly on pull requests. By eliminating the need for external dashboards, services, or complex setup, it streamlines security checks and enhances development workflows.

## Release notes

GuardLine is a free, open-source security scanning tool that catches vulnerabilities before they reach production.

## What's included

- **Secrets Scanner** — Detects hardcoded API keys, tokens, passwords, and credentials
- **Dependency Scanner** — Checks packages against the OSV vulnerability database for known CVEs
- **Config Auditor** — Identifies insecure Dockerfile configurations
- **Code Pattern Analyzer** — Flags SQL injection, eval usage, and other dangerous patterns
- **Custom Rules** — Define your own detection patterns via config

## Quick start

Add GuardLine to any repo as a GitHub Action or run locally:
```bash
python -m src.main
```

## Stats

- 9 built-in detection rules
- 4 independent scanners
- OSV API integration for real-time vulnerability data
- Zero configuration required
