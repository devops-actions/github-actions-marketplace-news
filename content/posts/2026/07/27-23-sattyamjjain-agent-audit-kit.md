---
title: AgentAuditKit MCP Security Scan
date: 2026-07-27 23:05:14 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.60
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action, AgentAuditKit, is a comprehensive security scanner designed specifically for AI agent pipelines. It automates the detection of misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 13 different agent platforms. Unlike hosted scanners, it runs fully offline and deterministically, ensuring that identical inputs always yield the same findings with no network calls or LLM involvement. This guarantees precision in security assessments without telemetry or account dependencies. Additionally, AgentAuditKit produces auditor-ready compliance-evidence packs using SARIF for GitHub Security tabs and PDF reports mapped to 13 frameworks, providing a robust solution for auditing AI agent pipelines.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.60**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

This GitHub Action, AgentAuditKit, is a comprehensive security scanner designed specifically for AI agent pipelines. It automates the detection of misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 13 different agent platforms. Unlike hosted scanners, it runs fully offline and deterministically, ensuring that identical inputs always yield the same findings with no network calls or LLM involvement. This guarantees precision in security assessments without telemetry or account dependencies. Additionally, AgentAuditKit produces auditor-ready compliance-evidence packs using SARIF for GitHub Security tabs and PDF reports mapped to 13 frameworks, providing a robust solution for auditing AI agent pipelines.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.60
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.60
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.60
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(ci): pin codeql-action steps to one version (v4.37.1) + group dependabot actions by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/493
* feat(coverage): --emit-coverage crosswalk + coverage.json + State-of-MCP report seed by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/497
* feat(research): State of MCP Security 2026 report — 2,303-config corpus + human PDF by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/501


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.58...v0.3.60
