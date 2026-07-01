---
title: RepoScope Security & Compliance Scanner
date: 2026-07-01 14:51:16 +00:00
tags:
  - xdun1698
  - GitHub Actions
draft: false
repo: https://github.com/xdun1698/reposcope-action
marketplace: https://github.com/marketplace/actions/reposcope-security-compliance-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/xdun1698/reposcope-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reposcope-security-compliance-scanner) to find the latest changes.

## What's Changed

## RepoScope Security & Compliance Scanner v1.0.0

First public release — run RepoScope's scanner in CI to catch security issues and generate audit-ready compliance evidence on every push and pull request.

### What's included
- **44 security detectors across 14 languages** — hardcoded secrets, SQL injection, XSS, command injection, TLS misconfigs, weak crypto, permissive CORS
- **Inline PR review comments** — one per finding with file, line, severity, CWE ID, and fix hint
- **GitHub Check run** — PASS/FAIL with a configurable score threshold and annotations on high/critical findings
- **Compliance report artifact** — HTML report mapping findings to OWASP Top 10, SOC 2 Type II, PCI-DSS v4.0, EU AI Act Article 12, and ISO/IEC 42001
- **Configurable build gate** — `fail-on` severity and score `threshold`
- **Inline suppression** via `reposcope-ignore` comments

Setup instructions and all inputs/outputs are in the [README](https://github.com/xdun1698/reposcope-action#readme).

---
*By [NxGen Tech Solutions](https://reposcope.app). Code-level controls only — a development aid, not a certification tool.*

