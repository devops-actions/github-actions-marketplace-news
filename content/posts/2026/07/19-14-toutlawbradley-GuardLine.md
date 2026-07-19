---
title: GuardLine Security Scan
date: 2026-07-19 14:34:03 +00:00
tags:
  - toutlawbradley
  - GitHub Actions
draft: false
repo: https://github.com/toutlawbradley/GuardLine
marketplace: https://github.com/marketplace/actions/guardline-security-scan
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  GuardLine is a GitHub Action designed to perform security scans on pull requests, focusing on secrets detection, dependency vulnerabilities, configuration risks, code patterns, and permission issues. It posts findings in the PR comment and SARIF format, allowing for easy visibility of potential security risks. The action supports three scan levels: quick, standard, and deep, with the standard level being the default for most repositories.
---


Version updated for **https://github.com/toutlawbradley/GuardLine** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardline-security-scan) to find the latest changes.

## Action Summary

GuardLine is a GitHub Action designed to perform security scans on pull requests, focusing on secrets detection, dependency vulnerabilities, configuration risks, code patterns, and permission issues. It posts findings in the PR comment and SARIF format, allowing for easy visibility of potential security risks. The action supports three scan levels: quick, standard, and deep, with the standard level being the default for most repositories.

## What's Changed

GuardLine v1.1.0 — five scanners, SARIF integration, and a configurable policy gate.

## What's included

- **Secrets Scanner** — Detects hardcoded API keys, tokens, passwords, and credentials (regex + entropy analysis)
- **Dependency Scanner** — Checks packages against the OSV.dev vulnerability database for known CVEs
- **Config Auditor** — Identifies insecure Dockerfile and configuration issues
- **Code Pattern Analyzer** — Flags SQL injection and unsafe `eval()` usage
- **Permission Scanner** — Detects overly permissive file permissions on sensitive files (new in this release)

## New in v1.1.0

- SARIF output — findings now appear natively in GitHub's Security tab
- Configurable policy gate — fails the build based on `.guardline.yml`'s `thresholds.fail-on` setting (defaults to `critical`)
- Fixed: PermissionsScanner is now correctly registered and actually runs (was previously built but never wired into the orchestrator)

## Quick start

​```yaml
permissions:
  security-events: write
  issues: write
  pull-requests: write

- uses: toutlawbradley/GuardLine@v1.1.0
  with:
    scan-level: standard
​```

Full test suite: 10/10 passing.
