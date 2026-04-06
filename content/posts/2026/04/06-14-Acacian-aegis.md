---
title: Aegis AI Governance Gate
date: 2026-04-06 14:06:12 +00:00
tags:
  - Acacian
  - GitHub Actions
draft: false
repo: https://github.com/Acacian/aegis
marketplace: https://github.com/marketplace/actions/aegis-ai-governance-gate
version: v0.9.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Acacian/aegis** to version **v0.9.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aegis-ai-governance-gate) to find the latest changes.

## Action Summary

Agent-Aegis is a GitHub Action designed to identify and mitigate ungoverned AI and tool calls in your codebase, helping developers ensure compliance with governance policies before deploying to production. It scans code to detect risky patterns across multiple frameworks, such as unregulated API calls, data leakage, and uncontrolled code execution, and provides automated solutions to fix these issues. By adding a single line of code, it enables features like policy enforcement, PII masking, injection blocking, and audit trail generation without requiring manual code modifications.

## What's Changed

## What's New

### Scan-First Experience
- **README restructured** around `aegis scan` — "Find ungoverned AI calls in 30 seconds" is now the first thing you see
- **Playground**: new `aegis scan` demo tab as the default landing experience with 4 presets

### GitHub Action: PR Comments
- `aegis` GitHub Action now posts policy results (scan/score/plan/test) as PR comments
- Upserts existing comments to avoid spam
- New inputs: `comment` (true/false), `github-token`

### Playground: Policy CI/CD Demo
- New interactive "Policy CI/CD" tab with 4 scenarios
- Simulates `aegis plan` → `aegis test` → PR comment preview workflow

### Fixes & Cleanup
- Windows compatibility: UTF-8 encoding for YAML files, path normalization, timer resolution
- Removed dead `MANIFEST.in` (hatchling build)
- Synced server.json version
- Exported 5 previously unreachable modules (killswitch, autopolicy_llm, rate_limiter_redis, tenant, tiers)

**Full Changelog**: https://github.com/Acacian/aegis/compare/v0.9.1...v0.9.2
