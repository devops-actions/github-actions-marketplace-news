---
title: AgentAuditKit MCP Security Scan
date: 2026-08-17 05:53:01 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.80
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner designed to detect misconfigurations, hardcoded secrets, tool poisoning, and other vulnerabilities in AI agent pipelines. It runs offline and deterministically, ensuring that the same input always yields the same findings. Additionally, it produces auditor-ready compliance-evidence packs, including SARIF for GitHub Security tab and PDF reports mapped to multiple security frameworks.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.80**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to detect misconfigurations, hardcoded secrets, tool poisoning, and other vulnerabilities in AI agent pipelines. It runs offline and deterministically, ensuring that the same input always yields the same findings. Additionally, it produces auditor-ready compliance-evidence packs, including SARIF for GitHub Security tab and PDF reports mapped to multiple security frameworks.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.80
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.80
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.80
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Detect unauthenticated MCP sidecar dashboards, and stop reading double quotes as a shell mitigation by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/606


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.79...v0.3.80
