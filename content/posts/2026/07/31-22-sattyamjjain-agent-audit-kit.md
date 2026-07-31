---
title: AgentAuditKit MCP Security Scan
date: 2026-07-31 22:25:27 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.64
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner designed to audit and analyze AI agent pipelines, identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It runs offline and deterministically, ensuring reproducibility and precision in finding compliance issues. The action produces auditor-ready compliance-evidence packs, including SARIF for GitHub Security tab reports and PDF evidence maps to 12 security frameworks.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.64**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to audit and analyze AI agent pipelines, identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It runs offline and deterministically, ensuring reproducibility and precision in finding compliance issues. The action produces auditor-ready compliance-evidence packs, including SARIF for GitHub Security tab reports and PDF evidence maps to 12 security frameworks.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.64
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.64
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.64
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.63...v0.3.64
