---
title: AgentAuditKit MCP Security Scan
date: 2026-04-05 21:59:42 +00:00
tags:
  - sattyamjjain
  - GitHub Actions
draft: false
repo: https://github.com/sattyamjjain/agent-audit-kit
marketplace: https://github.com/marketplace/actions/agentauditkit-mcp-security-scan
version: v0.2.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sattyamjjain/agent-audit-kit** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentauditkit-mcp-security-scan) to find the latest changes.

## Action Summary

**AgentAuditKit** is a security scanner for AI agent pipelines that identifies vulnerabilities such as misconfigurations, hardcoded secrets, tool poisoning, and trust boundary violations across 13 agent platforms. It automates the detection of security risks using 77 rules across 11 categories, offering compliance mapping for standards like SOC 2 and ISO 27001, and operates fully offline without requiring cloud dependencies. The tool integrates seamlessly with GitHub Actions, CLI, and pre-commit hooks, providing actionable security insights directly in development workflows.

## What's Changed

The missing `npm audit` for AI agents. Security scanner for MCP-connected AI agent pipelines.

### Install

```yaml
# GitHub Action (recommended)
- uses: sattyamjjain/agent-audit-kit@v0.2.0
  with:
    fail-on: high
```

```bash
# CLI
pip install agent-audit-kit
agent-audit-kit scan .
```

### Highlights

- **77 detection rules** across 11 security categories
- **13 scanner modules** — Python AST + TypeScript + Rust
- **9 CLI commands**: scan, discover, pin, verify, fix, score, update, proxy, kill
- **OWASP Agentic Top 10**: 10/10 (100%) | **OWASP MCP Top 10**: 10/10 (100%)
- **Compliance**: EU AI Act, SOC 2, ISO 27001, HIPAA, NIST AI RMF
- SARIF 2.1.0 → inline PR annotations in GitHub Security tab
- Tool pinning with SHA-256 rug pull detection
- Security scoring (A-F grades) with SVG badge
- Auto-fix, diff-aware scanning, active secret verification
- Runtime MCP interception proxy
- VS Code extension scaffold
- 441 tests, 90% coverage
- Zero cloud dependencies — fully offline
