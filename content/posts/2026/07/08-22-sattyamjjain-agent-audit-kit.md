---
title: AgentAuditKit MCP Security Scan
date: 2026-07-08 22:18:09 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.48
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.48**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.48
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.48
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.48
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(rules): pin CVE-2026-14748 (MCP-server SSRF via tool-arg URL) as AAK-MCP-SSRF-001 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/412
* feat(rules): pin CVE-2026-49471 (Serena MCP unauthenticated-dashboard RCE) as AAK-MCP-SERENA-CVE-2026-49471-001 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/413


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.47...v0.3.48
