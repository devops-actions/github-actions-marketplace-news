---
title: Remyx Outrider
date: 2026-06-25 15:14:41 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.14
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.14**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Refinement-pass chain

Adds a three-stage refinement chain that runs after the existing recommend-mode draft is filed, lifting an Outrider-drafted PR from "thin first draft" to "close to merge-ready" without per-PR manual work.

### New modes

- **`mode: fidelity`** — diff the draft against the paper's reference impl, produce a Coverage matrix (covered / deferred / deviation) on the action run-summary panel. Flags needs-judgment items for the maintainer.
- **`mode: convention`** — extract contributor conventions from the target repo's (or parent's, for forks) recent merged PRs, identify convention-shape misalignments, run a bounded agentic patch session, force-push with bot attribution. Ruff auto-fixes lint-trivial issues on patched .py files. PR body rewritten to match the upstream's template — no chain-owned sections leak in.
- **`mode: test`** — lint + targeted pytest with a focused-imports install strategy. AST-walks touched test files, installs only externals they import, pre-installs CPU torch when torch-build-dependent packages appear — works on ML repos without flash-attn / deepspeed build-isolation issues. On pass, drops the PR's draft state.

### Chain wiring

Each phase is its own workflow on the target repo:

- `outrider-fidelity.yml` triggers on `pull_request: labeled outrider:draft`
- `outrider-convention.yml` triggers on `workflow_run: Outrider Fidelity Audit (completed)`
- `outrider-test.yml` triggers on `workflow_run: Outrider Convention Pass (completed)`

Phases B and C resolve the PR by label (`outrider:fidelity-done`, `outrider:convention-done`), not by `workflow_run.head_sha` — sidesteps the chained-workflow_run propagation issue where head_sha defaults to the default branch.

Label state machine:

- `outrider:draft` → triggers fidelity
- `outrider:fidelity-done` (+ optional `outrider:needs-judgment`) → triggers convention
- `outrider:convention-done` → triggers test
- `outrider:test-failed` → terminal failure signal
- (no positive terminal label; `draft=false` is the ready signal)

### Drafting prompt update

The initial agentic-implementation prompt now instructs the agent to run the target repo's own lint command (read from ORIENTATION.md's `## Tooling config` section) before declaring done. Defers to the repo's config rather than enumerating specific rule codes — works across ruff / flake8 / pylint / black / Makefile-lint setups.

### Output surfaces

All chain output lands on the action's `$GITHUB_STEP_SUMMARY` panel rather than the PR body — the body is governed entirely by the convention-pass's upstream-template alignment.

**Full PR**: #65
