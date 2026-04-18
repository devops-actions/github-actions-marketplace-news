---
title: AgentAuditKit MCP Security Scan
date: 2026-04-18 13:56:45 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for MCP-connected AI agent pipelines, addressing vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 agent platforms. It automates the detection and resolution of security risks with 124 rules, 25 scanner modules, and compliance mapping to standards like OWASP, SOC 2, and ISO 27001, while providing detailed reports and maintaining a 48-hour SLA for new CVE coverage. Fully offline and with no cloud dependencies, it ensures robust security for AI agents in critical environments.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.0
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.0
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.0
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.2.0...v0.3.0
