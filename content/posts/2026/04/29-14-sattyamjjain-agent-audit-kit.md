---
title: AgentAuditKit MCP Security Scan
date: 2026-04-29 14:40:39 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.9
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.9**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a comprehensive security scanner designed for AI agent pipelines connected to MCP (Multi-Agent Control Protocol) systems. It automates the detection of vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 AI agent platforms, using 180 security rules and 28 specialized scanner modules. The tool enhances compliance with global security frameworks, provides detailed vulnerability reports, and operates fully offline to ensure secure and private analysis.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.9
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.9
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.9
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(deps): Bump actions/github-script from 7 to 9 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/73
* chore(deps): Bump actions/cache from 4 to 5 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/74
* chore(deps): Bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/75
* chore(deps): Bump github/codeql-action from 3 to 4 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/76
* chore(deps): Bump actions/upload-artifact from 4 to 7 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/77
* feat(v0.3.9): 5 rules + 4 CLI commands + runtime parity + LSP IDE by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/89
* fix(v0.3.9): bump pyproject.toml version 0.3.8 → 0.3.9 by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/92


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.8...v0.3.9
