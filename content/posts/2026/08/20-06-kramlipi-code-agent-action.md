---
title: kramlipi CI Repair
date: 2026-08-20 06:41:45 +00:00
tags:
  - kramlipi
  - GitHub Actions
draft: false
repo: https://github.com/kramlipi/code-agent-action
marketplace: https://github.com/marketplace/actions/kramlipi-ci-repair
version: v0.1.7
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `kramlipi CI Repair` GitHub Action automates Continuous Integration (CI) and Code Review processes by using a combination of automatic testing, inline reviews, and test selection based on pull request diffs. It helps developers catch issues early in the development cycle, reduce PR review backlog, and optimize test execution for small changes.
---


Version updated for **https://github.com/kramlipi/code-agent-action** to version **v0.1.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kramlipi-ci-repair) to find the latest changes.

## Action Summary

The `kramlipi CI Repair` GitHub Action automates Continuous Integration (CI) and Code Review processes by using a combination of automatic testing, inline reviews, and test selection based on pull request diffs. It helps developers catch issues early in the development cycle, reduce PR review backlog, and optimize test execution for small changes.

## What's Changed

## kramlipi CI Repair v0.1.7

Verify-gated CI repair for GitHub Actions.

```yaml
- uses: kramlipi/code-agent-action@v0.1.7
  with:
    expert: bug-fix
    verify-cmd: pytest -q
    publish: true
  env:
    GEMINI_API_KEY: ${{ secrets.GEMINI_API_KEY }}
```

**To list on GitHub Marketplace:** edit this release â†’ check **Publish this Action to the GitHub Marketplace** â†’ Publish (requires 2FA on the kramlipi account).

Docs: https://kramlipi.github.io/
