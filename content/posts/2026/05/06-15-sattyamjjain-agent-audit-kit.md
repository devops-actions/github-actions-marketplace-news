---
title: AgentAuditKit MCP Security Scan
date: 2026-05-06 15:04:48 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.15
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.15**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

AgentAuditKit is a security scanner designed for MCP-connected AI agent pipelines, identifying vulnerabilities such as misconfigurations, hardcoded secrets, supply chain risks, and tainted data flows across 13 AI platforms. It automates the detection and remediation of security issues using 193 rules and 59 scanner modules, while offering compliance mapping for major regulatory frameworks and offline, cloud-independent operation. This tool addresses the growing need for robust security auditing in AI systems, ensuring adherence to industry standards and rapid response to emerging CVEs.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.15
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.15
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.15
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* feat(agent-audit-kit): v0.3.15 — GPT-Researcher MCP transport-flip + MCP-2026-Roadmap conformance by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/182


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.14...v0.3.15
