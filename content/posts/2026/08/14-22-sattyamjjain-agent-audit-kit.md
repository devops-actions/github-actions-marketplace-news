---
title: AgentAuditKit MCP Security Scan
date: 2026-08-14 22:29:27 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.3.76
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  **Summary:**
  AgentAuditKit automates the security audit of AI agent pipelines, detecting misconfigurations, hardcoded secrets, tool poisoning, and trust boundary violations. It runs offline and deterministically, ensuring consistent findings across different environments. The tool produces auditor-ready compliance-evidence packs, covering a wide range of security categories including 298 rules and 89 scanner modules.
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.3.76**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**Summary:**
AgentAuditKit automates the security audit of AI agent pipelines, detecting misconfigurations, hardcoded secrets, tool poisoning, and trust boundary violations. It runs offline and deterministically, ensuring consistent findings across different environments. The tool produces auditor-ready compliance-evidence packs, covering a wide range of security categories including 298 rules and 89 scanner modules.

## What's Changed

## Installation

**pip:**
```bash
pip install agent-audit-kit==v0.3.76
```

**Docker:**
```bash
docker pull ghcr.io/sattyamjjain/agent-audit-kit:v0.3.76
```

**GitHub Action:**
```yaml
- uses: sattyamjjain/agent-audit-kit@v0.3.76
  with:
    fail-on: high
```

## Supply chain

- `rules.json` — deterministic rule bundle
- `rules.json.sha256` — trusted digest
- `sbom.cdx.json` / `sbom.spdx.json` — CycloneDX + SPDX SBOM
- `*.sigstore` — Sigstore keyless signatures (verify with `agent-audit-kit verify-bundle`)


## What's Changed
* Two CVE rules, the strict_loading warm-registry fix, real session transcripts, and CVE-to-rule latency as a published number by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/583
* Triage the 2026-08-13 CVE wave: two pins, one reference, five documented out-of-scope by @sattyamjjain in https://github.com/sattyamjjain/agent-audit-kit/pull/584


**Full Changelog**: https://github.com/sattyamjjain/agent-audit-kit/compare/v0.3.74...v0.3.76
