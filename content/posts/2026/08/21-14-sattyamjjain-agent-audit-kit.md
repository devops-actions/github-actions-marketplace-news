---
title: AgentAuditKit MCP Security Scan
date: 2026-08-21 14:03:17 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.85
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit automates security scans for AI agent pipelines across 10 platforms, identifying misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows. It ensures that your code, configs, and secrets remain secure by scanning locally without network calls and maintaining consistent results.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.85**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit automates security scans for AI agent pipelines across 10 platforms, identifying misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows. It ensures that your code, configs, and secrets remain secure by scanning locally without network calls and maintaining consistent results.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.85
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.85
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.85
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Derive every count in the repo description instead of typing two of them by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/620


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.84...v0.3.85
