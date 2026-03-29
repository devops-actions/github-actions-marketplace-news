---
title: EvalView - AI Agent Testing
date: 2026-03-29 04:39:36 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.6.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is an open-source GitHub Action designed to detect and prevent silent regressions in AI agents, such as changes in behavior that occur without breaking health checks or code. It automates the process of regression testing by tracking drift in outputs, tool usage, model updates, and runtime fingerprints, distinguishing provider/model changes from actual system regressions. Additionally, EvalView offers capabilities like classification of changes, inspection of drift, and auto-healing of flaky failures to ensure AI agents continue behaving correctly.

## What's Changed

## What's new

- **Full MCP feature parity** — all CLI flags now exposed via MCP tools (heal, strict, statistical, budget, tags, variants, and more)
- **New MCP tools**: `compare_agents` (A/B test two endpoints) and `replay` (trajectory diff viewer)
- **33 MCP regression tests** — protocol, schema contracts, flag wiring, routing, timeouts

## Fixes

- Stable JSON response contract on `run_check` regardless of flags
- `--report` no longer opens browser from MCP server
- Replay timeout increased to 120s
- Subprocess calls use `stdin=DEVNULL` to prevent hangs

## Install / Upgrade

```bash
pip install --upgrade evalview
```

**Full changelog:** https://github.com/hidai25/eval-view/blob/main/CHANGELOG.md
