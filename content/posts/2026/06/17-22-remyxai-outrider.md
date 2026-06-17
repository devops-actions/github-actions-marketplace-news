---
title: Remyx Outrider
date: 2026-06-17 22:49:26 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.11
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.11**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Restores agent's gh CLI authentication

The v1.6.7 env-strip stripped `GITHUB_TOKEN` from the Claude CLI subprocess as defense-in-depth against the v1.6.4 leak vector. An unintended side effect: the selection-pass agent's `gh` CLI invocations (`gh code-search`, `gh issue list`, `gh api repos/.../contents/...`) ran unauthenticated, degrading verification quality.

This release adds **`GITHUB_TOKEN`** (the workflow's built-in repo-scoped runner token, NOT the bot's installation token) back to `_CLAUDE_ENV_WHITELIST`. The bot's installation token (via `INPUT_GITHUB_TOKEN`) stays stripped — only the lower-privilege workflow token reaches the agent.

The leak vector v1.6.7 closed is now mitigated by the four egress-defense layers shipped today: v1.6.4 outbound scrubber, v1.6.8 diagnostic logging, dedicated `aborted_secret_in_payload` status with telemetry, and narrow prompt-level redaction rules.

Long-term Path A (engine-side scoped read-only token mint) follows when there's bandwidth — this is the fast unblock pending that work.

PR #59.
