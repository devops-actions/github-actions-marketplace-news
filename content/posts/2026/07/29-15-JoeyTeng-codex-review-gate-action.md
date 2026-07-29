---
title: Codex Review Gate
date: 2026-07-29 15:11:41 +00:00
tags:
  - JoeyTeng
  - GitHub Actions
draft: false
repo: https://github.com/JoeyTeng/codex-review-gate-action
marketplace: https://github.com/marketplace/actions/codex-review-gate
version: v1.3.5
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of reviewing and approving pull requests based on codex-generated comments. It ensures that a PR passes only if it contains a complete evidence snapshot that meets certain conditions: the latest official trusted provider artifact is closed and clean, and all Codex findings are resolved. The action handles unthreaded top-level finding comments and ensures that reviews are validated against a closed grammar.
---


Version updated for **https://github.com/JoeyTeng/codex-review-gate-action** to version **v1.3.5**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codex-review-gate) to find the latest changes.

## Action Summary

This GitHub Action automates the process of reviewing and approving pull requests based on codex-generated comments. It ensures that a PR passes only if it contains a complete evidence snapshot that meets certain conditions: the latest official trusted provider artifact is closed and clean, and all Codex findings are resolved. The action handles unthreaded top-level finding comments and ensures that reviews are validated against a closed grammar.

## What's Changed

## Highlights

- Treat a complete, official current-head Codex clean artifact as authoritative review evidence without requiring controlled-marker lineage.
- Keep malformed, incomplete, wrong-head, contradictory, or unresolved-finding evidence fail closed.
- Keep controlled markers, deadlines, and sticky state as orchestration, audit, and idempotency data only.
- Preserve marker-conflict safety without allowing conflict recovery to overwrite live provider evidence.
- Tighten persisted-state validation, UTC timestamp parsing, lifecycle enums, and final-reload race handling.

## Validation

- Node.js 20 and 24 CI
- Full state-machine and integration test suites
- Exact-secret admission: clean
- Fresh full-range Codex review: `No findings.`
- Source `packages/action` tree matches action commit `2a7f9d8cd98f90cb56dc1540bf54d9dc7484afc6`
- Signed `v1.3.5`, `v1.3`, and `v1` tags all peel to the same action commit

Source PR: https://github.com/JoeyTeng/codex-review-gate/pull/26

