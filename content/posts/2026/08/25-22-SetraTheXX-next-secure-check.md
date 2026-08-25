---
title: Next Secure Check
date: 2026-08-25 22:51:20 +00:00
tags:
  - SetraTheXX
  - GitHub Actions
draft: false
repo: https://github.com/SetraTheXX/next-secure-check
marketplace: https://github.com/marketplace/actions/next-secure-check
version: v0.4.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  next-secure-check is a deterministic Next.js-focused static security scanner that automates common security mistakes before they become production issues. It uses rule-based pattern matching, syntax-level AST analysis, and file context to identify potential security vulnerabilities in Next.js projects without executing the code or using AI at runtime. The tool provides detailed findings with severity, confidence, location, context, evidence, and recommendations, making it a lightweight pre-release review signal for developers.
---


Version updated for **https://github.com/SetraTheXX/next-secure-check** to version **v0.4.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/next-secure-check) to find the latest changes.

## Action Summary

next-secure-check is a deterministic Next.js-focused static security scanner that automates common security mistakes before they become production issues. It uses rule-based pattern matching, syntax-level AST analysis, and file context to identify potential security vulnerabilities in Next.js projects without executing the code or using AI at runtime. The tool provides detailed findings with severity, confidence, location, context, evidence, and recommendations, making it a lightweight pre-release review signal for developers.

## What's Changed

## Release notes

v0.4.1 is a documentation-only CLI patch following the v0.4.0 bounded-analysis feature release.

### Included

- Updated the npm-facing CLI README with published v0.4 usage and reproducible commands.
- Clarified GitHub Actions, SARIF, and preset usage.
- Updated security support and contribution guidance for the published v0.4 line.
- No scanner, rule, reporter, or web runtime behavior changed.

### Validation

- 320 package tests
- 146 web tests
- Self-scan: 100/100, excellent, 0 findings
- Vulnerable fixture: 26 findings, critical
- Secure fixture: 99/100, excellent, 1 LOW

Findings remain review signals, not proof of exploitation.
