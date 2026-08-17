---
title: RepoGuardAI Security Audit
date: 2026-08-17 13:40:19 +00:00
tags:
  - SUDARSHANCHAUDHARI
  - GitHub Actions
draft: false
repo: https://github.com/SUDARSHANCHAUDHARI/RepoGuardAI
marketplace: https://github.com/marketplace/actions/repoguardai-security-audit
version: v0.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  RepoGuardAI is a tool-independent repository auditing framework that guides AI coding agents through repeatable, evidence-driven security and code audits. It inspects repositories, runs local scanners plus its own deterministic scanners to generate precise instructions, ensuring consistent and auditable processes regardless of the agent used.
---


Version updated for **https://github.com/SUDARSHANCHAUDHARI/RepoGuardAI** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repoguardai-security-audit) to find the latest changes.

## Action Summary

RepoGuardAI is a tool-independent repository auditing framework that guides AI coding agents through repeatable, evidence-driven security and code audits. It inspects repositories, runs local scanners plus its own deterministic scanners to generate precise instructions, ensuring consistent and auditable processes regardless of the agent used.

## What's Changed

First tagged release of RepoGuardAI — a tool-independent repository audit framework, packaged as a GitHub Action.

## GitHub Action usage
```yaml
- uses: actions/checkout@v4
- uses: SUDARSHANCHAUDHARI/RepoGuardAI@v0.1.0
  with:
    target: .
    scope: security
    fail-on: high
```

- Runtime: Node 24 action (`action-dist/action.js`)
- Inputs: `target`, `scope` (full|security|api), `fail-on`
- Outputs: `report-directory`, `json-report`, `sarif-report` (SARIF 2.1.0)
- Deterministic-first: scanning + report assembly are deterministic; a coding agent does the reasoning. No AI provider baked in.

See the README and docs/github-actions.md for permissions, private callers, and version pinning.
