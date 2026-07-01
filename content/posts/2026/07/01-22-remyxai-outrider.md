---
title: Remyx Outrider
date: 2026-07-01 22:37:13 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Behavior changes that replace categorical shape-label guards with measurement-based decisions, and give the selection stage access to workflow-attached tooling (ENVIRONMENTS.md).

## Behavior changes

- **Substitution guard removed.** `shape in ("replacement", "simplification") → auto-Issue` short-circuit no longer fires before implementation. Replacement/simplification runs proceed; the path allowlist + `check_integration()` catch broken diffs on measured evidence.
- **ENVIRONMENTS.md at selection.** Loader runs early and threads the body into `select_recommendation`'s prompt, so the selection agent has workflow-attached tooling (AST-search skills, MCP servers) while verifying candidates. Empty ENVIRONMENTS.md = unchanged behavior.
- **Self-review orphan surfaced, not vetoed.** When `is_orphan=true`, the PR ships with a prominent warning in the body instead of being downgraded to Issue. Upstream measurement-based gates already catch scaffold-shaped diffs.
- **Confabulation check.** Extracts path-like tokens from `selection_reasoning` and verifies each against the workdir. Step-summary shows `N of M verified`; a `0 of N verified` line surfaces confidently-wrong reasoning.

## Compatibility

Backwards-compatible for runs without an ENVIRONMENTS.md file (loader no-ops). No config changes needed.

## Motivating cases

- opik SAFARI (this release, validated live) — full-chain reach-PR
- agents Entity Binding — full-chain reach-PR
- Prior misfires (unsloth-retry confabulation, opik LettuceDetect library-shape downgrade, unsloth+TokenPilot substitution-guard downgrade) — all catchable / preventable with this release
