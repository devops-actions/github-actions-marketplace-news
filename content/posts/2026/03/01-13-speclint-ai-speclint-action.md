---
title: Speclint Issue Linter
date: 2026-03-01 13:23:24 +00:00
tags:
  - speclint-ai
  - GitHub Actions
draft: false
repo: https://github.com/speclint-ai/speclint-action
marketplace: https://github.com/marketplace/actions/speclint-issue-linter
version: v1.0.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/speclint-ai/speclint-action** to version **v1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/speclint-issue-linter) to find the latest changes.

## Action Summary

The Speclint GitHub Action automates the process of analyzing and scoring GitHub issues for completeness, ensuring they are well-defined before being worked on by AI coding agents. It evaluates issues for specification clarity, posts a refined spec with key details (e.g., problem statement, acceptance criteria), and labels issues as `agent_ready` or `needs-refinement` based on their completeness. This streamlines workflows by improving issue quality and readiness for automated processing.

## Release notes

## Speclint GitHub Action v1.0.0

Lint your GitHub issues before AI coding agents touch them.

**What it does:**
- Fires on `issues.opened`
- Calls the Speclint API (`/api/lint`) to score the spec 0-100
- Posts the refined spec as a comment on the issue
- Adds `agent_ready` label when score ≥ threshold (default: 70)
- Adds `needs-refinement` label when score < threshold

**Quick start:**
```yaml
- uses: speclint-ai/speclint-action@v1
  with:
    api-key: ${{ secrets.SPECLINT_KEY }}
```

Get your API key at https://speclint.ai/get-key
