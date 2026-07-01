---
title: Remyx Outrider
date: 2026-07-01 06:54:29 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.31
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.31**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

The self-review call now honors the `claude-timeout` workflow input — completing the per-stage timeout consolidation begun in v1.6.28 (preflight), v1.6.29 (audit), v1.6.30 (selection). After this release, `claude-timeout` is the single budget knob across every Claude-Code stage in the chain.

**What changed**

- `self_review_diff` production call site in `process_target` now passes `target.claude_timeout_s` (was hardcoded 180s default).
- Direct callers (tests, ad-hoc invocations) that don't pass an explicit `timeout_s` keep the 180s default for backwards compatibility.

**Why it matters**

Self-review detects orphan code (new code not reachable from any production path) and downgrades a drafted PR back to Issue. On heavy diffs in large monorepos or on slower non-Anthropic backends, the previous 180s ceiling caused the pass to time out — and the chain would ship the PR without the safety-net check.

PR: [#79](https://github.com/remyxai/outrider/pull/79)
