---
title: AgentAuditKit MCP Security Scan
date: 2026-08-22 13:57:50 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.87
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit automates the security audit of AI agent pipelines, focusing on identifying misconfigurations, hardcoded secrets, tool poisoning, and trust boundary violations across 10 agent platforms. It provides a fully offline and deterministically run scan to avoid model inference and network calls, ensuring consistent findings with zero variance across multiple runs.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.87**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit automates the security audit of AI agent pipelines, focusing on identifying misconfigurations, hardcoded secrets, tool poisoning, and trust boundary violations across 10 agent platforms. It provides a fully offline and deterministically run scan to avoid model inference and network calls, ensuring consistent findings with zero variance across multiple runs.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.87
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.87
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.87
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.86...v0.3.87
