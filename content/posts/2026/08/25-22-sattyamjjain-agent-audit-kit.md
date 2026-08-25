---
title: AgentAuditKit MCP Security Scan
date: 2026-08-25 22:53:49 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.89
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit automates the security audit of AI agent pipelines by identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It provides a deterministic offline scan that does not rely on external network calls or models. The action is designed to help organizations ensure their AI agent systems are secure and compliant with industry standards like OWASP Agentic and MCP (MCP Security Index).
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.89**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit automates the security audit of AI agent pipelines by identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It provides a deterministic offline scan that does not rely on external network calls or models. The action is designed to help organizations ensure their AI agent systems are secure and compliant with industry standards like OWASP Agentic and MCP (MCP Security Index).

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.89
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.89
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.89
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Rule AAK-MCP-TOOL-ARG-OSCMD-001 for CVE-2026-78430, and publish the CVE-response lag by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/635


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.88...v0.3.89
