---
title: AgentAuditKit MCP Security Scan
date: 2026-05-23 14:10:32 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.24
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.24**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for AI agent pipelines connected to MCP (Multi-Context Platforms). It automates the detection of misconfigurations, hardcoded secrets, trust boundary violations, and other vulnerabilities across 13 agent platforms, using 206 security rules and 66 scanner modules. The action enhances AI pipeline security by aligning with OWASP standards, supporting compliance frameworks, providing offline scanning capabilities, and delivering rapid response to emerging CVEs.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.24
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.24
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.24
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(rules): AAK-MCP-SAMPLING-001 — flag MCP sampling without consent (v0.3.24) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/275


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.23...v0.3.24
