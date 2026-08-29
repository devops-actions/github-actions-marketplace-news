---
title: Chock Governance Check
date: 2026-08-29 22:00:22 +00:00
tags:
  - open-coder-ai
  - GitHub Actions
draft: false
repo: https://github.com/open-coder-ai/chock
marketplace: https://github.com/marketplace/actions/chock-governance-check
version: v0.6.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Chock is a governance-as-code tool that automates AI coding agents by compiling rules into deterministic guardrails. It ensures that all AI coding agents within a team or open-source project follow specific policies, such as disallowing force pushes to the main branch, and provides coverage reports on rule adherence across different agents.
---


Version updated for **https://github.com/open-coder-ai/chock** to version **v0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chock-governance-check) to find the latest changes.

## Action Summary

Chock is a governance-as-code tool that automates AI coding agents by compiling rules into deterministic guardrails. It ensures that all AI coding agents within a team or open-source project follow specific policies, such as disallowing force pushes to the main branch, and provides coverage reports on rule adherence across different agents.

## What's Changed

## Agent-hooks `py` launcher fallback and INT-3 verb list

MINOR: the agent-hooks emitter output changes, so an adopter's next `chock sync` /
`chock plugin build` rewrites `.github/hooks/*.json`. No credited enforcement surface
changes — the guard runs the same, just with one more way to find an interpreter.

### Changed

- **Agent-hooks Bash resolver adds the `py` launcher fallback.** The Bash branch resolved
  `command -v python3 || command -v python`; the PowerShell branch already tried `py`. On a
  Windows checkout where only the `py` launcher is on PATH, the Bash hook exited
  "no python interpreter found" and **the guard failed open**. It now also tries `py`,
  matching the PowerShell branch, so the two agree about where enforcement holds. (#71)
- **INT-3 recognises `pin` as a verb.** Policy ids like `pin-github-actions` no longer draw
  a spurious "does not start with a verb" warning. (#71)
- **Docs**: dropped a stale hardcoded published-version snapshot from the compatibility
  page; the GitHub Action example now pins v0.6.0. (#72)

### Release verification

The full pre-tag routine ran at zero failures on the tagged lineage: 844 tests green,
83% statement coverage, docs-accuracy and emitter-golden checks pass, catalog truth-check
251/251 eval cases (block and allow), and a byte-identical rebuild of the published
distribution trees. Post-tag verification (PyPI publish attestation, cold install, and
distribution republish from this tag) runs next and the distribution repos will republish
against v0.6.0.
