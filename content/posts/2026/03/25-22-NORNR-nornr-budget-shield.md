---
title: NORNR Budget Shield
date: 2026-03-25 22:17:04 +00:00
tags:
  - NORNR
  - GitHub Actions
draft: false
repo: https://github.com/NORNR/nornr-budget-shield
marketplace: https://github.com/marketplace/actions/nornr-budget-shield
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/NORNR/nornr-budget-shield** to version **v1.0.3**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nornr-budget-shield) to find the latest changes.

## Action Summary

The **NORNR Budget Shield** GitHub Action is a review-first control mechanism designed to identify and comment on pull requests that introduce new payment, tool, vendor, or execution surfaces without an explicit governance story. Its primary purpose is to help teams proactively address potential financial or operational risks by flagging consequential changes early in the development process. This action provides calm, actionable insights directly in pull requests, guiding teams to establish proper governance lanes before merging, without blocking merges or overwhelming users with unnecessary feedback.

## Release notes

NORNR Budget Shield is the review-first GitHub Action for consequential execution.

This release sharpens the action in two ways:

- the PR comment now names the likely NORNR surface, why that lane fits, and where the team should go next
- the public README now points to a real demo repo and live demo PR instead of only static examples

What changed:

- lane-aware suggestions for wrappers, MCP, browser checkout governance and governed runtime
- live proof links to the public demo repo and pull request
- dedicated public mirror target for the demo repo

Install:

```yaml
- uses: NORNR/nornr-budget-shield@v1
  with:
    severity: review-first
```

Live proof:

- Action repo: https://github.com/NORNR/nornr-budget-shield
- Demo repo: https://github.com/NORNR/nornr-budget-shield-demo
- Demo PR: https://github.com/NORNR/nornr-budget-shield-demo/pull/1

Related NORNR surfaces:

- Governance Audit: https://nornr.com/governance-audit
- PR Comment Audit explainer: https://nornr.com/pr-comment-audit
- MCP control layer: https://nornr.com/mcp-control-server
- Spend-aware wrappers: https://nornr.com/spend-aware-wrappers
