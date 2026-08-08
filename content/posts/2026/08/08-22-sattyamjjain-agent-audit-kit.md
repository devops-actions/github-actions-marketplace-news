---
title: AgentAuditKit MCP Security Scan
date: 2026-08-08 22:04:23 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.70
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner designed to audit AI agent pipelines and identify misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It runs fully offline and deterministically, producing auditor-ready compliance-evidence packs that include SARIF for GitHub Security tab and PDF evidence reports mapped to 12 security frameworks. The action supports 85 scanner modules including AST-based Python taint analysis and regex pattern scanners for TypeScript/JavaScript and Rust.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.70**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to audit AI agent pipelines and identify misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across 10 agent platforms. It runs fully offline and deterministically, producing auditor-ready compliance-evidence packs that include SARIF for GitHub Security tab and PDF evidence reports mapped to 12 security frameworks. The action supports 85 scanner modules including AST-based Python taint analysis and regex pattern scanners for TypeScript/JavaScript and Rust.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.70
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.70
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.70
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* fix: fail the release on a stale description, one docs URL, derivable scanner count by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/555


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.69...v0.3.70
