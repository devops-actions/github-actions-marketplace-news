---
title: AI Agent Discipline Linter
date: 2026-05-03 06:39:39 +00:00
tags:
  - naimkatiman
  - GitHub Actions
draft: false
repo: https://github.com/naimkatiman/continuous-improvement
marketplace: https://github.com/marketplace/actions/ai-agent-discipline-linter
version: v3.4.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/naimkatiman/continuous-improvement** to version **v3.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-agent-discipline-linter) to find the latest changes.

## Action Summary

This GitHub Action, "The 7 Laws of AI Agent Discipline," is designed to improve the reliability and effectiveness of AI agents, such as Claude Code, by enforcing disciplined workflows. It automates task management and decision-making processes using seven structured principles, which focus on research, planning, execution, verification, and iterative learning to prevent common issues like skipping steps, scope creep, and unverified outputs. The action also includes a learning mechanism to adapt based on user interactions and supports task automation through commands and programmatic tools.

## What's Changed

## Highlights

- **`/seven-laws`** slash command — brand-aligned alias to `/continuous-improvement`, surfaces the 7 Laws name directly in the command palette
- **Skill Law-tag lint** (`npm run verify:skill-law-tag`) — every non-core skill description must declare which of the 7 Laws it enforces; CI guards against silent regression
- **README Law Coverage matrix** — explicit map from each bundled skill / command / hook / instinct pack to its Law

## Changed

- Skill descriptions lead with the Law each enforces (Laws 1–7 + orchestrator)
- `superpowers` reframed as a Law activator, not a peer skill
- Renamed `proceed-with-claude-recommendation` → `proceed-with-the-recommendation` so the same skill can be installed into non-Claude agents (Codex, Gemini CLI, etc.); old-name installations need to re-run the install snippet under the new path

## ⚠️ Breaking

The marketplace dropped 8 third-party PM plugin entries (`pm-data-analytics`, `pm-execution`, `pm-go-to-market`, `pm-market-research`, `pm-marketing-growth`, `pm-product-discovery`, `pm-product-strategy`, `pm-toolkit`) to refocus on the 7 Laws.

After updating, anyone with those plugins installed from this marketplace **loses the update source** — the plugins keep working until uninstalled, but `/plugin marketplace update continuous-improvement` will no longer resolve them.

**Migration:** if you depend on any of the 8 dropped PM plugins, pin them via a separate marketplace before running `/plugin marketplace update continuous-improvement`. Existing installs continue to work; only the update path is removed.

## Install / update

Existing installs:
```
/plugin marketplace update continuous-improvement
/plugin update continuous-improvement
```

Fresh install:
```
/plugin marketplace add naimkatiman/continuous-improvement
/plugin install continuous-improvement@continuous-improvement
```

## Test plan attestation

- 364/364 tests passing on Node 18, 20, 22 (CI)
- All `verify:*` scripts green (skill-mirror, skill-tiers, skill-law-tag, docs-substrings)

Full changelog: [CHANGELOG.md](https://github.com/naimkatiman/continuous-improvement/blob/main/CHANGELOG.md#340--2026-05-03)

