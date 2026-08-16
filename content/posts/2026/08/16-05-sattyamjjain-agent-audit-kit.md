---
title: AgentAuditKit MCP Security Scan
date: 2026-08-16 05:55:58 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.79
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit automates security audits of AI agent pipelines by identifying misconfigurations, hardcoded secrets, and other security issues across 10 agent platforms. Unlike hosted scanners, it runs offline and deterministically, ensuring consistent findings without relying on LLMs or external models. Additionally, it provides auditor-ready compliance-evidence packs in SARIF format and PDF reports for multiple security frameworks, helping ensure robust security practices are followed.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.79**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit automates security audits of AI agent pipelines by identifying misconfigurations, hardcoded secrets, and other security issues across 10 agent platforms. Unlike hosted scanners, it runs offline and deterministically, ensuring consistent findings without relying on LLMs or external models. Additionally, it provides auditor-ready compliance-evidence packs in SARIF format and PDF reports for multiple security frameworks, helping ensure robust security practices are followed.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.79
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.79
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.79
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Pin the Letta CVE chain, and stop backlog rows distorting the published latency by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/602
* Make `suggest --apply-trivial` do what its help text says by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/603
* chore(release): v0.3.79 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/604


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.78...v0.3.79
