---
title: Agent Interlock
date: 2026-06-13 14:52:20 +00:00
tags:
  - farshadpasbani
  - GitHub Actions
draft: false
repo: https://github.com/farshadpasbani/interlock
marketplace: https://github.com/marketplace/actions/agent-interlock
version: v0.1.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/farshadpasbani/interlock** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-interlock) to find the latest changes.

## What's Changed

**`agent-interlock init --with-constitution`** — scaffold the full agent constitution (the loop) alongside the tier-gate.

```bash
npx agent-interlock init --with-constitution
```

Lays down the charter, the master-loop controller, the loop-policy, CODEOWNERS, a stack-aware CI gate, and the harness adapters — single-owner governance, in shadow mode. Deterministic and self-contained (no LLM, no network): auto-detects your repo + stack, fills the template, and keeps `interlock.yml`'s protected paths in sync with the loop-policy from one source. The loop, installable — not just admirable.

Read the why: https://farshadpasbani.github.io/interlock/loop/
