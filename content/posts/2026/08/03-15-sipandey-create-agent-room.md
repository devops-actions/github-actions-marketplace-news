---
title: create-agent-room Validate
date: 2026-08-03 15:03:52 +00:00
tags:
  - sipandey
  - GitHub Actions
draft: false
repo: https://github.com/sipandey/create-agent-room
marketplace: https://github.com/marketplace/actions/create-agent-room-validate
version: v2.3.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates agent governance rules by enforcing them at multiple layers (agent work, commit, CI, compliance) with shared stop hooks and pre-commit guardrails. It helps prevent common mistakes during agent turns, commits, and builds while providing a clear documentation of governance practices. The action ensures that agents log decisions or use valid waivers when editing files or committing code.
---


Version updated for **https://github.com/sipandey/create-agent-room** to version **v2.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-agent-room-validate) to find the latest changes.

## Action Summary

This GitHub Action automates agent governance rules by enforcing them at multiple layers (agent work, commit, CI, compliance) with shared stop hooks and pre-commit guardrails. It helps prevent common mistakes during agent turns, commits, and builds while providing a clear documentation of governance practices. The action ensures that agents log decisions or use valid waivers when editing files or committing code.

## What's Changed

## Highlights

- **Layer 4 by default:** `init --tools git` scaffolds `create-agent-room eval` in CI alongside `validate` and `lint-sessions`
- **JavaScript stack template** for the default `--language javascript` path
- **Docs refresh:** comparisons.md updated for v2.3.0+; README/CAPABILITIES/enforcement-model aligned
- **Launch playbooks** in `docs/launch/` (Show HN, Marketplace, community posts, awesome lists)

## Try it

```bash
npx create-agent-room@latest init . --yes --tools git,cursor --git
```

Full changelog: [CHANGELOG.md](https://github.com/sipandey/create-agent-room/blob/v2.3.1/CHANGELOG.md)
