---
title: PQC Scan
date: 2026-07-14 15:03:55 +00:00
tags:
  - sachhg
  - GitHub Actions
draft: false
repo: https://github.com/sachhg/pqc-scan
marketplace: https://github.com/marketplace/actions/pqc-scan
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `pqc-scan` GitHub Action scans your codebase for quantum-vulnerable cryptography and provides detailed reports on which lines are vulnerable. It automates the process of identifying and migrating to post-quantum algorithms, helping developers stay secure against potential quantum attacks. The tool uses tree-sitter AST parsing to ensure accurate detection without relying on brittle regexes.
---


Version updated for **https://github.com/sachhg/pqc-scan** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pqc-scan) to find the latest changes.

## Action Summary

The `pqc-scan` GitHub Action scans your codebase for quantum-vulnerable cryptography and provides detailed reports on which lines are vulnerable. It automates the process of identifying and migrating to post-quantum algorithms, helping developers stay secure against potential quantum attacks. The tool uses tree-sitter AST parsing to ensure accurate detection without relying on brittle regexes.

## What's Changed

First public release of pqc-scan, plus a release to the GitHub MarketPlace

**What it does:** Scans your codebase for quantum-vulnerable cryptography 
(RSA, ECC, ECDSA, ECDH, DSA, SHA-1, MD5) and surfaces findings as inline 
PR annotations via SARIF, or as a CycloneDX Cryptographic Bill of Materials.

**Validated against:** pyca/cryptography and certbot/certbot.

**Supports:** Python, JavaScript/TypeScript, Java, Go, nginx/apache config files.

## Quick Start
```bash
pip install pqc-scan
pqc-scan scan .
```

## GitHub Action
```yaml
- uses: sachhg/pqc-scan@v0.1.0
```
