---
title: Runner Guard
date: 2026-04-10 22:00:19 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v3.1.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v3.1.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a CI/CD security scanner for GitHub Actions workflows that detects vulnerabilities such as pipeline injection, unpinned dependencies, and compromised packages. It automates the identification and resolution of supply chain risks by scanning repositories, auditing upstream dependencies, and providing actionable outputs like auto-fixes, reports, and alerts. This tool helps ensure secure workflows by continuously monitoring dependencies and offering organization-wide scanning capabilities.

## What's Changed

### prt-scan Campaign IOCs
8 new threat signatures for the prt-scan campaign, an AI-powered GitHub Actions exploitation campaign active since March 2026 (500+ malicious PRs across enterprise and major OSS targets). Total: 39 signatures across 7 campaign files.

### JSON Output
The `fix` field in JSON output has been renamed to `remediation`. If you parse Runner Guard JSON output, update your field reference from `fix` to `remediation`.

### Full Changelog
https://github.com/Vigilant-LLC/runner-guard/compare/v3.1.3...v3.1.4
