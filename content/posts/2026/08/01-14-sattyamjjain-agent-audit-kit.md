---
title: AgentAuditKit MCP Security Scan
date: 2026-08-01 14:03:53 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.65
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  The AgentAuditKit action is a security scanner designed to audit AI agent pipelines. It ensures that your code, configs, and secrets remain secure by identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across various platforms. Unlike hosted scanners, it runs fully offline and deterministically, producing auditor-ready compliance-evidence packs in SARIF and PDF formats for 12 security frameworks. It covers 274 rules across 10 agent platforms, including AST-based Python taint analysis and regex pattern scanners for TypeScript/JavaScript and Rust.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.65**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

The AgentAuditKit action is a security scanner designed to audit AI agent pipelines. It ensures that your code, configs, and secrets remain secure by identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across various platforms. Unlike hosted scanners, it runs fully offline and deterministically, producing auditor-ready compliance-evidence packs in SARIF and PDF formats for 12 security frameworks. It covers 274 rules across 10 agent platforms, including AST-based Python taint analysis and regex pattern scanners for TypeScript/JavaScript and Rust.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.65
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.65
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.65
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Correct the EU AI Act Art.15 date (AI Omnibus) + re-cut the determinism evidence by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/520


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.64...v0.3.65
