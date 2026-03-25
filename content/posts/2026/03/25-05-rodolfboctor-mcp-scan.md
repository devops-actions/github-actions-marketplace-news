---
title: mcp-scan
date: 2026-03-25 05:59:48 +00:00
tags:
  - rodolfboctor
  - GitHub Actions
draft: false
repo: https://github.com/rodolfboctor/mcp-scan
marketplace: https://github.com/marketplace/actions/mcp-scan
version: v1.7.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/rodolfboctor/mcp-scan** to version **v1.7.3**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-scan) to find the latest changes.

## Action Summary

The **mcp-scan** GitHub Action is a security scanner designed to automatically analyze MCP server configurations for vulnerabilities and potential risks. It detects issues such as hardcoded secrets, malicious packages, insecure permissions, and other security flaws across various tools and platforms. By automating configuration audits, it helps users identify and address critical security concerns, improving the overall safety and reliability of their server setups.

## Release notes

## What's changed

### Security fixes
- **Secret scanner**: Removed 7 false-positive-prone patterns that matched generic strings (AWS Secret Key, Bitbucket App Password, duplicate Firebase, and several prefix-less patterns). All replaced with proper prefix-anchored regexes.
- **CI command**: Fixed double JSON output — `mcp-scan --ci` was printing two JSON objects to stdout, breaking CI consumers.
- **Fix command**: Fixed process hang — `readline` interface now scoped inside `runFix()`, preventing Node from staying alive after `--fix` completes.

### Reliability fixes  
- **Audit logger**: Fingerprint writes now use atomic write (temp file + rename) to prevent corruption on crash.
- **Package scanner**: Added 8s timeout to npm registry fetch to prevent hangs on slow networks.
- **Supply chain scanner**: Offline trust score reduced to 40 when package has known CVEs.
- **Permission scanner**: Type guard added for non-string args before string methods are called.
- **Official servers**: Removed duplicate `figma-mcp` entry from trusted community servers list.

### No breaking changes

**Full changelog**: https://github.com/rodolfboctor/mcp-scan/compare/v1.7.2...v1.7.3
