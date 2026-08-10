---
title: AgentAuditKit MCP Security Scan
date: 2026-08-10 21:38:40 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.72
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **AgentAuditKit is a security scanner designed to audit AI agent pipelines offline and deterministically. It identifies misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Unlike hosted scanners, AgentAuditKit runs fully offline without network calls, ensuring reproducibility with a 0% variance in findings across multiple runs. Additionally, it produces auditor-ready compliance-evidence packs using SARIF for GitHub Security tab and PDF reports mapped to 12 security frameworks.**
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.72**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**AgentAuditKit is a security scanner designed to audit AI agent pipelines offline and deterministically. It identifies misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Unlike hosted scanners, AgentAuditKit runs fully offline without network calls, ensuring reproducibility with a 0% variance in findings across multiple runs. Additionally, it produces auditor-ready compliance-evidence packs using SARIF for GitHub Security tab and PDF reports mapped to 12 security frameworks.**

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.72
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.72
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.72
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.71...v0.3.72
