---
title: AgentAuditKit MCP Security Scan
date: 2026-08-15 14:00:30 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.77
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **AgentAuditKit** is a security scanner specifically designed for AI agents, focusing on identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across various agent platforms. It ensures deterministic and offline scanning, producing auditor-ready compliance-evidence packs that meet industry standards like EU AI Act, SOC 2, and ISO 27001/42001.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.77**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**AgentAuditKit** is a security scanner specifically designed for AI agents, focusing on identifying misconfigurations, hardcoded secrets, tool poisoning, rug pulls, trust boundary violations, and tainted data flows across various agent platforms. It ensures deterministic and offline scanning, producing auditor-ready compliance-evidence packs that meet industry standards like EU AI Act, SOC 2, and ISO 27001/42001.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.77
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.77
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.77
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(deps): Bump the github-actions group with 4 updates by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/564
* chore(deps-dev): Update ruff requirement from <0.16,>=0.15 to >=0.15,<0.17 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/563
* Install `aak` as a console script, so the documented shorthand resolves by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/590
* Agent-Zero named pin for CVE-2026-30624, with three corrections to the roadmap row by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/591
* Class rule: deny policy evaluated on a truncated copy of what the executor runs by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/592
* Triage the 2026-08-14 CVE wave: three pins covering five issues, and repoint a dead domain by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/594
* chore(release): v0.3.77 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/595


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.76...v0.3.77
