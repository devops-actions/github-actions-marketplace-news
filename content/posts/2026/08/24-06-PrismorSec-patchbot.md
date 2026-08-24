---
title: Patchbot Vulnerability Scanner
date: 2026-08-24 06:06:57 +00:00
tags:
  - PrismorSec
  - GitHub Actions
draft: false
repo: https://github.com/PrismorSec/patchbot
marketplace: https://github.com/marketplace/actions/patchbot-vulnerability-scanner
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Patchbot automates vulnerability scanning and fix PR creation by inventorying project dependencies, matching them against threat feeds, accepting scanner findings, and fixing broken builds through a coding agent. It supports multiple scanners and threat feeds, handles version bumps, and ensures re-scanning before each PR to maintain a clean commit history.
---


Version updated for **https://github.com/PrismorSec/patchbot** to version **v0.2.1**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/patchbot-vulnerability-scanner) to find the latest changes.

## Action Summary

Patchbot automates vulnerability scanning and fix PR creation by inventorying project dependencies, matching them against threat feeds, accepting scanner findings, and fixing broken builds through a coding agent. It supports multiple scanners and threat feeds, handles version bumps, and ensures re-scanning before each PR to maintain a clean commit history.

## What's Changed

### Highlights
- **Tiered fix loop**: deterministic version bump + lockfile regeneration first; a coding agent only when the bump fails, briefed with the failure itself. Every PR is re-scanned before it opens.
- **Four agent backends**: `claude` / `codex` CLIs, `api` (Anthropic SDK, no Node), `command` (bring your own agent), and `managed` (Claude Managed Agents: the agent runs off your CI runner and your GitHub token never enters the sandbox).
- **Scheduled deployments**: `patchbot managed deploy` runs scan + fix on a cron schedule with no CI at all.
- **GitHub Action**: SARIF upload to the Security tab, optional auto-fix PRs, `model` and `managed-*` inputs.
- Bring your own threat feed (any OSV-format file or URL) and bring your own scanner (trivy, grype, osv-scanner, or any tool that emits SARIF).

### Usage
```yaml
- uses: PrismorSec/patchbot@v0
  with:
    fail-on: high
```   
    
See the README for auto-fix and Managed Agents setups.
