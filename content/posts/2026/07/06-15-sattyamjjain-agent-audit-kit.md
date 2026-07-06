---
title: AgentAuditKit MCP Security Scan
date: 2026-07-06 15:24:39 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.46
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.46**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.46
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.46
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.46
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat: State of MCP Security 2026 data-report harness by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/373
* docs: kill public rule-count drift (221->225) + promote MCP-security data-report by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/382
* chore(deps): Bump actions/setup-python from 6.2.0 to 6.3.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/377
* chore(deps): Bump click from 8.1.8 to 8.4.2 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/376
* chore(deps): bump github/codeql-action to v4.36.2 (all steps together) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/383
* docs: finish State of MCP Security 2026 report (launch-ready) + v0.3.42 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/392
* feat: MCP prevalence scan (664 configs) + score calibration (#23) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/393
* feat(rules): pin CVE-2026-52830 bearer-token path-traversal (AAK-MCP-AUTH-PATHTRAVERSAL-001, #394) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/396
* feat: MCP Server Card (SEP-1649) static scanner + prevalence crawler by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/397
* feat: public OWASP coverage leaderboard (#67) + Kong Konnect MCP CVE-2026-13341 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/405
* feat(bench): reproducibility head-to-head — 20-run byte-identical finding set by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/406
* fix(rules): AAK-FLOWISE-001 pin 3.1.2→3.1.3 for CVE-2026-58057 (closes #372) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/407


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.41...v0.3.46
