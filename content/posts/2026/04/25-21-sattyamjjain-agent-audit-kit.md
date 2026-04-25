---
title: AgentAuditKit MCP Security Scan
date: 2026-04-25 21:28:35 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.5
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to identify vulnerabilities, misconfigurations, and risks in MCP-connected AI agent pipelines across 13 platforms. It automates the detection of issues such as hardcoded secrets, tool poisoning, tainted data flows, and compliance violations, while providing comprehensive OWASP and regulatory framework coverage. The tool offers advanced scanning capabilities, offline operation, supply chain security features, and generates detailed compliance and security reports to ensure robust AI pipeline protection.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.5
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.5
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.5
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* v0.3.5 — LangChain SSRF redirect + TOCTOU rules (closes #61, #62) + Azure MCP missing-auth + toxic-flow scanner + pre-commit sync fix by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/63


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.4...v0.3.5
