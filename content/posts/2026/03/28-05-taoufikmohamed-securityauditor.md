---
title: SecurityAuditorScanner
date: 2026-03-28 05:57:27 +00:00
tags:
  - taoufikmohamed
  - GitHub Actions
draft: false
repo: https://github.com/taoufikmohamed/securityauditor
marketplace: https://github.com/marketplace/actions/securityauditorscanner
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/taoufikmohamed/securityauditor** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/securityauditorscanner) to find the latest changes.

## Action Summary

Security Auditor is an AI-driven DevSecOps tool designed to scan repositories written in various programming languages (e.g., Python, JavaScript, Go, Ruby, Java, PHP) for vulnerabilities such as SQL injection, hardcoded secrets, and insecure dependencies. It automates security tasks by generating AI-assisted fixes, creating pull requests for remediation, and optionally enforcing strict CI pipeline rules based on vulnerability severity. This action helps development teams streamline security workflows, reduce manual effort, and proactively address code and dependency risks.

## Release notes

# Security Auditor v1.2.0

## Highlights
- Expanded multi-language scanning: React, Go, Ruby, Java, and PHP.
- Added dependency manifest coverage for go.mod, Gemfile/Gemfile.lock, and composer.json.
- Improved PR automation reliability (base-branch resolution + GitHub CLI/API fallback handling).
- Updated workflow/docs/architecture assets for end-to-end consistency.

## CI and Action Improvements
- Added action inputs: `fail-on-findings`, `apply-safe-fixes`, `output-path`.
- Composite action execution standardized with PowerShell for cross-platform behavior.
- Strict scan + report output workflows documented with production-ready examples.

## Full Changelog
- Compare: https://github.com/taoufikmohamed/securityauditor/compare/v1.1.1...v1.2.0
