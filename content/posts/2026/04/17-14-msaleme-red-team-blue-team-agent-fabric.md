---
title: Agent Security Harness
date: 2026-04-17 14:11:19 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## Action Summary

The **Agent Security Harness** is a comprehensive testing framework designed to evaluate the security and governance of agent-based systems, focusing on protocol integrity, operational governance, and decision-layer vulnerabilities. It automates the identification of risks such as spoofing, capability escalation, and unsafe decision-making through 466 adversarial security tests across multiple protocols (e.g., MCP, A2A, L402, x402). This tool is particularly suited for detecting and mitigating decision-layer manipulation, policy violations, and advanced persistent threats in agent interactions, offering robust, wire-protocol-level testing and decision governance.

## What's Changed

## v4.3.0 — Supply Chain + Corpus

### New Modules
- **Skill Security Protocol Harness** (SS-001 — SS-008) — implements RFC #99. Tests skill manifest integrity, permission validation, prompt injection in SKILL.md files, exfiltration detection, Ed25519 provenance chain, capability escalation via composition, sandboxing tier enforcement, update tampering. Maps to: ClawHub 341 malicious skills (12% of registry).
- **Decision Behavior Benchmark Corpus** — 52 curated test cases across 5 categories (escalation bypass, collusion, memory tampering, payment/tool chain, evidence fabrication). 84% of cases invisible to metadata-only scanners. Machine-readable, importable, citable. Closes #120.

### Cross-Repo
- Constitutional-agent governance linked in README

### Infrastructure
- `HIDDEN_INSTRUCTION_PATTERN` extracted to `_utils.py` (DRY — was duplicated in mcp_harness and skill_security_harness)
- Dynamic test count in CLI (no more hardcoded numbers)
- P0 bug fixes: cli.py VERSION string, CVE description count, BI-001 pass logic, BI-006 assertion, CVE-009 exception handling
- ASI07 corpus coverage added (DBC-051, DBC-052)
- All doc counts aligned to 466 tests, 32 modules

### Numbers
- **466 tests**, **32 modules**, **52 benchmark cases**
- Closes #120 (benchmark corpus), #181 (SSP implementation)

Full changelog: https://github.com/msaleme/red-team-blue-team-agent-fabric/compare/v4.2.0...v4.3.0
