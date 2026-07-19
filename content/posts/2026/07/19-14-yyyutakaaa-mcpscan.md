---
title: MCPScan by yyyutakaaa
date: 2026-07-19 14:31:54 +00:00
tags:
  - yyyutakaaa
  - GitHub Actions
draft: false
repo: https://github.com/yyyutakaaa/mcpscan
marketplace: https://github.com/marketplace/actions/mcpscan-by-yyyutakaaa
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  mcpscan is an automated security tool designed to detect common security issues in machine learning models and related configurations, such as injection attacks, dangerous code execution, misconfigured servers, exfiltration vulnerabilities, supply chain risks, and secrets exposure. It analyzes Python scripts, configs, and skill folders to provide detailed reports on potential security weaknesses, helping developers prevent threats before they reach their models.
---


Version updated for **https://github.com/yyyutakaaa/mcpscan** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcpscan-by-yyyutakaaa) to find the latest changes.

## Action Summary

mcpscan is an automated security tool designed to detect common security issues in machine learning models and related configurations, such as injection attacks, dangerous code execution, misconfigured servers, exfiltration vulnerabilities, supply chain risks, and secrets exposure. It analyzes Python scripts, configs, and skill folders to provide detailed reports on potential security weaknesses, helping developers prevent threats before they reach their models.

## What's Changed

## MCPScan v0.1.0
Shipped the first release. MCPScan scans MCP servers and AI agent skills for the stuff that tends to get missed in review.
### Detects
- Prompt-injection and tool-poisoning patterns
- Hidden Unicode and bidirectional control characters
- Dangerous Python calls like `eval`, `exec`, `subprocess`, and `os.system`
- Unsafe file access and path traversal risks
- Hardcoded external exfiltration endpoints
- Embedded credentials and leaked secrets
- MCP servers running wide open (overly permissive flags)
- Unpinned installs and remote shell scripts piped into `sh`
### Features
- Terminal, JSON, and SARIF output
- Adjustable severity threshold
- GitHub Code Scanning integration
- Custom YAML rules for stuff specific to your stack
- Tested on Python 3.11, 3.12, and 3.13
This is static analysis, not proof. Findings are patterns worth a second look, not confirmed exploits — a developer or security engineer should still review them before acting.
