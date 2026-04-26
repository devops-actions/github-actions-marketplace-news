---
title: AgentAuditKit MCP Security Scan
date: 2026-04-26 13:38:26 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.7
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a comprehensive security scanner for AI agent pipelines, designed to detect vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, trust boundary violations, and tainted data flows across 13 agent platforms. It automates security analysis using 169 rules across 11 categories, provides compliance mapping for multiple frameworks, and supports offline operation with zero cloud dependencies. This action helps organizations safeguard their AI systems by identifying risks, generating detailed security reports, and ensuring robust compliance with industry standards and regulations.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.7
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.7
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.7
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* fix(engine): honor --ignore-paths globally + dogfood the published Action by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/71
* v0.3.7 — release-mechanics patch (Dockerfile + ignore_paths fixes) by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/72


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.6...v0.3.7
