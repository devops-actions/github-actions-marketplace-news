---
title: Agent-friendly score diff
date: 2026-04-30 14:13:22 +00:00
tags:
  - hsnice16
  - GitHub Actions
draft: false
repo: https://github.com/hsnice16/agent-friendly-action
marketplace: https://github.com/marketplace/actions/agent-friendly-score-diff
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/hsnice16/agent-friendly-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-friendly-score-diff) to find the latest changes.

## Action Summary

This GitHub Action evaluates pull request changes by calculating the delta in the "Agent Friendly Code" score between the base and head commits, providing a breakdown of the score impact directly in a PR comment. It automates the process of assessing code updates for adherence to predefined scoring criteria and eliminates reliance on external servers by bundling the scoring logic. This helps developers track and manage code quality changes within their CI pipeline.

## What's Changed

## [0.1.0] - 2026-04-30

### Added

- Vendored scorer from upstream `agent-friendly-code` — 16 signals (`agents_md`, `aider_conf`, `ci`, `contributing`, `cursor_rules`, `deps_manifest`, `dev_env`, `gemini_md`, `license`, `linter`, `openhands_setup`, `pre_commit`, `readme`, `size`, `tests`, `type_config`) and weight profiles for 8 models (Claude Code, Cursor, Devin, OpenHands, Gemini CLI, GPT-5 Codex, Aider, Pi). Lives under `src/scoring/`.
- Action entrypoint (`src/index.ts`) — opt-in via `agents-badge-token`, scores PR head + base via a temporary `git worktree`, posts (or edits) a single PR comment with overall delta, per-model table, and changed signals. Comment is tagged with `<!-- agent-friendly-action -->` so subsequent runs update the same comment instead of stacking duplicates.
- CI workflows — `ci.yml` runs typecheck / tests / `ncc build` on every PR and push to `main`, and fails if `dist/` has drifted from `src/`. `smoke.yml` self-dogfoods the action against its own PR (skipped on fork PRs where the GitHub token is read-only).
- Biome + Lefthook tooling — `biome.json` for formatting + linting (vendored `src/scoring/` and `src/constants/` excluded), `lefthook.yml` runs biome / `tsc --noEmit` / tests / a 300-line file-length cap on every commit. New `npm run prepare-hooks` / `format` / `lint` scripts.
- LICENSE file (MIT) at the repo root — required for Marketplace publish.
- `tasks/0.1.0/` version plans documenting the v0.1.0 cut: vendor scorer, action runtime, PR comment, CI + smoke, Marketplace publish.

