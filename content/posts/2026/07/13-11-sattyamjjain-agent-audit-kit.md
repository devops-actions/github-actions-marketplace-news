---
title: AgentAuditKit MCP Security Scan
date: 2026-07-13 11:34:57 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.49
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner specifically designed to audit AI agent pipelines, automating the identification of potential misconfigurations, hardcoded secrets, and other security issues. It offers full offline determinism to ensure consistent findings across different runs, producing auditor-ready compliance-evidence packs including SARIF for GitHub Security tabs.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.49**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner specifically designed to audit AI agent pipelines, automating the identification of potential misconfigurations, hardcoded secrets, and other security issues. It offers full offline determinism to ensure consistent findings across different runs, producing auditor-ready compliance-evidence packs including SARIF for GitHub Security tabs.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.49
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.49
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.49
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(rules): MCP 2026-07-28 deprecation pack — AAK-MCP-DEPRECATED-* + AAK-OAUTH-006 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/427
* fix(rules): 2026-07 MCP CVE backlog — 8 version-pin rules (238→246) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/428


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.48...v0.3.49
