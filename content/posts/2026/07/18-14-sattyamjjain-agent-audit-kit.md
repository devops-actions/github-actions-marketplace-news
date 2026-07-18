---
title: AgentAuditKit MCP Security Scan
date: 2026-07-18 14:20:53 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.50
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit automates security scans for AI agents, providing a fully offline and deterministic solution to identify misconfigurations, hardcoded secrets, tool poisoning, and other threats. It produces auditor-ready evidence packs in SARIF format and PDF reports mapped to 13 frameworks, ensuring compliance with EU AI Act, SOC 2, ISO standards, and regional regulations.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.50**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit automates security scans for AI agents, providing a fully offline and deterministic solution to identify misconfigurations, hardcoded secrets, tool poisoning, and other threats. It produces auditor-ready evidence packs in SARIF format and PDF reports mapped to 13 frameworks, ensuring compliance with EU AI Act, SOC 2, ISO standards, and regional regulations.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.50
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.50
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.50
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* docs: single-source rule count + retire unbounded 48h CVE-SLA claim by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/432
* feat(rules): AAK-OAUTH-007 RFC 8707 resource indicators + reconcile July rules to ratified MCP 2026-07-28 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/443
* fix(rules): 2026-07-13..15 MCP CVE backlog — 7 version-pin rules (247→254) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/444
* fix(rules): 2026-07-15..17 MCP CVE wave — 7 version-pin rules (254→261) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/469


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.49...v0.3.50
