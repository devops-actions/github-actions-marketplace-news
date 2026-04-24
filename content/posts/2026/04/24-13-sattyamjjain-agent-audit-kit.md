---
title: AgentAuditKit MCP Security Scan
date: 2026-04-24 13:57:33 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.4
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for AI agent pipelines that identifies vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 agent platforms. It automates compliance checks, taint analysis, and supply chain security, providing extensive rule-based scanning and OWASP-aligned coverage for proactive risk mitigation. The action enables offline use, generates detailed compliance reports, and ensures rapid updates for addressing newly disclosed CVEs.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.4
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.4
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.4
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(deps): Bump pyyaml from 6.0.2 to 6.0.3 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/7
* chore(deps): Bump docker/login-action from 3.0.0 to 4.1.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/3
* chore(deps): Bump actions/setup-python from 4.7.1 to 6.2.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/2
* chore(deps): Bump actions/attest-build-provenance from 1.4.3 to 4.1.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/4
* chore(deps): Bump softprops/action-gh-release from 2 to 3 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/19
* chore(deps): Bump docker/build-push-action from 5.0.0 to 7.1.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/20
* chore(deps): Bump click from 8.1.7 to 8.1.8 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/8
* v0.3.4 — DNS-rebind SDK class + token-in-log sink + Immutable Action + OWASP public JSON by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/60

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/sattyamjjain/agent-audit-kit/pull/7
* @sattyamjjain made their first contribution in https://github.com/sattyamjjain/agent-audit-kit/pull/60

**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.3...v0.3.4
