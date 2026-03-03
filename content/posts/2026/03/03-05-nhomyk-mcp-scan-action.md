---
title: MCP Security Scan
date: 2026-03-03 05:51:04 +00:00
tags:
  - nhomyk
  - GitHub Actions
draft: false
repo: https://github.com/nhomyk/mcp-scan-action
marketplace: https://github.com/marketplace/actions/mcp-security-scan
version: v1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/nhomyk/mcp-scan-action** to version **v1**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-security-scan) to find the latest changes.

## Action Summary

The **mcp-scan-action** is a GitHub Action designed to automate security vulnerability scans for Model Context Protocol (MCP) servers, AI agents, and LLM pipelines. It identifies critical risks, such as remote code execution, prompt injection, and server-side vulnerabilities, and reports findings directly to the GitHub Security tab. By enabling continuous, zero-configuration security checks, this action helps teams proactively secure their AI and MCP environments before deployment.

## Release notes

Release notes:


The first GitHub Action that scans MCP servers, AI agents, and LLM pipelines for security vulnerabilities — before you ship.

**24 vulnerability checks across 4 scan engines:**
- 11 MCP attack types: tool poisoning, SSRF, command injection, ambient authority, exfiltration, shadow tools, missing auth, and more
- 9 DataFlow taint types: tracks secrets and PII from source to sink across agent boundaries
- 4 Prompt injection patterns: direct concat, template injection, unsafe LLM output, role override
- Architecture mapping: full MCP_TOOL + AGENT_FRAMEWORK attack surface

**Key properties:**
- Results appear in GitHub Security tab via SARIF 2.1.0
- No API key required — pure static analysis, deterministic
- Works on TypeScript, JavaScript, Python, JSON config files
- `fail-on-critical` blocks merges on any critical finding

**Quickstart:**
```yaml
- uses: nhomyk/mcp-scan-action@v1
Powered by [AgenticQA](https://github.com/nhomyk/AgenticQA)
