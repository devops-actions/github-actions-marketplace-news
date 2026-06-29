---
title: Validate Syscribe Model
date: 2026-06-29 22:33:20 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.29.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.29.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## What's Changed

Unified coverage classifier — `coverage` and `coverage_matrix` can no longer contradict.

The two surfaces previously applied different rules to draft TestCases, so a requirement could read `verified` in `coverage` yet `gap` in `coverage_matrix`. They now project from **one per-cell classifier** (`na` / `gap` / `planned` / `covered` / `passing` / `failing`); `coverage` is the AND row-collapse of the same grid `coverage_matrix` displays.

- A requirement linked **only by draft tests** is now `planned` (verification intent), not `verified` — in both surfaces. `coverage` gains a `planned` bucket; `coverage_matrix` gains `planned`/`failing` cell states.
- Requirement-first: `REQ-TRS-MCP-044` (+ amended `-019`/`-036`), `TC-TRS-MCP-045`.

### ⚠️ Visible change
The `verified` count **decreases** for models with requirements verified only by draft tests (they become `planned`). This is a correctness fix, not a regression — re-baseline any coverage gate against the new numbers.

🤖 Generated with [Claude Code](https://claude.com/claude-code)
