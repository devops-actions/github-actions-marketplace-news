---
title: Runner Guard
date: 2026-04-07 06:15:18 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.9.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a CI/CD supply chain security scanner designed for GitHub Actions workflows. It automates the detection and remediation of vulnerabilities such as pipeline injection, unpinned dependencies, AI configuration poisoning, and compromised packages, providing a comprehensive security score and auto-fix capabilities. This tool streamlines multi-repo scanning, identifies threats in dependency build pipelines, and enhances workflow security through actionable insights and automated fixes.

## What's Changed

## What's New

**`runner-guard audit-deps`** — Resolves your project's dependencies to their source repositories and scans each repo's CI/CD pipeline for vulnerabilities. Answers the question: "are my dependencies' build pipelines secure?"

### Features
- Parses npm (package-lock.json), Python (requirements.txt), and Go (go.sum) lock files
- Resolves packages to source repos via npm registry, PyPI, and Go module paths
- Scans each upstream repo's GitHub Actions workflows using the full rule engine
- Parallel scanning with `--concurrency` flag (default: 5)
- Runner Guard Score per upstream dependency
- Console table, JSON output, and `--fail-on` threshold support
- Interactive menu option 4 now active

### Example

```bash
runner-guard audit-deps .                    # scan upstream CI/CD pipelines
runner-guard audit-deps . --format json      # JSON output
runner-guard audit-deps . --concurrency 10   # parallel scanning
```

### Full Changelog
https://github.com/Vigilant-LLC/runner-guard/compare/v2.8.0...v2.9.0
