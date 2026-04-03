---
title: Runner Guard
date: 2026-04-03 13:45:07 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a CI/CD vulnerability scanner designed to analyze GitHub Actions workflows for security risks, including injection paths and hidden malicious payloads. It automates the detection of critical vulnerabilities such as misconfigured `pull_request_target` workflows that expose repository secrets and supply chain attacks involving invisible Unicode steganography. By performing static taint analysis and byte-level scanning, Runner Guard mitigates risks of AI-driven exploitation and enhances the security of software supply chains.

## What's Changed

### What's new in v2.6.0

**Active campaign IOC detection:**
- 31 threat signatures across 5 campaigns (up from 11), organized in `rules/signatures/` directory
- TeamPCP campaign: C2 domains (scan.aquasecurtiy.org, checkmarx.zone, models.litellm.cloud), process memory harvesting, archive exfiltration, tag force-push patterns
- UNC1069/Axios campaign: sfrclak[.]com C2 domain, plain-crypto-js malicious package, postinstall RAT chain, temp-exec-delete pattern
- Telnyx campaign: WAV steganography payload extraction, Startup folder persistence, AES-256-CBC/RSA-4096 exfiltration
- General supply chain: environment variable harvesting, curl exfiltration to new domains
- New IOC types: ioc-domain (C2 domains with defanged notation support) and ioc-package (malicious package names)

**Runner Guard Score:**
- CI/CD security score (0-100) with letter grade displayed after every scan
- Category breakdown: Pinning, Permissions, Injection, Triggers, IOCs
- Works on both local and remote scans

**Interactive CLI menu:**
- Run `runner-guard` with no arguments for a guided experience
- Sub-menus for scan (local vs remote with path confirmation) and fix
- Coming-soon placeholders for upcoming features (batch scanning, dependency checking, upstream audit)
- Power users unaffected: all flag-based CLI usage works unchanged

**Signature directory restructure:**
- Signatures moved from single `signatures.yaml` to `rules/signatures/` directory
- One file per campaign/threat actor for easy browsing and contribution
- Backward compatible: falls back to single file if directory not present
