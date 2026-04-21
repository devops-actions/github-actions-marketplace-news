---
title: AgentAuditKit MCP Security Scan
date: 2026-04-21 22:00:42 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.3
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a comprehensive security scanner designed for AI agent pipelines connected to Multi-Agent Collaboration Protocols (MCP). It automates the detection of vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, trust boundary violations, and tainted data flows across 13 agent platforms, using 151 rules and 28 scanning modules. The tool provides robust compliance mapping, OWASP standard coverage, supply chain integrity features, and offline functionality, streamlining security audits and ensuring rapid response to emerging AI-related vulnerabilities.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.3
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.3
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.3
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.2...v0.3.3
