---
title: AgentAuditKit MCP Security Scan
date: 2026-08-02 21:17:50 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.66
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **Summary:**
  
  AgentAuditKit is a security scanner designed to audit AI agent pipelines offline and deterministically. It identifies misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 major agent platforms. Unlike hosted scanners, AgentAuditKit runs fully offline and produces auditor-ready compliance-evidence packs using SARIF for the GitHub Security tab and PDF reports mapped to 12 security frameworks, ensuring precision in detection and auditability.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.66**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**Summary:**

AgentAuditKit is a security scanner designed to audit AI agent pipelines offline and deterministically. It identifies misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 major agent platforms. Unlike hosted scanners, AgentAuditKit runs fully offline and produces auditor-ready compliance-evidence packs using SARIF for the GitHub Security tab and PDF reports mapped to 12 security frameworks, ensuring precision in detection and auditability.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.66
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.66
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.66
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(deps): Bump the github-actions group across 1 directory with 9 updates by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/506
* chore(dependabot): stop re-proposing the ruff cap bump by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/521


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.65...v0.3.66
