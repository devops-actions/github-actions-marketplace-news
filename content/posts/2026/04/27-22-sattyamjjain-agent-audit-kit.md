---
title: AgentAuditKit MCP Security Scan
date: 2026-04-27 22:02:15 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.8
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanning tool designed to identify vulnerabilities, misconfigurations, and security risks in AI agent pipelines connected to Multi-Agent Control Protocols (MCP). It automates the detection of issues such as hardcoded secrets, tainted data flows, and supply chain risks across 13 agent platforms, while providing compliance mapping for major security frameworks like OWASP and ISO 27001. With 175 rules, 28 scanner modules, and a variety of CLI commands, it offers comprehensive auditing, reporting, and remediation capabilities to enhance the security and compliance of AI systems.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.8
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.8
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.8
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* v0.3.8 — PR-title IPI + MCP function-hijacking + Atlassian RCE + wild IPI corpus + corpus/diff/suggest CLI + VS Code SARIF reader by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/79


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.7...v0.3.8
