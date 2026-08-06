---
title: AgentAuditKit MCP Security Scan
date: 2026-08-06 06:24:21 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.68
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **AgentAuditKit** is a security scanner designed to audit AI agent pipelines for potential misconfigurations, hardcoded secrets, tool poisoning, and other vulnerabilities. It is the missing `npm audit` solution specifically tailored for AI agents, running offline and deterministically without relying on an LLM. The action produces auditor-ready compliance-evidence packs including SARIF reports and PDF evidence reports mapped to 12 security frameworks, ensuring precision and reliability in security audits.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.68**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**AgentAuditKit** is a security scanner designed to audit AI agent pipelines for potential misconfigurations, hardcoded secrets, tool poisoning, and other vulnerabilities. It is the missing `npm audit` solution specifically tailored for AI agents, running offline and deterministically without relying on an LLM. The action produces auditor-ready compliance-evidence packs including SARIF reports and PDF evidence reports mapped to 12 security frameworks, ensuring precision and reliability in security audits.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.68
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.68
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.68
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Fail the release loudly on a stale repo description, adjudicate the CVE queue by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/532
* fix: render repo description from RULE_COUNT, dispose of the open CVE queue by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/536


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.67...v0.3.68
