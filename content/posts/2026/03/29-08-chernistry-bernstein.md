---
title: Bernstein — Multi-Agent Orchestration
date: 2026-03-29 08:31:13 +00:00
tags:
  - chernistry
  - GitHub Actions
draft: false
repo: https://github.com/chernistry/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/chernistry/bernstein** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a multi-agent orchestration tool that automates software development tasks by breaking a goal into subtasks, assigning them to parallel AI coding agents, verifying their output, and committing results to a clean Git history. It eliminates the need for manual intervention, supports various AI models for flexibility, and ensures deterministic scheduling with verified results, making it ideal for overnight runs or CI pipelines. This tool solves the problem of managing complex coding workflows with multiple AI agents and enhances productivity through asynchronous, parallel execution.

## What's Changed

## What's new in v0.3.0

111 commits since v0.2.0. Major features, modular architecture, and green CI.

### Container-based agent isolation
* Docker/Podman sandbox for running agents in isolated containers (`--isolation container`)
* `ContainerManager` with security profiles, network modes, volume mounts
* Configurable via `bernstein.yaml` or `ContainerConfig` dataclass

### Context compression engine (#417)
* 40% token reduction via dependency graph analysis + BM25 relevance scoring
* `TaskContextBuilder` feeds only relevant files to each agent
* Semantic code graph tracks imports, call sites, and file coupling

### VS Code / Cursor extension (preview)
* Task tree view, agent status panel, cost sparkline
* Right-click context menus for tasks and agents
* Source in `packages/vscode/` — not yet published to Marketplace

### Web dashboard redesign (#356)
* Real-time SSE updates (no polling)
* Dark theme, responsive layout
* Task progress, agent status, cost burn — all live

### Smart `doctor --fix`
* `bernstein doctor` now auto-fixes common issues (missing API keys, stale PIDs)
* Detects gcloud auth, ChatGPT Plus sessions, Gemini OAuth
* `--fix` flag applies fixes non-interactively

### CLI improvements
* Auto-launch TUI dashboard after `bernstein` starts
* Quality panel hidden by default (toggle with `k`)
* `--help-all` works as both option and subcommand
* `bernstein recap`, `bernstein retro` with `--json` output
* Structured `BernsteinError(what, why, fix)` on all error paths
* Cost estimation shown before spawning agents

### Modular architecture
* `server.py` decomposed into `routes/` package (tasks, status, costs, agents, webhooks, dashboard, quality, auth, graduation, plans, slack)
* `orchestrator.py` decomposed into `agent_lifecycle.py`, `task_lifecycle.py`, `tick_pipeline.py`, `evolve_mode.py`
* `cli/main.py` decomposed into `run_cmd.py`, `stop_cmd.py`, `status_cmd.py`, `agents_cmd.py`, `advanced_cmd.py`, `task_cmd.py`, `workspace_cmd.py`
* `git_ops.py` split into `git_basic.py` + `git_pr.py`
* `bootstrap.py` split into `preflight.py` + `server_launch.py`

### New modules
* `trigger_manager.py` — event-driven agent triggers (file watch, GitHub webhooks, cron)
* `cascade_router.py` — cost-aware model cascading with bandit learning
* `circuit_breaker.py` — kill switch with scope/budget/guardrail enforcement
* `rule_enforcer.py` — YAML-based file protection rules
* `prompt_caching.py` — cache manifest for Anthropic prompt caching
* `batch_router.py` — route non-urgent tasks to batch API
* `complexity_advisor.py` — single vs multi-agent recommendation
* `graduation.py` — agent capability graduation stages
* `lessons.py` — cross-run lesson learning with deduplication
* `knowledge_base.py` — file index, architecture docs, task context

### Model updates (March 2026)
* OpenAI: GPT-5.4, GPT-5.4-mini, o3, o4-mini
* Google: Gemini 3 Pro, Gemini 3 Flash (2.5 series deprecated June 2026)
* Qwen: Qwen3-Coder pricing added
* Amp adapter: updated model map

### Adapters
* Amp (Sourcegraph) adapter added
* Roo Code adapter added
* Auto-detection: `cli: auto` in bernstein.yaml picks best authenticated agent
* `env_isolation.py` — filtered environment for agent subprocesses

### Infrastructure
* Default branch renamed `master` → `main` with auto-delete guardrail
* GitHub Actions bumped to latest (checkout v6, setup-uv v7, upload-artifact v7)
* CI self-heal creates GitHub Issues on failure
* 141 test files, all passing
* Pyright strict mode with 0 errors

### GitHub Action

```yaml
- uses: chernistry/bernstein@v3
  with:
    task: fix-ci
    budget: "5.00"
  env:
    ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
```

### Install

```
pipx install bernstein
```

**Full changelog:** https://github.com/chernistry/bernstein/compare/v0.2.0...v0.3.0
