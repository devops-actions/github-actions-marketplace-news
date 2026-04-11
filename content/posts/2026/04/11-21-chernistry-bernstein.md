---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-11 21:46:35 +00:00
tags:
  - chernistry
  - GitHub Actions
draft: false
repo: https://github.com/chernistry/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.6.6
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/chernistry/bernstein** to version **v1.6.6**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a GitHub Action that automates software development by orchestrating AI coding agents to collaboratively break down goals into tasks, generate code, verify outputs, and create clean git histories. It eliminates the need for learning new frameworks or dealing with vendor lock-in, allowing developers to use interchangeable agents and models from various providers. Key capabilities include parallel task execution, deterministic scheduling, and seamless integration of local and cloud-based AI models for efficient code generation and testing.

## What's Changed

## v1.6.6

### Multi-adapter orchestration

Bernstein now runs with **any combination of CLI agents** — no Claude Code dependency required. Configure per-role adapters in `bernstein.yaml`:

```yaml
role_model_policy:
  backend:
    cli: qwen
    model: qwen3.6-plus
  security:
    cli: gemini
    model: gemini-3.1-pro-preview
```

The internal scheduler LLM also accepts any adapter (`internal_llm_provider: gemini`).

### 20 critical orchestration bug fixes

Deep audit found and fixed 20 severe bugs across the tick pipeline:

- **Merge serialization** — concurrent merges no longer corrupt the git index
- **Completion ordering** — worktree cleanup now happens AFTER PR creation (40+ tasks had work silently lost)
- **Quality gate timeouts** — timed-out required gates now block the merge instead of silently passing
- **Auto-format race** — runs sequentially before parallel gates, not concurrently
- **Agent lifecycle** — zombie agents tracked immediately after spawn, claimed tasks released on failure
- **Push retry queue** — failed pushes are retried on subsequent ticks instead of being silently lost

### Proactive agent resilience

- **Scope-aware budget** — `$2/$5/$15` per task scope instead of hardcoded `$5`, doubles on retry
- **Scope-aware max_turns** — large tasks get 2x more turns than small tasks
- **Git health pre-check** — stale `index.lock` files removed before worktree creation
- **Completion instructions in system prompt** — survive context truncation

### Adapter improvements

- Qwen adapter maps all model aliases to real API IDs (`coder-model` → `qwen3.6-plus`)
- Gemini adapter uses OAuth without requiring API keys
- Router bypassed when explicit `cli` + `model` configured per role

### Other

- 30-point UI/UX program started (10/30 complete — TUI shell, layout, search, timeline)
- CONTRIBUTORS.md updated with 12 community contributors
- Release notes cleaned up for all prior versions
