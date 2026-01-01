---
title: AgentAudit Security Scan
date: 2026-01-01 13:10:15 +00:00
tags:
  - XSource-Sec
  - GitHub Actions
draft: false
repo: https://github.com/XSource-Sec/agent-audit-action
marketplace: https://github.com/marketplace/actions/agentaudit-security-scan
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/XSource-Sec/agent-audit-action** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentaudit-security-scan) to find the latest changes.

## Action Summary

AgentAudit is a GitHub Action designed to scan AI agent endpoints for security vulnerabilities as part of the CI/CD pipeline. It automates the detection of AI-specific risks, such as prompt injection, jailbreaking, and data exfiltration, ensuring security compliance for AI applications. Key capabilities include configurable scan modes, severity-based failure thresholds, and detailed reporting of vulnerabilities to streamline secure development workflows.

## Release notes

## AgentAudit GitHub Action v1

Scan your AI agent endpoints for security vulnerabilities directly in your CI/CD pipeline.

### Features
- 🔍 Automated security scanning of AI/LLM endpoints
- ⚡ Multiple scan modes: quick, standard, full
- 🚨 Configurable failure thresholds
- 📊 Detailed vulnerability reports

### Usage

```yaml
- uses: XSource-Sec/agent-audit-action@v1
  with:
    target: "https://your-ai-endpoint.com/api/chat"
    api_key: ${{ secrets.AGENTAUDIT_API_KEY }}
    mode: "quick"  # quick, standard, or full
    fail_on: "high"  # critical, high, medium, low, or none
```

### Get Started
1. Sign up at [app.xsourcesec.com](https://app.xsourcesec.com)
2. Generate an API key
3. Add it as a GitHub secret
4. Add the action to your workflow

Full documentation: https://xsourcesec.com/docs
