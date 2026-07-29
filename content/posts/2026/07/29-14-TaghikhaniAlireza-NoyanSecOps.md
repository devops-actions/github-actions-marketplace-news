---
title: NoyanSecOps
date: 2026-07-29 14:55:14 +00:00
tags:
  - TaghikhaniAlireza
  - GitHub Actions
draft: false
repo: https://github.com/TaghikhaniAlireza/NoyanSecOps
marketplace: https://github.com/marketplace/actions/noyansecops
version: v0.2.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates comprehensive DevSecOps tasks, including secret scanning, SAST, SCA, IaC scanning, and Dockerfile linting. It integrates multiple security tools into a single pipeline, supports configuration discovery, validation, caching, and customizable severity policies. The action generates SARIF reports for easy reporting and integration with other CI/CD tools.
---


Version updated for **https://github.com/TaghikhaniAlireza/NoyanSecOps** to version **v0.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/noyansecops) to find the latest changes.

## Action Summary

This GitHub Action automates comprehensive DevSecOps tasks, including secret scanning, SAST, SCA, IaC scanning, and Dockerfile linting. It integrates multiple security tools into a single pipeline, supports configuration discovery, validation, caching, and customizable severity policies. The action generates SARIF reports for easy reporting and integration with other CI/CD tools.

## What's Changed

feat(v0.2.1): introduce unified SARIF security reporting

BREAKING CHANGE: none

Added:
- Gitleaks SARIF output support
- Unified scanner reporting pipeline
- GitHub Security integration for secret findings
- Gitleaks artifact reporting

Improved:
- Security Gate now evaluates all scanners consistently
- Security reports now follow a single output structure
- Improved compatibility with enterprise security workflows

Scanners supported:
- Gitleaks
- Semgrep
- Trivy
- Checkov
- Hadolint
