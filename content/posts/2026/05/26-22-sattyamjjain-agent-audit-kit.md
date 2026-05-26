---
title: AgentAuditKit MCP Security Scan
date: 2026-05-26 22:52:13 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.26
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.26**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for AI agent pipelines connected to the MCP ecosystem. It automates the detection of vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 agent platforms using 211 rules and 68 scanner modules. The tool provides robust compliance mapping, OWASP coverage, supply chain security features, and generates detailed reports, all while operating offline.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.26
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.26
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.26
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(rules): AAK-EU-AI-ACT-ART15-LOCALE-001 — multilingual eval coverage (EU AI Act Art. 15) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/277


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.25...v0.3.26
