---
title: AgentAuditKit MCP Security Scan
date: 2026-05-20 23:14:47 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.23
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.23**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security auditing GitHub Action designed to detect vulnerabilities, misconfigurations, and tainted data flows in AI agent pipelines across 13 platforms. It automates the identification of risks such as hardcoded secrets, tool poisoning, and trust boundary violations using 205 rules, 65 scanner modules, and compliance mapping for 12 frameworks, including OWASP and regulatory standards. The tool operates fully offline, provides deterministic rule bundles, and delivers actionable reports to enhance the security and compliance of AI systems.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.23
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.23
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.23
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(agent-audit-kit): v0.3.23 — per-category README anchors + sync (81-rule drift fix) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/274


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.22...v0.3.23
