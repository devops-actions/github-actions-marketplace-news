---
title: Muninn Security Scanner
date: 2026-06-14 22:12:48 +00:00
tags:
  - skaldlab
  - GitHub Actions
draft: false
repo: https://github.com/skaldlab/muninn
marketplace: https://github.com/marketplace/actions/muninn-security-scanner
version: v0.1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/skaldlab/muninn** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/muninn-security-scanner) to find the latest changes.

## What's Changed

# Changelog

## [0.1.0] - 2026-06-14

### Added
- 8 security scanners: gitleaks, zizmor, actionlint, poutine,
  semgrep, osv-scanner, trivy, checkov
- Unified Finding schema with fingerprinting
- Three output formats: SARIF 2.1.0, JSON, GitHub PR comment
- GitHub Action with outputs
- Config-driven scanner behavior via muninn.yml
- Suppression management with expiry dates
- 90%+ test coverage enforced in CI
- Integration tests with real scanner binaries
- Self-scan: Muninn scans itself on every PR

Built by Skald Lab — skaldlab.dev

