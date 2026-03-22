---
title: AgentShield Security Scan
date: 2026-03-22 21:44:46 +00:00
tags:
  - affaan-m
  - GitHub Actions
draft: false
repo: https://github.com/affaan-m/agentshield
marketplace: https://github.com/marketplace/actions/agentshield-security-scan
version: v1.4.0
dependentsNumber: "4"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/affaan-m/agentshield** to version **v1.4.0**.
- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentshield-security-scan) to find the latest changes.

## Action Summary

AgentShield is a security auditing tool designed to scan AI agent configurations, particularly Claude Code setups, for vulnerabilities such as hardcoded secrets, permission misconfigurations, malicious code injections, and server risks. It automates the detection and reporting of security issues in agent environments, providing a graded security report and offering auto-fix capabilities for certain vulnerabilities. This action helps developers proactively secure their AI agent setups and mitigate potential exploits.

## Release notes

## AgentShield v1.4.0

AI agent security scanner. 102+ rules across 5 categories. Scans Claude Code, Codex, Cursor, and OpenCode configurations for vulnerabilities.

### Quick Start

**GitHub Action (CI):**
```yaml
- uses: affaan-m/agentshield@v1.4.0
```

**CLI:**
```bash
npx ecc-agentshield scan
```

**Drop-in workflow:** Copy `examples/agentshield-workflow.yml` to `.github/workflows/` in any repo.

### What's New in v1.4.0

- **False positive fix** — deny rules and PreToolUse block hooks no longer flagged as threats
- **CVE database** — 25+ known MCP vulnerabilities with detection patterns
- **MCP tool poisoning detection** — 5 new rules for tool description injection
- **Watch mode** — continuous scanning with config drift detection
- **Runtime monitoring** — PreToolUse hook for real-time tool call interception
- **Supply chain verification** — npm package metadata checks for MCP servers
- **PR security gate** — baseline comparison with inline annotations
- **Org-wide policy enforcement** — `.agentshield/policy.json` for team security baselines
- **CLAUDE.md permission check** — flags world-writable config files

### Stats

- 1,609 tests passing
- 102+ security rules
- A-F grading with 0-100 numeric score
- Formats: terminal, JSON, markdown, HTML

### Links

- [GitHub](https://github.com/affaan-m/agentshield)
- [npm](https://www.npmjs.com/package/ecc-agentshield)
- [ECC Tools](https://ecc.tools)
