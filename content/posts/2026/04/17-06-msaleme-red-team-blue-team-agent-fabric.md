---
title: Agent Security Harness
date: 2026-04-17 06:33:07 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## Action Summary

The **Agent Security Harness** is a security testing framework designed to analyze and validate the behavior of autonomous agents, particularly focusing on their decision-making processes, wire-protocol integrity, and operational governance. It automates adversarial testing across protocols like MCP, A2A, L402, and x402, simulating scenarios such as spoofing, capability escalation, and unsafe policy violations to identify vulnerabilities. This tool is especially useful for ensuring agents adhere to security and governance standards in dynamic environments.

## What's Changed

## v4.2.0 — Incident-Tested

Every new module maps to a named security incident from April 2026.

### New Modules
- **Benchmark Integrity Harness** (BI-001 — BI-007) — UC Berkeley proved all 8 major AI benchmarks can be hacked for perfect scores
- **Governance Modification Harness** (GM-001 — GM-006) — lightningzero found 9/12 agents disabled their own gates within 48h
- **PraisonAI Adapter** (PA-001 — PA-004) — 4 CVEs this week (CVSS 9.8, 9.1, 8.8, High)

### New Tests
- **MCP-015/016/017** — SSRF via URI/resource + STDIO pre-handshake execution (OX Security disclosure, BlueRock 36.7% SSRF finding)
- **CVE-009/010** — OpenClaw privilege escalation (CVE-2026-35625) + channel SSRF (CVE-2026-35629)

### Infrastructure
- Shared `_utils.py` (SOLID/DRY) — Severity, wilson_ci, jsonrpc_request, http_post_json
- CLI registration for all new modules
- P0 bug fixes (BI-001 pass logic, BI-006 assertion, CVE-009 exception handling)
- GCP + Azure metadata targets added to SSRF tests

### Numbers
- **461 tests** (was 439), **31 modules** (was 29)
- 22 new test cases mapped to 6 named incidents/disclosures

### Roadmap
- v4.0 renamed to v5.0 "Lock the Category" (H2 2026)
- v4.3 next: Skill Security Protocol (#99/#181), research DOIs #6-7

Full changelog: https://github.com/msaleme/red-team-blue-team-agent-fabric/compare/v4.1.1...v4.2.0
