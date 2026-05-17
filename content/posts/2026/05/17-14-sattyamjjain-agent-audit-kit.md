---
title: AgentAuditKit MCP Security Scan
date: 2026-05-17 14:04:57 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.19
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.19**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for AI agent pipelines connected to the MCP ecosystem. It automates the detection of vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 agent platforms, with comprehensive coverage of 200 rules and 61 scanner modules. The action enhances compliance with major security frameworks, provides offline scanning capabilities, and ensures rapid response to newly disclosed CVEs, addressing critical security and compliance challenges in AI-driven pipelines.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.19
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.19
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.19
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(agent-audit-kit): v0.3.19 — @mcp.tool unsafe-eval AST detector + MCP-OPENAPI smell category by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/264


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.18...v0.3.19
