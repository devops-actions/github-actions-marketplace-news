---
title: AgentAuditKit MCP Security Scan
date: 2026-05-25 14:37:06 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.25
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.25**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for MCP-connected AI agent pipelines, providing automated detection of vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 AI platforms. It offers 210 security rules, 67 scanner modules, and compliance mapping to 12 global frameworks, ensuring robust protection against modern threats like CVEs. Key features include offline functionality, supply chain integrity through signed releases, and comprehensive reporting capabilities.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.25
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.25
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.25
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(deps): Bump actions/download-artifact from 4 to 8 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/222
* chore(deps): Bump actions/checkout from 4.2.2 to 6.0.2 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/223
* feat(rules): AAK-MCP-STATELESS-001..004 — 2026-07-28 stateless-MCP migration by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/276


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.24...v0.3.25
