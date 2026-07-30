---
title: AgentAuditKit MCP Security Scan
date: 2026-07-30 06:52:11 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.62
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit automates the security scanning of AI agent pipelines to identify misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Unlike hosted scanners, AgentAuditKit runs fully offline and deterministically, producing auditor-ready compliance-evidence packs with SARIF for GitHub Security tab plus PDF reports mapped to 12 frameworks, ensuring precision and stability in security audits.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.62**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit automates the security scanning of AI agent pipelines to identify misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Unlike hosted scanners, AgentAuditKit runs fully offline and deterministically, producing auditor-ready compliance-evidence packs with SARIF for GitHub Security tab plus PDF reports mapped to 12 frameworks, ensuring precision and stability in security audits.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.62
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.62
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.62
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.61...v0.3.62
