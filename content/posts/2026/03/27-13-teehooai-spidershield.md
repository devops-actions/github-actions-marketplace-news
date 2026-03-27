---
title: SpiderShield Scan
date: 2026-03-27 13:56:10 +00:00
tags:
  - teehooai
  - GitHub Actions
draft: false
repo: https://github.com/teehooai/spidershield
marketplace: https://github.com/marketplace/actions/spidershield-scan
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/teehooai/spidershield** to version **v1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spidershield-scan) to find the latest changes.

## Action Summary

SpiderShield is a comprehensive security toolkit designed for MCP servers and AI agents, offering static code analysis, runtime policy enforcement, data loss prevention (DLP), and audit logging. It automates vulnerability detection, secure runtime operations, and protection against data leaks, enabling developers and operators to safeguard systems through transparent proxies and predefined security guardrails. Key capabilities include scanning for code weaknesses, enforcing runtime policies, detecting malicious patterns, and blocking or redacting sensitive data.

## Release notes

## SpiderShield v1.0

First Marketplace release of the SpiderShield GitHub Action.

### Features
- **Static security analysis** for MCP servers (tool poisoning, prompt injection, SSRF, etc.)
- **Trust Registry lookup** via SpiderRating API (grade + score + verdict)
- **PR gate** — fail CI if score below threshold or grade worse than specified
- **Auto PR comment** with scan results and badge
- **Badge URL output** for README embedding

### Usage
```yaml
- uses: teehooai/spidershield@v1
  with:
    fail-on: D
```

Free for all public repositories.
