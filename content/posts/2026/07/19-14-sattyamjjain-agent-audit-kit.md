---
title: AgentAuditKit MCP Security Scan
date: 2026-07-19 14:39:03 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.52
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit automates security scans for AI agent pipelines, providing offline determinism and auditor-ready compliance-evidence packs. It finds misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 13 agent platforms. The action ensures consistent findings and produces comprehensive SARIF reports mapped to 13 security frameworks and compliance regimes.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.52**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit automates security scans for AI agent pipelines, providing offline determinism and auditor-ready compliance-evidence packs. It finds misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 13 agent platforms. The action ensures consistent findings and produces comprehensive SARIF reports mapped to 13 security frameworks and compliance regimes.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.52
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.52
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.52
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(rules): AAK-OAUTH-008 (RFC 9728 PRM) + mcp-2026-07-28 auth profile + readiness report by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/470
* chore(docs): prune 6 unused/stale docs by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/471
* feat(research): State of MCP 2026 report — corpus to 1,374 configs + auth metrics (closes #23) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/473


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.50...v0.3.52
