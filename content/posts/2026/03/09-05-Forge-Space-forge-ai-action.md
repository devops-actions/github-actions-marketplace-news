---
title: Forge AI — Quality Gates for AI-Assisted Code
date: 2026-03-09 05:57:51 +00:00
tags:
  - Forge-Space
  - GitHub Actions
draft: false
repo: https://github.com/Forge-Space/forge-ai-action
marketplace: https://github.com/marketplace/actions/forge-ai-quality-gates-for-ai-assisted-code
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Forge-Space/forge-ai-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/forge-ai-quality-gates-for-ai-assisted-code) to find the latest changes.

## Action Summary

The Forge AI Action is a GitHub Action designed to enhance code quality and governance by automatically analyzing pull requests for quality regressions, AI anti-patterns, security vulnerabilities, and other issues. It provides quality reports with scores, insights, and pass/fail gates, enabling teams to ensure that AI-assisted or manual code changes improve rather than degrade the codebase. Key features include quality gating, codebase assessments, migration planning, and detailed feedback on areas such as security, performance, accessibility, and scalability.

## Release notes

## Legacy Migration Toolkit

Two new commands for governing legacy project modernization:

### `assess` — Project Health Assessment
Evaluates your codebase across 5 categories:
- Dependencies (lockfile, legacy packages, dep count)
- Architecture (god files, coupling, sprawl)
- Security (secrets, XSS, SQL injection, CORS)
- Quality (testing, linting, types, CI)
- Migration Readiness (legacy stacks, global state, docs)

### `migrate` — Full Migration Roadmap
Everything in `assess` plus:
- **Strategy recommendation** (Strangler Fig, Branch by Abstraction, Parallel Run)
- **Strangler boundary detection** for safe module decomposition
- **TypeScript migration plan** with prioritized file list
- **Dependency risk analysis** with replacement recommendations
- **Phased roadmap** with quality gates per phase
- **Effort estimation**

### Usage

```yaml
# Health assessment only
- uses: Forge-Space/forge-ai-action@v1
  with:
    command: assess

# Full migration toolkit
- uses: Forge-Space/forge-ai-action@v1
  with:
    command: migrate
    threshold: 40
```

### New Outputs
- `readiness` — `ready`, `needs-work`, or `high-risk`
- `strategy` — recommended migration strategy

### Other Changes
- Bumped scanner to 109 rules (from 89) via forge-ai-init ^0.20.0
- 44 tests passing (16 new)
