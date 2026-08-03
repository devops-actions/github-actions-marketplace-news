---
title: AgentAuditKit MCP Security Scan
date: 2026-08-03 22:42:17 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.67
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner designed to audit AI agent pipelines for misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It runs fully offline and deterministically, avoiding the need for network calls and ensuring consistent findings. Additionally, it produces auditor-ready compliance-evidence packs in SARIF format, covering multiple security categories and frameworks.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.67**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to audit AI agent pipelines for misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It runs fully offline and deterministically, avoiding the need for network calls and ensuring consistent findings. Additionally, it produces auditor-ready compliance-evidence packs in SARIF format, covering multiple security categories and frameworks.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.67
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.67
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.67
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Guard the repo description and the corpus N against drift by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/529


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.66...v0.3.67
