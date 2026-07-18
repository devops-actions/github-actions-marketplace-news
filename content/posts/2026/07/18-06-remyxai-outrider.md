---
title: Remyx Outrider
date: 2026-07-18 06:51:24 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.34
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of validating and comparing new machine learning methods against existing codebases. It schedules runs weekly or allows for ad-hoc dispatches based on user inputs, providing self-review notes, issues, and a selection narrative in the step summary. The action uses pluggable model backends like Anthropic Opus and z.ai GLM-5.2 to evaluate candidates, with options for branch-only mode and cost considerations.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.34**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

This GitHub Action automates the process of validating and comparing new machine learning methods against existing codebases. It schedules runs weekly or allows for ad-hoc dispatches based on user inputs, providing self-review notes, issues, and a selection narrative in the step summary. The action uses pluggable model backends like Anthropic Opus and z.ai GLM-5.2 to evaluate candidates, with options for branch-only mode and cost considerations.

## What's Changed

## New

**AI-agent scaffolding** ([PR #99](https://github.com/remyxai/outrider/pull/99)) — the meta-layer around the codebase so future AI-agent sessions load context on entry instead of re-deriving it. Score under [paladini/harness-score](https://github.com/paladini/harness-score): **L0 → L2 · 70%**.

Landed:

- `AGENTS.md` at repo root — architecture, build & test, backend routing, chain phases, release conventions, guardrails.
- Scoped rules per code area — `.github/instructions/*.instructions.md` for `src/run.py`, `tests/`, `action.yml`.
- Two Claude Code skills — `outrider-experimentation` (user-facing field guide: dispatch patterns, log parsing, coordination checks, fidelity audit reading) and `remyxai-cli` (CLI context).
- `/release` slash command codifying the tag → push → `gh release create` → v1-move sequence.
- Hooks — `PreToolUse` Bash gate (denies force-push main, `--no-verify`, destructive `rm -rf`, `git reset --hard main`) and `PostToolUse` reminders after `src/run.py` / `action.yml` / `docs/` edits.

## Fixed

**docs term drift** — `docs/customization.md` referenced `pin-method` as if it were a real action input; the actual input is `search-method`. Fixed so the docs match `action.yml` and the `Unexpected input(s) 'pin-method'` warning stops appearing on smoke workflows generated from the doc's example shape.

## Compatibility

Backward-compatible. No runtime code changes; scaffolding is entirely additive. `remyxai/outrider@v1` now points to v1.7.34.
