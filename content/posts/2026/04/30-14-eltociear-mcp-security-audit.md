---
title: MCP Security Audit
date: 2026-04-30 14:13:45 +00:00
tags:
  - eltociear
  - GitHub Actions
draft: false
repo: https://github.com/eltociear/mcp-security-audit
marketplace: https://github.com/marketplace/actions/mcp-security-audit
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/eltociear/mcp-security-audit** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-security-audit) to find the latest changes.

## Action Summary

The **mcp-security-audit** GitHub Action is designed to scan MCP servers, AI agent skills, and plugins for over 68 malicious patterns, such as credential exfiltration, code execution, and prompt injection, to identify potential security vulnerabilities. It automates the process of detecting critical risks in source code, pull requests, or entire directories, providing risk scoring and optional SARIF output for integration with GitHub's security tools. This action streamlines security auditing in CI/CD pipelines, CLI workflows, and MCP server environments.

## What's Changed

Scan MCP servers, AI agent skills, and plugins for 68+ malicious patterns.

- Credential exfiltration
- Prompt injection
- Code execution
- Seed phrase harvesting
- Download & execute
- Identity impersonation

Add to any PR workflow:

```yaml
- uses: eltociear/mcp-security-audit@v1
  with:
    path: '.'
    fail-on: 'HIGH'

SARIF output supported for GitHub Code Scanning integration.
```
