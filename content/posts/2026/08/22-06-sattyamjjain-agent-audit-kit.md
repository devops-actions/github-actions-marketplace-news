---
title: AgentAuditKit MCP Security Scan
date: 2026-08-22 06:12:40 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.86
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **Summary:** AgentAuditKit is a security scanner specifically designed for AI agent pipelines connected to the MCP ecosystem. It identifies misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. The action is deterministic and offline, ensuring consistent findings without any network interactions or model involvement.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.86**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**Summary:** AgentAuditKit is a security scanner specifically designed for AI agent pipelines connected to the MCP ecosystem. It identifies misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. The action is deterministic and offline, ensuring consistent findings without any network interactions or model involvement.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.86
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.86
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.86
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.85...v0.3.86
