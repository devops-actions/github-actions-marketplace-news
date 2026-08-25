---
title: AgentAuditKit MCP Security Scan
date: 2026-08-25 06:01:29 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.88
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **AgentAuditKit automates the process of identifying misconfigurations, hardcoded secrets, and other security issues in AI agent pipelines. It ensures that your codebase is secure by scanning it offline and deterministically, without relying on external models or network calls. AgentAuditKit supports 10 different agent platforms and can detect vulnerabilities such as remote server with no authentication, inline-auth configs with static credentials, and more.**
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.88**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**AgentAuditKit automates the process of identifying misconfigurations, hardcoded secrets, and other security issues in AI agent pipelines. It ensures that your codebase is secure by scanning it offline and deterministically, without relying on external models or network calls. AgentAuditKit supports 10 different agent platforms and can detect vulnerabilities such as remote server with no authentication, inline-auth configs with static credentials, and more.**

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.88
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.88
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.88
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.87...v0.3.88
