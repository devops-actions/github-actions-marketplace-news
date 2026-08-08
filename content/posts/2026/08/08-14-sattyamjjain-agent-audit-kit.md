---
title: AgentAuditKit MCP Security Scan
date: 2026-08-08 14:27:38 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.69
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action is a security scanner designed to audit AI agent pipelines. It runs offline and deterministically, finds misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Key capabilities include running fully offline, producing auditor-ready compliance-evidence packs, and supporting OWASP coverage for top security categories. The action provides a total of 284 rules across 12 categories, with 85 scanner modules, including AST-based Python taint analysis and regex pattern scanners for TypeScript/JavaScript and Rust.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.69**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

This GitHub Action is a security scanner designed to audit AI agent pipelines. It runs offline and deterministically, finds misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. Key capabilities include running fully offline, producing auditor-ready compliance-evidence packs, and supporting OWASP coverage for top security categories. The action provides a total of 284 rules across 12 categories, with 85 scanner modules, including AST-based Python taint analysis and regex pattern scanners for TypeScript/JavaScript and Rust.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.69
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.69
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.69
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.68...v0.3.69
