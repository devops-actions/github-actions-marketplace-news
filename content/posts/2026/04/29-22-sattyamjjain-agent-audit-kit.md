---
title: AgentAuditKit MCP Security Scan
date: 2026-04-29 22:03:09 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.10
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for AI agent pipelines, providing automated detection of vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 agent platforms. It offers robust compliance mapping, comprehensive rule coverage for emerging CVEs, and supports offline usage for secure environments. Its key capabilities include advanced taint analysis, supply chain security, OWASP and regulatory compliance, and detailed reporting, addressing critical security and compliance challenges in AI systems.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.10
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.10
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.10
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(v0.3.10): CrewAI 4-CVE chain, AIVSS v0.8, LangChain CVE, Prisma AIRS, OpenClaw, watch-cve + coverage page + rule lint by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/93


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.9...v0.3.10
