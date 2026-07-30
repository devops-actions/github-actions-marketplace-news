---
title: Rafter Security Scan
date: 2026-07-30 06:56:28 +00:00
tags:
  - Raftersecurity
  - GitHub Actions
draft: false
repo: https://github.com/Raftersecurity/rafter-cli
marketplace: https://github.com/marketplace/actions/rafter-security-scan
version: v0.10.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The Rafter CLI is a tool designed to automate security scanning and vulnerability assessments of code repositories using the Rafter platform. It helps developers identify potential security vulnerabilities, ensuring that their applications are secure before deployment. The action supports various platforms and provides features like automatic code scanning, reporting, and integration with CI/CD pipelines for seamless security testing during development cycles.
---


Version updated for **https://github.com/Raftersecurity/rafter-cli** to version **v0.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rafter-security-scan) to find the latest changes.

## Action Summary

The Rafter CLI is a tool designed to automate security scanning and vulnerability assessments of code repositories using the Rafter platform. It helps developers identify potential security vulnerabilities, ensuring that their applications are secure before deployment. The action supports various platforms and provides features like automatic code scanning, reporting, and integration with CI/CD pipelines for seamless security testing during development cycles.

## What's Changed

## Installation

**Node.js:**
```bash
npm install -g @rafter-security/cli@0.10.0
```

**Python:**
```bash
pip install rafter-cli==0.10.0
```

**OpenClaw (via ClawHub):**
```bash
clawhub skill install rafter-security
```

See [CHANGELOG.md](https://github.com/raftersecurity/rafter-cli/blob/main/CHANGELOG.md) for details.


## What's Changed
* test(node): make AuditLogger 'log() writes valid JSONL' test hermetic (sable-883t) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/211
* test: cover brief agent-mode output by @pedropachecog in https://github.com/Raftersecurity/rafter-cli/pull/212
* feat(sites): Rafter Sites CLI + MCP, with Python parity and live-tested fixes by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/213

## New Contributors
* @pedropachecog made their first contribution in https://github.com/Raftersecurity/rafter-cli/pull/212

**Full Changelog**: https://github.com/Raftersecurity/rafter-cli/compare/v0.9.1...v0.10.0
