---
title: Bernstein — Multi-Agent Orchestration
date: 2026-07-04 14:25:51 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.14.1
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.14.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## What's Changed

# v2.14.1

Released 2026-07-04.

Security and hygiene patch.

## Security
- Log injection: user-controlled values (task ids, roles, session ids, reasons, branches, and git output) are sanitized before they reach a log entry across the task-server routes, task store, spawner, orchestrator, and retrospective paths, so a crafted value can no longer forge log lines. Task-failure/reopen/cancel/block reasons are additionally CR/LF-stripped and length-capped at the request boundary.
- Sensitive-data logging: the openai_agents adapter and runner no longer log request headers, body, or the resolved API key value; only the env var name is recorded.

## Fixes
- The qwen adapter passes `--approval-mode yolo`, the current documented qwen-code auto-approve flag, clearing the adapter contract drift. (#2197)

## Internal
- Restored the integration-test harness (server auth disabled in the fixture, all role templates created, merge-preflight guards satisfied) so the end-to-end orchestration tests pass again. (#2205)
- Resolved refurb idiom findings across the routes, cost, agents, and orchestration modules.

