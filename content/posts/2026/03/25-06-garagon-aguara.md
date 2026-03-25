---
title: Aguara Security Scanner
date: 2026-03-25 06:00:59 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.12.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.12.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanner designed to detect and prevent vulnerabilities in AI agent skills and MCP (multi-capabilities platform) servers before deployment. It automates the identification of threats such as prompt injection, data exfiltration, supply-chain attacks, and obfuscated payloads using a multi-layer analysis engine, cross-file toxic flow detection, and advanced decoding techniques. With 189 detection rules and context-aware scanning, it provides comprehensive risk assessment and actionable insights to enhance the security of AI-driven systems.

## Release notes

## v0.12.0 - uvx Detection + Incident Response UX

Covers the exact litellm attack vector (uvx auto-download of compromised packages) and simplifies incident response to two commands.

### New rules

| Rule | Severity | Description |
|------|----------|-------------|
| MCPCFG_012 | HIGH | uvx/uv MCP server without version pin. Detects configs where uvx auto-downloads the latest version from PyPI on every run. |
| MCPCFG_013 | MEDIUM | pip install without --require-hashes in MCP server setup. |

155 real MCP servers in Aguara Watch use uvx/uv without version pins. All vulnerable to the same vector that compromised litellm.

### Incident response improvements

- **`aguara check` always scans caches** - uv, pip, and npx caches are now scanned by default (no flag needed). Cache scanning reads METADATA in dist-info directories and checks .pth files for executable content.
- **`aguara clean` defaults to Y** - confirmation changed from `[y/N]` to `[Y/n]`. Press Enter to proceed.

The workflow is now two commands, zero flags:

```
aguara check
aguara clean
```

### Stats

189 rules, 576 tests, 0 lint issues. Validated against 28,000+ skills with 0 false positives.

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.11.1...v0.12.0
