---
title: Kimi Code Action
date: 2026-07-17 14:40:57 +00:00
tags:
  - xuwenhao
  - GitHub Actions
draft: false
repo: https://github.com/xuwenhao/kimi-code-action
marketplace: https://github.com/marketplace/actions/kimi-code-action
version: v0.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates code review and implementation tasks in pull requests and issues using the kimi-code CLI. It detects which mode to run based on events like comments or mentions of `@kimi`. Features include automatic mode detection, interactive code assistance, code review, code implementation, progress tracking, commit signing, session resume, and security hardening. The action runs entirely on GitHub runners with minimal external calls.
---


Version updated for **https://github.com/xuwenhao/kimi-code-action** to version **v0.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kimi-code-action) to find the latest changes.

## Action Summary

This GitHub Action automates code review and implementation tasks in pull requests and issues using the kimi-code CLI. It detects which mode to run based on events like comments or mentions of `@kimi`. Features include automatic mode detection, interactive code assistance, code review, code implementation, progress tracking, commit signing, session resume, and security hardening. The action runs entirely on GitHub runners with minimal external calls.

## What's Changed

First public release of **kimi-code-action** — agentic GitHub automation driven by the
[Kimi Code CLI](https://github.com/MoonshotAI/kimi-code), forked from
[claude-code-action](https://github.com/anthropics/claude-code-action) (MIT, see NOTICE).

## What it does

- **@kimi mentions** — mention `@kimi` in issues, PR comments, or reviews; the agent
  answers questions, implements changes, and pushes branches
- **PR auto-review** — tracked review comment with live checkboxes, plus inline comments
  on exact diff lines (`track_progress: true`)
- **Custom automation** — any prompt on `workflow_dispatch` / `schedule` / `workflow_run`
  (issue triage, CI failure analysis, …)
- **Commit signing** (GitHub API or SSH key), sticky comments, `session_id` resume
- **Security hardening inherited from upstream** — write-permission checks, content
  sanitization, TOCTOU filtering, config restore from the base branch, restricted
  git-push, default deny rules for `.github/workflows` and force-pushes

## Usage

```yaml
- uses: xuwenhao/kimi-code-action@v0
  with:
    kimi_api_key: ${{ secrets.KIMI_API_KEY }}
```

## Requirements

- `KIMI_API_KEY` secret — Kimi Code subscribers create keys in the Kimi Code Console
  (Console › API Keys); Open Platform keys work via `kimi_platform: open-cn|open-intl`
- Default model `k3` requires a Moderato plan or above; set `kimi_model: kimi-for-coding`
  on lower plans

## Differences from upstream

- Runs `kimi -p` with stream-json parsing; CLI config injected via a generated
  `KIMI_CODE_HOME` (permission rules + `mcp.json`)
- Not supported: OIDC App-token exchange, WIF/Bedrock/Vertex/Foundry,
  `allowed_non_write_users`, structured output (`--json-schema`), plugins
- `kimi_args` maps Claude-style flags to kimi equivalents (`--allowedTools`,
  `--max-turns`, `--mcp-config`, `--append-system-prompt`)

Verified end-to-end on real runners: @kimi replies, tracked PR reviews, inline comments.
(base) ➜  ~ cat /tmp/kimi-code-action-v0.0.1-release-notes.md
First public release of **kimi-code-action** — agentic GitHub automation driven by the
[Kimi Code CLI](https://github.com/MoonshotAI/kimi-code), forked from
[claude-code-action](https://github.com/anthropics/claude-code-action) (MIT, see NOTICE).

## What it does

- **@kimi mentions** — mention `@kimi` in issues, PR comments, or reviews; the agent
  answers questions, implements changes, and pushes branches
- **PR auto-review** — tracked review comment with live checkboxes, plus inline comments
  on exact diff lines (`track_progress: true`)
- **Custom automation** — any prompt on `workflow_dispatch` / `schedule` / `workflow_run`
  (issue triage, CI failure analysis, …)
- **Commit signing** (GitHub API or SSH key), sticky comments, `session_id` resume
- **Security hardening inherited from upstream** — write-permission checks, content
  sanitization, TOCTOU filtering, config restore from the base branch, restricted
  git-push, default deny rules for `.github/workflows` and force-pushes

## Usage

```yaml
- uses: xuwenhao/kimi-code-action@v0
  with:
    kimi_api_key: ${{ secrets.KIMI_API_KEY }}
```

## Requirements

- `KIMI_API_KEY` secret — Kimi Code subscribers create keys in the Kimi Code Console
  (Console › API Keys); Open Platform keys work via `kimi_platform: open-cn|open-intl`
- Default model `k3` requires a Moderato plan or above; set `kimi_model: kimi-for-coding`
  on lower plans

## Differences from upstream

- Runs `kimi -p` with stream-json parsing; CLI config injected via a generated
  `KIMI_CODE_HOME` (permission rules + `mcp.json`)
- Not supported: OIDC App-token exchange, WIF/Bedrock/Vertex/Foundry,
  `allowed_non_write_users`, structured output (`--json-schema`), plugins
- `kimi_args` maps Claude-style flags to kimi equivalents (`--allowedTools`,
  `--max-turns`, `--mcp-config`, `--append-system-prompt`)

Verified end-to-end on real runners: @kimi replies, tracked PR reviews, inline comments.
