---
title: Plimsoll agent release review
date: 2026-07-27 06:44:36 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/plimsoll-action
marketplace: https://github.com/marketplace/actions/plimsoll-agent-release-review
version: v1.1.5
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action, Plimsoll release review, automates the process of reviewing AI agents' runtime capabilities before deployment. It helps teams identify changes in filesystem paths, network endpoints, and MCP tools between releases. The action posts a sticky review comment on PRs, reports findings in code scanning, and allows customizable gating behavior such as waiting for human approval or blocking until coverage is held. This ensures that teams can make informed decisions about deploying agents with updated capabilities.
---


Version updated for **https://github.com/Rul1an/plimsoll-action** to version **v1.1.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/plimsoll-agent-release-review) to find the latest changes.

## Action Summary

The GitHub Action, Plimsoll release review, automates the process of reviewing AI agents' runtime capabilities before deployment. It helps teams identify changes in filesystem paths, network endpoints, and MCP tools between releases. The action posts a sticky review comment on PRs, reports findings in code scanning, and allows customizable gating behavior such as waiting for human approval or blocking until coverage is held. This ensures that teams can make informed decisions about deploying agents with updated capabilities.

## What's Changed

Patch release for the Plimsoll GitHub Action.

- accepts the canonical monitor `connect` line with or without its separator colon
- rejects prefix lookalikes such as `connectx` and `connection-refused`
- aligns the embedded Python package and runtime version at `0.5.1`
- adds focused parser-boundary and version-contract tests

This release hardens parsing boundaries. It does not prove capture completeness, runtime truth, or general ReDoS freedom.

Immutable action ref: `Rul1an/plimsoll-action@v1.1.5`
Reviewed source commit: `ff25c671fab147d0fb296b317d8524906c15133f`.
