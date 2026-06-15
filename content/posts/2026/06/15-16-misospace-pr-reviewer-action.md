---
title: Miso PR Review
date: 2026-06-15 16:02:53 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.3.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.3.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

## v1.3.0 — Native tool-calling review harness

The reviewing model can now gather its own evidence with read-only tools instead of relying on a JSON-in-prose planner. This is the completion of the native tool-calling umbrella (#197 §1) plus the first-class harness capabilities around it. All changes are **additive and backward-compatible** — `tool_mode: native_loop` is opt-in, and existing `plan_execute_loop` / `off` consumers are unaffected.

### Native tool-calling loop (`tool_mode: native_loop`)
- The model holds the conversation and chains tool calls natively (OpenAI `tool_calls` / Anthropic `tool_use`); a chain like "read the deployed config → extract the platform version → fetch its compatibility matrix" is expressed turn-by-turn rather than guessed up front (#259, #262).
- **In-conversation verdict** — the loop's final turn produces the review verdict itself, preserving the multi-hop reasoning (#262).
- **Streaming** turns with a non-streamed per-turn fallback, so long thinking-model turns don't 524 behind a short-idle proxy (#259).
- **Auto-degrades to `plan_execute_loop`** when a model never calls tools — safe to enable on uncertain models.

### Harness capabilities
- **Prompt caching** — one stable system prompt across the loop and verdict turn; Anthropic `cache_control` breakpoints (#264, #268).
- **Risk/route-adaptive budgets** — shallow loop on the fast route, full depth on risk-flagged / smart-routed PRs (#267).
- **Tool-surface expansion** — `read_file` line ranges, `git_log`, `git_blame` (#266).
- **Parallel tool execution** within a round; **per-run token/cost + cache-hit telemetry** (#268).
- **Result summarization between rounds** — fold older tool results into a digest when context grows (opt-in `tool_loop_summarize`) (#271).
- **Cross-run evidence memory** — carry a digest of gathered evidence across incremental reviews of the same PR, reused instead of re-gathered (`tool_evidence_memory`, on by default) (#272).
- **Read-only MCP tools** — allowlisted, fork-gated `tool_mcp_servers` advertised into the loop (#245, #269).

### Review quality
- **Host-platform compatibility-matrix steering** in the default prompt: a bump that runs on/against a host platform (a kubelet on a node OS / installer image, a chart against an operator/CRD) is verified against that platform's published support matrix, with a strict read-changed-config → search → fetch → cite procedure and tool-budget discipline — instead of a "patch bump, low risk" rubber stamp. Fully repo-agnostic (#276).

### Fixes
- **Recover a "stuck" PR:** a forced re-review (`ai-review` label / dispatch) on a dirty baseline now runs at full scope, so a PR wedged in *Request changes* after its findings are fixed clears with a single re-label (#274).
- Native-loop token usage is recorded even when the loop degrades (#270).
- Default `ai_max_tokens` 4096 → 8192 for reasoning models (#260).

### Security & CI hardening
- Exfiltration red-team suite + `read_file` containment hardening for the native loop (#206, #261); tool results fenced as untrusted data.
- CI now catches duplicate YAML keys (the v1.2.10 manifest trap), pins Python to 3.14 (#256), and runs `actionlint` (#273).

