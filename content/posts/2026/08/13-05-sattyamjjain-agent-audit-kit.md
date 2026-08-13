---
title: AgentAuditKit MCP Security Scan
date: 2026-08-13 05:52:36 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.74
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **AgentAuditKit automates the security auditing of AI agent pipelines by scanning and reporting on misconfigurations, hardcoded secrets, tool poisoning, and other potential vulnerabilities across 10 different platforms. Unlike hosted scanners, AgentAuditKit runs fully offline and deterministically, producing auditor-ready compliance-evidence packs that cover a wide range of security categories including EU AI Act, SOC 2, ISO 27001/42001, HIPAA, NIST AI RMF, and regional regimes.**
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.74**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**AgentAuditKit automates the security auditing of AI agent pipelines by scanning and reporting on misconfigurations, hardcoded secrets, tool poisoning, and other potential vulnerabilities across 10 different platforms. Unlike hosted scanners, AgentAuditKit runs fully offline and deterministically, producing auditor-ready compliance-evidence packs that cover a wide range of security categories including EU AI Act, SOC 2, ISO 27001/42001, HIPAA, NIST AI RMF, and regional regimes.**

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.74
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.74
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.74
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Session-splice rule (AAK-AGENT-COMPOSE-002), one live NVD feed, and a count guard that catches prose drift by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/571
* CVE response: pin CVE-2026-72768 (n8n MCP Client SSRF) + CVE-2026-73222 (claude-code-templates --studio RCE) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/572


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.73...v0.3.74
