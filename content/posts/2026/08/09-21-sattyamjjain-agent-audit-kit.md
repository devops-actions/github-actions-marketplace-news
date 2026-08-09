---
title: AgentAuditKit MCP Security Scan
date: 2026-08-09 21:57:44 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.71
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner designed to audit MCP-connected AI agent pipelines. It automates the detection of misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Unlike hosted scanners that rely on machine learning, AgentAuditKit runs fully offline and deterministically, ensuring consistent findings and compliance evidence packs with support for 12 security frameworks.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.71**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to audit MCP-connected AI agent pipelines. It automates the detection of misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Unlike hosted scanners that rely on machine learning, AgentAuditKit runs fully offline and deterministically, ensuring consistent findings and compliance evidence packs with support for 12 security frameworks.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.71
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.71
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.71
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(deps): Bump the github-actions group across 1 directory with 4 updates by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/526
* fix(cve): pin @adenot/mcp-google-search SSRF (CVE-2026-19337); adjudicate #556/#557 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/559
* chore: drop the orphan findings.sarif from the repo root by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/560
* feat(scanners): agent config/skill auto-trust scanner (AAK-AGENT-TRUST-001..004) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/561
* chore: archive pre-0.3.60 changelog history by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/562


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.70...v0.3.71
