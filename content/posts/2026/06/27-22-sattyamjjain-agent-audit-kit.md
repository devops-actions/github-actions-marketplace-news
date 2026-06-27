---
title: AgentAuditKit MCP Security Scan
date: 2026-06-27 22:14:07 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.41
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.41**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.41
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.41
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.41
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(rules): extend AAK-MCP-HTTP-NOAUTH-SERVER-001 to the launch surface (CVE-2026-23744) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/342
* feat(rules): AAK-SKILL-UNTRUSTED-EXEC-PATH — untrusted search path in skill/install flows (CVE-2026-53819) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/343
* feat(rules): AAK-MCP-ARGV-TOCTOU-001 — argv rebuilt after allowlist approval (CVE-2026-53822) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/344
* feat(rules): AAK-MCP rule for unauthenticated HTTP MCP transport (CVE-2026-49257, CVE-2026-48989) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/345
* feat(rules): AAK-MCP-NOAUTH-DEFAULT — unauthenticated-by-default / fail-open MCP auth (CVE-2026-48814) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/346
* docs: State of MCP Security 2026 — data report + backing scan data by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/339
* chore(deps): Bump actions/checkout from 6.0.3 to 7.0.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/338
* chore(deps): Bump sigstore/gh-action-sigstore-python from 3.3.0 to 3.4.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/322
* fix: enforce one canonical rule count across README/pyproject/CLI by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/352
* docs: retire public 48h CVE-to-rule SLA; lead with offline + compliance wedges by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/370
* chore(rules): CVE-backlog coverage — extend Flowise/LiteLLM/Doris pins by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/371


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.35...v0.3.41
