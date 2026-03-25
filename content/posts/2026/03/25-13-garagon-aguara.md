---
title: Aguara Security Scanner
date: 2026-03-25 13:43:45 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.12.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.12.1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanner designed to detect and prevent threats such as prompt injection, data exfiltration, and supply-chain attacks in AI agent skills and MCP servers before deployment. It automates comprehensive static analysis using advanced techniques like pattern matching, NLP, taint tracking, and cross-file toxic flow analysis to identify vulnerabilities and obfuscated payloads. Key features include 189 detection rules, multi-layer threat analysis, encoded evasion detection, context-aware scanning, and aggregate risk scoring for enhanced security and auditability.

## Release notes

## v0.12.1 - Fix .pth false positives

Fixes false positives where `aguara check` flagged legitimate Python ecosystem `.pth` files as CRITICAL.

### Problem

`_virtualenv.pth` (present in every virtualenv and uv cache) contains `import _virtualenv`, which triggered the executable .pth detection. Users running `aguara check` got dozens of CRITICAL findings from their uv cache, all false positives.

### Fix

Allowlist of known-safe .pth files that legitimately use import statements for site customization:

- `_virtualenv.pth` (virtualenv)
- `distutils-precedence.pth` (setuptools)
- `easy-install.pth` (setuptools legacy)
- `setuptools.pth` (setuptools)
- `coverage.pth` (coverage.py)
- `zope-nspkg.pth` (zope.interface)

Malicious .pth files (subprocess, exec, eval, etc.) are still detected as CRITICAL.

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.12.0...v0.12.1
