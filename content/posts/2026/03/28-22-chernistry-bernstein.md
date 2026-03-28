---
title: Bernstein — Multi-Agent Orchestration
date: 2026-03-28 22:14:14 +00:00
tags:
  - chernistry
  - GitHub Actions
draft: false
repo: https://github.com/chernistry/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/chernistry/bernstein** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a GitHub Action that automates software development by orchestrating multiple AI coding agents to collaboratively complete tasks, verify outputs, and commit results. It eliminates the need for manual intervention by breaking down goals into tasks, running agents in parallel, and ensuring quality through deterministic verification. This solution streamlines coding workflows, enabling faster development, improved test coverage, and seamless integration across AI providers without vendor lock-in.

## Release notes

## What's new in v0.2.0

### CLI UX overhaul (#355, #358)
* **Shared Rich components** — new `ui.py` module with `StatusPanel`, `CostBurnPanel`, `TaskProgressBar`, `AgentStatusTable` and non-TTY graceful degradation
* **Live dashboard modules** — `run.py`, `status.py`, `live.py` with auto-refreshing Rich Live views, sparklines, and plain-text fallbacks
* **Structured errors everywhere** — all error sites now use the `BernsteinError(what, why, fix)` pattern with actionable fix suggestions
* **Cost estimation before spending** — shows estimated cost range before spawning agents on seed-based and backlog runs
* **Shell completions** — `bernstein completions bash/zsh/fish`

### Modular architecture (#330a-c)
* **Decomposed cli/main.py** (5,314→7 modules) — `helpers.py`, `run_cmd.py`, `status_cmd.py`, `stop_cmd.py`, `agents_cmd.py`, `evolve_cmd.py`
* **Decomposed orchestrator.py** (3,485→4 modules) — `agent_lifecycle.py`, `task_lifecycle.py`, `tick_pipeline.py`
* **Decomposed server.py** into FastAPI routers — `routes/tasks.py` etc.

### Hot-reload for self-development (#331)
* Orchestrator detects when agents modify its own source code and restarts in-place
* Session state is saved before restart for seamless recovery

### Other improvements
* Updated model routing with March 2026 benchmark data
* Rich colored help with grouped commands
* Agent auto-discovery — detect installed CLIs, login state, model capabilities
* Redesigned TUI — slim htop-style with interactive controls
* Soft stop, hard stop, Ctrl+C recovery
* Per-run cost budgets with `--budget`

### CI & Infra
* Default branch renamed `master` → `main`
* CI workflows now trigger on `main`
* All 104 tests passing, 0 pyright errors, 0 ruff errors

### GitHub Action

```yaml
- uses: chernistry/bernstein@v2
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

**Full changelog:** https://github.com/chernistry/bernstein/compare/v0.1.0...v0.2.0
