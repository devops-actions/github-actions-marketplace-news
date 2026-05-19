---
title: AgentAuditKit MCP Security Scan
date: 2026-05-19 07:21:18 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.20
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.20**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for AI agent pipelines, addressing vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 platforms. It automates compliance validation, vulnerability detection, and remediation with 202 rules, 62 scanner modules, and advanced tools like AST-based taint analysis. The action ensures robust security by offering offline operation, supply chain assurance, OWASP compliance, and rapid CVE rule updates within 48 hours.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.20
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.20
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.20
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(agent-audit-kit): v0.3.20 — cve-watcher dedup fix (#163) + Metis POMDP research-grade rules by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/268


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.19...v0.3.20
