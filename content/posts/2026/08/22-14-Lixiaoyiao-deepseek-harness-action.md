---
title: DeepSeek Harness for GitHub
date: 2026-08-22 14:08:13 +00:00
tags:
  - Lixiaoyiao
  - GitHub Actions
draft: false
repo: https://github.com/Lixiaoyiao/deepseek-harness-action
marketplace: https://github.com/marketplace/actions/deepseek-harness-for-github
version: v0.5.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The DeepSeek Harness GitHub Action automates the process of reviewing code changes from pull requests, issues, and failed CI jobs using the DeepSeek code review tool. It helps improve code quality by diagnosing issues in automated tests and providing inline reviews, facilitating faster feedback cycles and improving collaboration among developers. The action can be integrated into GitHub workflows to ensure consistent and effective code reviews across projects.
---


Version updated for **https://github.com/Lixiaoyiao/deepseek-harness-action** to version **v0.5.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deepseek-harness-for-github) to find the latest changes.

## Action Summary

The DeepSeek Harness GitHub Action automates the process of reviewing code changes from pull requests, issues, and failed CI jobs using the DeepSeek code review tool. It helps improve code quality by diagnosing issues in automated tests and providing inline reviews, facilitating faster feedback cycles and improving collaboration among developers. The action can be integrated into GitHub workflows to ensure consistent and effective code reviews across projects.

## What's Changed

## Highlights

- Adapted the action to the complete, ordinarily installable DeepSeek Harness `0.1.1-rc.2` package family. All directly used DSH packages and the lockfile remain exact-pinned; no peer-dependency bypass or mixed release family is used.
- Split runtime installation, process execution, network policy, Docker policy, receipts, deadlines, orchestration context/write flow, and Validation Integrity analysis into focused modules while preserving the public action contract.
- Added bounded runtime-install, extension-install, Agent-turn, validation, lifecycle-hook, cleanup, and cancellation-finalization phases under the overall run deadline.
- Added best-effort SIGINT/SIGTERM terminal sticky-comment finalization. A runner hard kill, host loss, or network outage can still prevent the final update; the Actions conclusion remains authoritative.
- Hardened validation repair semantics so blocked, exhausted, or malformed repair output cannot erase an unresolved Controller validation or Validation Integrity failure.
- Tightened run-scoped HOME, npm cache, runtime, extension, receipt, session, temporary-directory, and Docker cleanup boundaries.

## Security boundaries

- The Agent receives neither the real `GITHUB_TOKEN` nor the real DeepSeek key.
- GitHub mutation remains Controller-only; read-only and trusted-write paths keep separate capability boundaries.
- Workspaces remain `.git`-less inside the Agent container, Docker images and action dependencies remain immutable-pinned, and extension lock/inventory plus actor/fork/origin/SHA/protected-path checks remain enforced.
- ToolRuntime guards individual tool calls; it does **not** sandbox approved Plugin, Bundle, or stdio MCP startup/background side effects.

## Verification

- Final candidate CI: [run 32557272928](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32557272928)
- Core real E2E: [run 32557354220](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32557354220)
- Merged-main CI: [run 32557657946](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32557657946)

The real E2E suite covers strict/Profile/official Bundle, standard Bash, mediated Web Search, native subagent, MCP allow/deny and receipts, Validation Integrity and ordinary validation failures without GitHub mutation, no-change write, trusted-write PR creation/verification/cleanup, credential-free checkout, and graceful cancellation finalization.

See [CHANGELOG.md](https://github.com/Lixiaoyiao/deepseek-harness-action/blob/v0.5.1/CHANGELOG.md) for the complete change list.

