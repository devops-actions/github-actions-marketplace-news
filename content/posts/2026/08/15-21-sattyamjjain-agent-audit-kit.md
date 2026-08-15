---
title: AgentAuditKit MCP Security Scan
date: 2026-08-15 21:34:52 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.78
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  AgentAuditKit is a security scanner designed to audit AI agent pipelines, identifying misconfigurations, hardcoded secrets, tool poisoning, and other vulnerabilities. It runs fully offline and deterministically, producing auditor-ready compliance-evidence packs.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.78**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to audit AI agent pipelines, identifying misconfigurations, hardcoded secrets, tool poisoning, and other vulnerabilities. It runs fully offline and deterministically, producing auditor-ready compliance-evidence packs.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.78
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.78
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.78
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* ssrf_patterns: require reachability instead of deciding file-wide by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/596
* Correct transport-flip remediation that pointed at fields the MCP spec does not define by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/597
* Replace the proximity heuristic for AAK-MCP-STDIO-CMD-INJ-002 with data flow by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/599
* Stop the CVE watcher filing CVEs from outside the ecosystem it tracks by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/600
* chore(release): v0.3.78 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/601


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.77...v0.3.78
