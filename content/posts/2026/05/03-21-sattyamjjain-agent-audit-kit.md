---
title: AgentAuditKit MCP Security Scan
date: 2026-05-03 21:31:01 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.13
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.13**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed to audit AI agent pipelines connected to Machine-Contextualized Processing (MCP) ecosystems. It identifies vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and tainted data flows across 13 agent platforms, offering compliance mapping to multiple regulatory frameworks and standards. The tool automates tasks like vulnerability detection, rule enforcement, supply chain security, and generates detailed reports, all while operating offline for enhanced security.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.13
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.13
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.13
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* chore(deps): Bump docker/setup-buildx-action from 3 to 4 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/125
* chore(deps): Bump ossf/scorecard-action from 2.4.0 to 2.4.3 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/126
* chore(deps): Bump sigstore/gh-action-sigstore-python from 3.0.0 to 3.3.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/127
* chore(deps): Bump actions/setup-python from 4.7.1 to 6.2.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/128
* chore(deps): Bump pypa/gh-action-pypi-publish from 1.13.0 to 1.14.0 by @dependabot[bot] in https://github.com/sattyamjjain/agent-audit-kit/pull/129
* feat(cli+docs+test): close 8 GFI issues from 2026-04-05 backlog batch by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/139
* feat(agent-audit-kit): v0.3.13 — chatgpt-mcp CVE pin (#80) + aak notify Slack (#66) + pre-commit installer (#65) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/140


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.12...v0.3.13
