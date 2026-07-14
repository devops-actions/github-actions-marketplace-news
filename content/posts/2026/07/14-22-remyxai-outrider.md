---
title: Remyx Outrider
date: 2026-07-14 22:42:28 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.24
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the validation and comparison of new methods against an organization's codebase by integrating them into real call sites, providing a self-review process and handling issues when preflight, validators, or self-review routes the paper to discussion. It supports various model backends like Anthropic Opus and z.ai GLM-5.2 for different scenarios, including exploration and branch-mode exploration. The action is designed to streamline the workflow by running coding agents in ephemeral runners and handling multiple candidates per week efficiently.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.24**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

This GitHub Action automates the validation and comparison of new methods against an organization's codebase by integrating them into real call sites, providing a self-review process and handling issues when preflight, validators, or self-review routes the paper to discussion. It supports various model backends like Anthropic Opus and z.ai GLM-5.2 for different scenarios, including exploration and branch-mode exploration. The action is designed to streamline the workflow by running coding agents in ephemeral runners and handling multiple candidates per week efficiently.

## What's Changed

## Changes

**Path guardrails: permissive-by-default.** Every landed diff already runs through human review + coordination-issue-first policy + `check_integration` + `stub_density` + `diff_risk_score` — path-pattern allowlisting duplicated those checks and generated false negatives across every fork we touched (task YAML in lm-evaluation-harness, adapter JSON in peft's method_comparison, `.gitignore` in training-pipeline branches, `uv.lock` during dep-add).

- `DEFAULT_ALLOWLIST_GLOBS` = `["**/*"]` — everything matches.
- `ALWAYS_BLOCKED` reduced to `.github/workflows/**` only. This is the one class where agent edits could silently expand a run's own future agency (permissions, interest-id, concurrency, secrets). Every other former block is now surfaced to human review in the standard PR diff.
- `guardrails-allowlist` input: **deprecated no-op**. Reads through for backwards compat, logs a deprecation warning when non-empty. Removal planned in v2.
- `guardrails-blocklist` input: **new**, empty default. Extends `ALWAYS_BLOCKED` for teams that want defense-in-depth (`secrets/**`, `*.lock`, `Dockerfile*`, etc.). Matches take precedence over the permissive allowlist.

**Higher `claude-timeout` default.** Raised from 900s → 1500s. GLM sessions with staged-synthesis routinely reach 15-20 min; users triggering runs without prior tuning were hitting the old 15-min ceiling. Opus refinement sits comfortably under 25 min at the new default.

## Migration

- Existing customer workflows keep working — `guardrails-allowlist` inputs are ignored with a warning.
- Teams that want the old strict behavior set `guardrails-blocklist` to whatever files their policy protects. E.g. to restore the pre-v1.7.24 defaults: `guardrails-blocklist: 'Dockerfile*,*Dockerfile.*,*.dockerfile,*.sh,*requirements*.txt,setup.py,setup.cfg,pyproject.toml,MANIFEST.in,*.lock'`.

## Tests

1033 tests pass, 1 skipped. `test_path_matching.py` rewritten around permissive-allowlist + workflow-only-blocklist semantics; `test_integration_gates.py` updated.
