---
title: AgentAuditKit MCP Security Scan
date: 2026-08-26 22:44:22 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.90
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner designed to audit AI agent pipelines and detect misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across multiple platforms. It can run offline and deterministically, ensuring that the findings are consistent across different runs without relying on external services.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.90**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to audit AI agent pipelines and detect misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across multiple platforms. It can run offline and deterministically, ensuring that the findings are consistent across different runs without relying on external services.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.90
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.90
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.90
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.89...v0.3.90
