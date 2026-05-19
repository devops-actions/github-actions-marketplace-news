---
title: AgentAuditKit MCP Security Scan
date: 2026-05-19 15:23:18 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.21
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.21**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to identify vulnerabilities, misconfigurations, and risks in AI agent pipelines connected to MCP (Multi-Agent Control Protocol). It automates the detection of issues such as hardcoded secrets, tainted data flows, trust boundary violations, and supply chain risks across 13 agent platforms using advanced analysis techniques like AST-based taint tracking and regex scanning. The tool also provides compliance mapping for various global frameworks, ensures rapid rule updates for newly disclosed CVEs, and operates fully offline, making it a robust solution for securing AI-driven systems.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.21
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.21
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.21
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(agent-audit-kit): v0.3.21 — Stainless-generator provenance rule (Anthropic acquisition 2026-05-18) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/271


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.20...v0.3.21
