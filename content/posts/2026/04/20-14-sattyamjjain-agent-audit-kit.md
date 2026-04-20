---
title: AgentAuditKit MCP Security Scan
date: 2026-04-20 14:29:27 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for AI agent pipelines, identifying vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 agent platforms. It automates compliance checks, vulnerability detection, and remediation using 148 security rules, 28 scanner modules, and comprehensive support for industry standards like OWASP, SOC 2, and ISO 27001. With features like offline operation, supply chain integrity tools, and rapid CVE rule updates, it enhances the security and reliability of AI-driven systems.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.2
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.2
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.2
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.0...v0.3.2
