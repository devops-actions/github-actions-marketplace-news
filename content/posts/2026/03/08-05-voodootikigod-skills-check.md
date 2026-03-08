---
title: Skills Check CI
date: 2026-03-08 05:49:18 +00:00
tags:
  - voodootikigod
  - GitHub Actions
draft: false
repo: https://github.com/voodootikigod/skills-check
marketplace: https://github.com/marketplace/actions/skills-check-ci
version: v1.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/voodootikigod/skills-check** to version **v1.2.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skills-check-ci) to find the latest changes.

## Action Summary

`skills-check` is a CLI tool that ensures the quality and integrity of Agent Skills by identifying outdated dependencies, auditing security, and enforcing metadata and policy compliance. It automates version drift detection for skills referencing versioned products, generates detailed reports, and performs security and metadata analysis to prevent issues like hallucinated dependencies or prompt injection vulnerabilities. This tool helps maintain up-to-date, secure, and reliable skill repositories.

## Release notes

## Skills Check CI v1.2.1

The missing quality toolkit for Agent Skills — freshness, security, linting, and more, as a GitHub Action.

### Features

- **10 commands** available via the action: `check`, `audit`, `lint`, `budget`, `verify`, `policy`, `test`, `report`, `refresh`, `init`
- **Flexible command selection** — use `commands: "check,audit,lint"` or individual toggle inputs
- **Per-command thresholds** — `audit-fail-on`, `lint-fail-on`, `budget-max-tokens`, `policy-fail-on`
- **CI-first** — JSON output, strict exit codes, configurable failure thresholds
- **Isolation zones** for `audit` and `test` commands
- **Automatic issue management** — opens/updates GitHub issues when skill staleness is detected

### Quick Usage

```yaml
- uses: voodootikigod/skills-check@v1
  with:
    commands: "check,audit,lint"
    audit-fail-on: "high"
```    

Or use individual toggles:
```yaml
- uses: voodootikigod/skills-check@v1
  with:
    check: "true"
    audit: "true"
    lint: "true"
```    


Outputs
```
┌──────────────┬─────────────────────────────────────────┐
│    Output    │               Description               │
├──────────────┼─────────────────────────────────────────┤
│ stale-count  │ Number of stale products                │
├──────────────┼─────────────────────────────────────────┤
│ issue-number │ GitHub issue created/updated            │
├──────────────┼─────────────────────────────────────────┤
│ report       │ Full markdown report                    │
├──────────────┼─────────────────────────────────────────┤
│ results      │ JSON object with per-command exit codes │
└──────────────┴─────────────────────────────────────────┘
```
Requirements

- Node.js 22+ (configurable via node-version input)
