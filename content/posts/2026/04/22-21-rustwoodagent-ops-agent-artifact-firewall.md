---
title: AGENT-ARTIFACT-FIREWALL
date: 2026-04-22 21:25:23 +00:00
tags:
  - rustwoodagent-ops
  - GitHub Actions
draft: false
repo: https://github.com/rustwoodagent-ops/agent-artifact-firewall
marketplace: https://github.com/marketplace/actions/agent-artifact-firewall
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rustwoodagent-ops/agent-artifact-firewall** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-artifact-firewall) to find the latest changes.

## Action Summary

**AGENT-ARTIFACT-FIREWALL** is a GitHub Action and CLI tool designed to scan and analyze AI agent-related artifacts—such as skills, plugins, hooks, and configuration files—for security risks before execution. It automates the identification of potential threats, including prompt injections, unsafe commands, and credential leaks, ensuring safer deployment of AI agents. Key features include customizable risk thresholds, various output formats (e.g., JSON, SARIF), and integration with CI pipelines for automated security checks.

## What's Changed

v0.1.3 makes AGENT-ARTIFACT-FIREWALL easier to try, easier to trust, and easier to demo.

## What changed
- upgraded the README to an activation-first flow
- moved install and first-run output higher up the page
- added deterministic local demo fixtures for:
  - AAF017 + AAF018
  - AAF015
  - AAF007 + AAF017
- added end-to-end scan tests for those fixtures
- refreshed the scanner test matrix doc

## Why it matters
- faster first successful runs in external repos
- clearer proof of real scanner coverage
- stronger public-facing demo story

## Validation
- deterministic fixture scans verified locally
- `go test ./internal/aaf` passed
- no scanner engine logic changed

## Scope
- README, docs, fixtures, and tests only
- no rule expansion
- no engine rewrite
