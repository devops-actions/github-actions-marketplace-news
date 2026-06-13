---
title: AgentAuditKit MCP Security Scan
date: 2026-06-13 22:10:29 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.34
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.34**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.34
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.34
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.34
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(rules): AAK-MCP-ATTEST-001 — deny-by-default attested MCP server admission (arXiv:2605.24248) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/287
* feat(rules): AAK-MCP-TUNNEL-001..003 — Anthropic MCP Tunnels preventive pack + ISO 42001 framework by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/288
* feat(compliance): add NSA MCP Security CSI (2026) control mapping + report by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/294
* chore(docs): record 2nd decline of CVE-2026-33032 duplicate-rule proposal by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/295
* feat(rules): scan per-parameter descriptions for MCP tool-poisoning by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/299
* feat(rules): extend AAK-TAINT-005 SQL-sink detection to TypeScript/JS (OX MCP-SDK class) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/303
* fix(compliance): close NSA MCP CSI coverage gaps (17 rules) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/304
* feat(rules): add AAK-MCP-SANDBOX-SELFDISABLE-001 (CVE-2026-42074 class) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/306
* feat(rules): add AAK-AGENT-SHARED-RES-AUTHZ-001 (CVE-2026-44654 class) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/308
* feat(rules): add AAK-MCP-STDIO-LAUNCHER-INJECT-001 (CVE-2026-40933 class) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/309
* fix(rules): CrewAI chain NVD severity reconciliation + evasion-gap closures by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/310
* fix(rules): add AAK-MCP-TOOLGATE-ASYMMETRY-001 (CVE-2026-46519) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/317
* fix(rules): add AAK-MCP-ENV-PLACEHOLDER-EXFIL-001 (CVE-2026-32625) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/318
* feat(rules): AAK-MCP-HTTP-NOAUTH-SERVER-001 + CVE-response backlog triage by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/319


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.26...v0.3.34
