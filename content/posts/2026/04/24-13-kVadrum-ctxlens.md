---
title: ctxlens Context Check
date: 2026-04-24 13:57:58 +00:00
tags:
  - kVadrum
  - GitHub Actions
draft: false
repo: https://github.com/kVadrum/ctxlens
marketplace: https://github.com/marketplace/actions/ctxlens-context-check
version: v1.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/kVadrum/ctxlens** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ctxlens-context-check) to find the latest changes.

## Action Summary

**ctxlens** is a command-line tool that analyzes token usage in codebases to help developers manage AI model context limits. It automates tasks like calculating token budgets, identifying high-token files, simulating optimizations, and monitoring token usage in real-time. Fully offline and privacy-focused, it provides insights across multiple AI models, enabling better decision-making for fitting codebases within context windows.

## What's Changed

## Minor

- **Cost estimation** — `--cost` flag on `scan`/`budget` estimates per-request pricing from the model registry
- **Config-level exclude** — `.ctxlensrc`/`package.json` can now set default exclude patterns
- **Include/exclude on all commands** — consistent `--include`/`--exclude` flags across `scan`, `budget`, `diff`, `optimize`, `watch`
- Clarified tokenizer accuracy in docs — Claude counts are approximations (tiktoken-based)
- Added CI workflow, repo metadata, README badges
- Added Dependabot config (monthly, targeting `dev`)
- Dependency bumps: vitest 4.1.3, esbuild 0.28.0, actions/setup-node 6, actions/checkout 6

## Install

```bash
npx ctxlens scan
```
