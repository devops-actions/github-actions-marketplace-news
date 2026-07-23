---
title: AgentAuditKit MCP Security Scan
date: 2026-07-23 15:07:37 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.58
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner specifically designed to audit AI agent pipelines. It automates the detection of misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across various 13 agent platforms. Unlike hosted scanners that rely on LLMs for judgment, AgentAuditKit runs fully offline and deterministically, ensuring that findings are consistent across re-runs and audits. It also produces auditor-ready compliance-evidence packs in SARIF format along with PDF reports mapped to 13 security frameworks.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.58**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner specifically designed to audit AI agent pipelines. It automates the detection of misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across various 13 agent platforms. Unlike hosted scanners that rely on LLMs for judgment, AgentAuditKit runs fully offline and deterministically, ensuring that findings are consistent across re-runs and audits. It also produces auditor-ready compliance-evidence packs in SARIF format along with PDF reports mapped to 13 security frameworks.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.58
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.58
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.58
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.57...v0.3.58
