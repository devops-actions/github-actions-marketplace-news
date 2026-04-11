---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-11 13:40:43 +00:00
tags:
  - chernistry
  - GitHub Actions
draft: false
repo: https://github.com/chernistry/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.6.5
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/chernistry/bernstein** to version **v1.6.5**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a GitHub Action that automates the orchestration of AI coding agents to achieve coding goals efficiently. It breaks down a given task into subtasks, assigns them to parallel AI agents, verifies outputs, merges results, and delivers complete, tested, and clean code. By supporting interchangeable AI models and tools without vendor lock-in, it simplifies and accelerates complex coding workflows.

## What's Changed

## v1.6.5

### Highlights

**Any CLI adapter as internal LLM provider** — `internal_llm_provider` in `bernstein.yaml` now accepts any registered adapter name (not just `"claude"` or `"openrouter"`). Set `internal_llm_provider: "gemini"` or `internal_llm_provider: "qwen"` and the manager/planner/decomposer will use that adapter's CLI for LLM calls. No code changes needed — just config.

**TUI notification center + session recorder** — two new Textual panels: a notification history that surfaces orchestrator events (task completions, incidents, gate blocks) in real time, and a session recorder that captures agent activity timelines for post-run review.

**Task detail tabs + dashboard reconnect** — the TUI task-detail overlay now has tabbed sections (output, files, metrics) instead of a flat scroll, and the dashboard auto-reconnects on server restart without manual refresh.

### CI hardening

- `timeout-minutes` added to **24 workflow jobs** that previously had none — prevents runaway jobs from burning Actions minutes.
- Top-level `permissions: {}` (least-privilege) applied to `publish.yml`; every job now declares only what it needs.
- `concurrency` groups added to long-running workflows (`bernstein-scheduled-maintenance`, `pentest`, `dependency-security`).
- Bot-loop guards on `bernstein-ci-fix.yml` and `protocol-compatibility-table.yml` use non-forgeable `head_repository.full_name` check instead of `github.actor` (SonarCloud S8232).

### Adapter + orchestrator

- `budget_multiplier` and `system_addendum` parameters added to all 21 adapter `spawn()` overrides — the base class gained these in v1.6.4 but the subclasses weren't updated, causing pyright strict failures that blocked every push.
- Provider latency degradation alert fixed: the EMA baseline was absorbing spikes before the alert could fire. Alert now checks *before* updating baseline, and baseline update is suppressed while an alert is active.
- Backlog sync (`sync_backlog_to_server`) now queries all terminal statuses (`done`, `failed`, `cancelled`) when moving completed files from `open/` to `closed/` — previously queried `status=closed` which doesn't exist, so no files ever moved.
- GitHub issue sync skips issues that already have a human assignee — prevents agents from racing contributors.

### Fixed

- `test_conflict_resolution`: 5 stale mock sequences from the old rebase-first merge flow updated to match the current 4-call `merge --no-commit` flow.
- `test_data_gen`: scope assertion raised from `<= 3` to `<= 6` (generator adds test files alongside source files).
- `test_health_and_slo`: removed dead `TestSLOTracker` class that imported the deleted `slo_tracker` module.
- `test_activity_summary_poller`: replaced fixed 0.12s sleeps with a bounded `_wait_for_summary` poll loop (was flaky on slow macOS CI).
- CodeQL #97 (reflective XSS in sandbox dashboard): `html.escape` applied at the call site so CodeQL's taint tracker recognises it.
- CodeQL #96 (stack trace exposure): `exc.msg` instead of `str(exc)` in formula validator.
- CodeQL #98 (log injection): CR/LF stripped from `session_id` before logging.

### Repo hygiene

- Deleted stale `github-action/` directory (duplicated by `docs/github-action.md`).
- Deleted dead `_typos.toml` (duplicate of `typos.toml`).
- Fixed broken `.gitignore` merge artifact (`*token*docs/openapi.json` was a glued-together pair).
- Created `CHANGELOG.md` (Keep a Changelog 1.1 format).
- `pyproject.toml`: expanded to 9 keywords, 18 classifiers (Python 3.13, Windows/macOS/Linux, Typed), full `[project.urls]`, `[tool.ruff.format]` profile, `[tool.pytest.ini_options]` with `--strict-markers`, `[tool.coverage]` with `branch=true`.
- SonarCloud config: added `sonar.cpd.exclusions` for tests, Formula, packages, evolution (legacy v1/v2 parallel impl pending consolidation); added issue-ignore rules for S125 on tests and S1172 on CLI commands.

**Full changelog:** https://github.com/chernistry/bernstein/compare/v1.6.4...v1.6.5
