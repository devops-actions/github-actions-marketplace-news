---
title: AgentGuard Permission Audit
date: 2026-05-26 22:50:55 +00:00
tags:
  - waelrezguii
  - GitHub Actions
draft: false
repo: https://github.com/waelrezguii/agentguard
marketplace: https://github.com/marketplace/actions/agentguard-permission-audit
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/waelrezguii/agentguard** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentguard-permission-audit) to find the latest changes.

## Action Summary

AgentGuard is a security auditing tool designed to analyze the permission configurations of AI agents and Model Context Protocol (MCP) servers prior to deployment. It identifies potential risks, such as over-permissioned tools or exposed sensitive resources, and provides actionable recommendations to mitigate vulnerabilities. By automating the scanning process, it helps developers ensure their AI systems are secure and minimize the potential impact of malicious attacks or accidental misuse.

## What's Changed

## AgentGuard Permission Audit — v0.3.0

Automatically detects when a pull request increases an AI agent's permission surface and posts a review comment explaining the risk.

### What it does
- Scans LangChain agent files changed in the PR
- Compares tool permissions between base branch and PR head
- Posts a comment when blast radius increases (e.g. ShellTool added → exec scope, CRITICAL)
- Optionally fails the build on permission escalation

### Usage
```yaml
- uses: waelrezguii/agentguard@v0.3.0
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    fail-on-escalation: "true"
