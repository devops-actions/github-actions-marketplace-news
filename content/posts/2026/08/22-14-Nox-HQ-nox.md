---
title: Nox Security Scanner
date: 2026-08-22 14:02:04 +00:00
tags:
  - Nox-HQ
  - GitHub Actions
draft: false
repo: https://github.com/Nox-HQ/nox
marketplace: https://github.com/marketplace/actions/nox-security-scanner
version: v1.29.1
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  The Nox action is an open-source, offline-first security scanner designed for AI application developers. It detects various vulnerabilities such as prompt injection, embedding leakage, agent over-privilege, and slopsquatting in their code without relying on external APIs or SaaS services. The tool provides comprehensive coverage of OWASP top 10 vulnerabilities and maps them to the OWASP MCP Top 10 for server hardening and tool poisoning.
---


Version updated for **https://github.com/Nox-HQ/nox** to version **v1.29.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nox-security-scanner) to find the latest changes.

## Action Summary

The Nox action is an open-source, offline-first security scanner designed for AI application developers. It detects various vulnerabilities such as prompt injection, embedding leakage, agent over-privilege, and slopsquatting in their code without relying on external APIs or SaaS services. The tool provides comprehensive coverage of OWASP top 10 vulnerabilities and maps them to the OWASP MCP Top 10 for server hardening and tool poisoning.

## What's Changed

## Nox v1.29.1 (2026-08-22T08:52:38Z)

Language-agnostic security scanner with first-class AI application security.

### Installation

#### macOS/Linux (Homebrew)
```bash
brew tap felixgeelhaar/tap
brew install nox
```

#### Direct Download
Download the appropriate archive for your platform from the assets below.

### What's Changed

## Changelog
### Bug Fixes
* aafdb3d44b54eb97d88ac5e548a3542cbf87a091 fix(fix): apply each upgrade in its own manifest's directory (#464)
* 88dc1146d33048a947633d2fec5757f2364b3ad3 fix(policy): a failing gate names the finding that failed it (#463)
### Others
* 4756ef30c46cb54f3aa6dbb478454ae4761e9f12 chore(deps): bump go.klarlabs.de/mcp from 1.24.0 to 1.24.1 (#457)
* e4d944230af69807d9836c35eb9f22c7d269e719 chore(deps): bump google.golang.org/protobuf from 1.36.11 to 1.36.12 (#459)
* 1d4eb9fdc46b613506fe285792fac7bbc91848cf chore(security): nox remediation (deps + actions) (#462)
* 432259d18ae874a861c7a51e9e42ba8fc46ae604 docs(changelog): 1.29.1 — remediations that actually remediate (#465)

**Full Changelog**: https://github.com/nox-hq/nox/compare/v1.29.0...v1.29.1


