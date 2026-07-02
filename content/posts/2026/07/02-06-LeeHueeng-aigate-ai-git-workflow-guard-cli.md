---
title: AIGate AI Git Workflow Guard CLI
date: 2026-07-02 06:46:59 +00:00
tags:
  - LeeHueeng
  - GitHub Actions
draft: false
repo: https://github.com/LeeHueeng/aigate-ai-git-workflow-guard-cli
marketplace: https://github.com/marketplace/actions/aigate-ai-git-workflow-guard-cli
version: v0.1.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/LeeHueeng/aigate-ai-git-workflow-guard-cli** to version **v0.1.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aigate-ai-git-workflow-guard-cli) to find the latest changes.

## What's Changed

## Highlights

- Added `aigate start` guided setup routes for quickstart, AI setup, pre-push hooks, release readiness, and full project guard setup.
- Added `aigate test` for Git readiness plus detected project test command execution.
- Added `aigate aitest` for AI remediation prompt generation and optional Codex, Claude, Gemini, or custom agent execution with `--apply`.
- Added repository Claude Code instructions through `CLAUDE.md` and `.aigate/integrations/claude.md`.
- Updated multilingual README, usage, operations, roadmap, AI integration, GitHub Action, examples, and generated HTML overview docs.
- Extended the reusable GitHub Action to support `test` and safe `aitest` prompt generation.

## Validation

- `npm run ci`
- Release workflow dry run
- Tagged release workflow publish
- `node src/cli.mjs release-check --npm --language ko`

## Package

- npm: `aigate-cli@0.1.5`

