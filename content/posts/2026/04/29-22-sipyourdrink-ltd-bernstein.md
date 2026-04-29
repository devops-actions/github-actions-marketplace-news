---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-29 22:02:59 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.9.2
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v1.9.2**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a GitHub Action that orchestrates multiple AI coding agents to automate software development tasks. It decomposes a high-level goal into subtasks, assigns them to AI agents, runs tests, and merges successful code, enabling users to achieve working code quickly and efficiently. Its key capabilities include deterministic task orchestration, parallel processing, reproducible runs, and flexibility to integrate with various AI models and providers without vendor lock-in.

## What's Changed

## v1.9.2 — per-step CLI override, six new adapters, leaf-node orchestrator delegation

The cooperating-CLI-adapter count goes 31 → 37, plans can mix CLIs between stages, and there's a separate new "Bernstein orchestrates the orchestrators" delegation track.

### Per-step `cli:` in plan files (#965, closes #964)

Plan steps now take a `cli:` field directly. No more inventing role-shaped wrappers in `bernstein.yaml` to switch CLIs between stages:

```yaml
stages:
  - name: red-green-refactor
    steps:
      - { title: Red,      role: backend,  cli: opencode }
      - { title: Green,    role: backend,  cli: opencode }
      - { title: Refactor, role: backend,  cli: opencode }
  - name: review
    steps:
      - { title: Code review, role: reviewer, cli: claude }
```

Precedence (highest wins): per-step `cli:` → `role_model_policy.<role>.provider` → top-level `cli:` → default adapter. Requested by @smp4 in [discussion #962](https://github.com/sipyourdrink-ltd/bernstein/discussions/962).

### Six new cooperating CLI agent adapters (#968)

`openhands`, `open_interpreter`, `gptme`, `plandex`, `aichat`, `letta_code`. Per-adapter install commands, env vars, and CLI invocation flags are documented in [`docs/adapters/ADAPTER_GUIDE.md`](https://github.com/sipyourdrink-ltd/bernstein/blob/main/docs/adapters/ADAPTER_GUIDE.md). Each adapter mirrors `copilot.py` (~120 LOC) with three tests apiece.

### "Bernstein orchestrates the orchestrators" — leaf-node delegation adapters (#966)

Two adapters that wrap **other CLI orchestrators** as if each were a single Bernstein agent:

| Adapter | Wrapped tool |
| --- | --- |
| `composio` | Composio Agent Orchestrator (`@aoagents/ao`) |
| `ralphex` | umputun/ralphex |

Honest framing: leaf-node delegation, not deep meta-orchestration — Bernstein only sees the wrapped tool's exit code, not its internal sub-agents. Useful when you have an existing workflow built on those tools and want to drop it into one step of a larger Bernstein plan. The README has a new **Orchestrator delegation (leaf-node)** subsection separating these from the cooperating-CLI count; full write-up on the [blog](https://bernstein.run/blog/orchestrate-the-orchestrators).

### Three new comparison pages (#967)

- [vs. Claude Squad](https://github.com/sipyourdrink-ltd/bernstein/blob/main/docs/compare/bernstein-vs-claude-squad.md) — Go TUI tmux session manager.
- [vs. claude-flow / Ruflo](https://github.com/sipyourdrink-ltd/bernstein/blob/main/docs/compare/bernstein-vs-claude-flow.md) — Claude Code plugin pack with swarm hooks.
- [vs. AgentsMesh](https://github.com/sipyourdrink-ltd/bernstein/blob/main/docs/compare/bernstein-vs-agentsmesh.md) — self-hosted agent workforce platform.

`bernstein-vs-crystal.md` also refreshed to describe the actual stravu/crystal product (Electron desktop, deprecated Feb 2026).

### Quieter releases (#969)

`npm publish` failures no longer mark the release deployment as failed. PyPI / GitHub Release / GHCR ship independently while the npm wrapper waits on `NPM_TOKEN` permissions post-org-transfer.

### Bug fixes

- **catalog:** split exact-role threshold from fuzzy threshold (#961). Both were sharing a strict 3-point cutoff that rejected legitimate role matches once an agent had ≥1 cap-word overlap. Exact-role now requires only 1; fuzzy stays at 3.
- **tests:** unbroke two main-CI flakes (#970) — `test_quality_endpoint_with_iso8601_timestamps` had hardcoded timestamps that aged past the 30-day window; `test_heartbeat_idle_threshold_lower_in_evolve_mode` needed the same liveness-extension margin its sibling test got in b5da11a6.

### Install / upgrade

```bash
pipx install --upgrade bernstein
# or
pip install --upgrade bernstein
```

**Full changelog:** https://github.com/sipyourdrink-ltd/bernstein/compare/v1.9.1...v1.9.2

