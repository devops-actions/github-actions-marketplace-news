---
title: Foreman Agent Review Gate
date: 2026-07-15 06:44:58 +00:00
tags:
  - rohitkumarmanne-442
  - GitHub Actions
draft: false
repo: https://github.com/rohitkumarmanne-442/Foreman
marketplace: https://github.com/marketplace/actions/foreman-agent-review-gate
version: v1.0.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Foreman is a local code review tool that helps ensure AI-generated changes are verified. It automatically checks each claim made by AI agents against the actual code they produced, ensuring that claims are supported with verification commands.
---


Version updated for **https://github.com/rohitkumarmanne-442/Foreman** to version **v1.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/foreman-agent-review-gate) to find the latest changes.

## Action Summary

Foreman is a local code review tool that helps ensure AI-generated changes are verified. It automatically checks each claim made by AI agents against the actual code they produced, ensuring that claims are supported with verification commands.

## What's Changed

**Foreman is the review inbox for your AI workforce**, every AI-agent coding session becomes a risk-ranked review card, backed by cryptographically signed receipts that prove what tools your agents actually ran. 100% local, zero external LLM calls.

This release puts Foreman's CI gate on the **GitHub Marketplace** and sharpens the docs so you can wire it in at a glance. Same v1.0.0 engine underneath — **36/36 tests green**.

### 🏪 Now on the GitHub Marketplace
Block PRs with unreviewed risky agent sessions in a few lines:

```yaml
# .github/workflows/foreman.yml
name: Foreman
on: [pull_request]
jobs:
  gate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: rohitkumarmanne-442/Foreman@v1
        with:
          level: high   # block on unreviewed high/critical sessions

