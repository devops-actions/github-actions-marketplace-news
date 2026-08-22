---
title: Chock Governance Check
date: 2026-08-22 22:04:11 +00:00
tags:
  - open-coder-ai
  - GitHub Actions
draft: false
repo: https://github.com/open-coder-ai/chock
marketplace: https://github.com/marketplace/actions/chock-governance-check
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Chock is a governance-as-code tool that automates AI coding agent policies. It compiles rules into deterministic guardrails, including git hooks, CI gates, and native pre-execution hooks in Claude Code and Cursor, ensuring that all agents adhere to consistent rules within a team's or project's codebase.
---


Version updated for **https://github.com/open-coder-ai/chock** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chock-governance-check) to find the latest changes.

## Action Summary

Chock is a governance-as-code tool that automates AI coding agent policies. It compiles rules into deterministic guardrails, including git hooks, CI gates, and native pre-execution hooks in Claude Code and Cursor, ensuring that all agents adhere to consistent rules within a team's or project's codebase.

## What's Changed

## 0.2.0 — First release with an external contribution

MINOR: new features and adapters; compiled output for existing policies is unchanged
(golden-suite verified), but new surfaces exist.

- **Antigravity CLI adapter** — contributed by @alexsmolya, the project's first external
  contribution: `.agents/rules/chock.md` workspace rule, ambient/git-hook/CI surfaces
  (deliberately not pre-tool-use: no installer exists, so no claim is made).
- **Claude-format plugin emitter**: `chock plugin build --format claude|all --out-dir`
  renders each policy into Claude Code's plugin layout (read natively by Claude Code,
  Copilot CLI, VS Code and Grok Build), with the fail posture stated verbatim in every
  emitted description and per-format subtrees so no package has to lie for another
  client. Stale-output reconciliation, duplicate-id refusal.
- **`chock marketplace build`**: derives the marketplace index, a content-addressed
  `chock-market.lock` (sha256 per published plugin directory), and a generated
  `PLUGINS.md` catalog page from the built packages — never hand-listed, drift-checked.
- **Hook interpreter honesty**: the emitted hook command stays a single `python3`
  invocation -- a review of the proposed `python3 || python` fallback proved a chain
  can erase a deny verdict (a deny exit followed by a missing-interpreter exit reads
  as an error, and the first leg consumes stdin), so it was rejected with
  measurements. Instead every emitted description now states the per-client fail
  posture: fail-open clients allow silently without `python3` and a usable bash;
  fail-closed clients (VS Code) refuse matched commands; Windows needs the
  Microsoft Store `python3` alias disabled or Python installed.
- **Supply chain**: the Marketplace action no longer interpolates workflow inputs
  into shell (two HIGH template-injection alerts, fixed by env indirection); GitHub
  Releases are created by the runner's own `gh` CLI instead of a third-party action;
  the semgrep scanner installs hash-pinned via compiled requirements; Dependabot
  gets a 7-day cooldown.
- **CI pressure testing**: zizmor, actionlint, ShellCheck, and Semgrep (with custom
  rules encoding this project's own incidents) run as required checks; all three
  public repos are at zero open code-scanning alerts.
- **Fix**: `chock remove` refuses when a policy's manifest cannot be read — an
  unreadable manifest previously read as "not mandatory" and allowed deletion.
- **Fix**: `frontier_ingest` no longer prints and exits at import time; frontier
  validation shares one `STANDARDS_DIR` with ingestion.
- **Tests**: 755 (from 736); statement coverage 83%; new suites for the plugin
  emitter, marketplace, `chock remove`, and the frontier validation modes.



