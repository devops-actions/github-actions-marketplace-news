---
title: Smart Test Trigger
date: 2026-06-24 06:57:32 +00:00
tags:
  - Zaywoo66
  - GitHub Actions
draft: false
repo: https://github.com/Zaywoo66/Smart-test-trigger
marketplace: https://github.com/marketplace/actions/smart-test-trigger
version: 1.1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Zaywoo66/Smart-test-trigger** to version **1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smart-test-trigger) to find the latest changes.

## What's Changed

  Smart Test Trigger v1.1.0 — Test Impact Visibility & CI Savings Reporting
This release is a fully backward-compatible minor update to the v1.0.0 static analysis engine. All existing outputs (test_files, full_run, trigger_reason) remain unchanged — v1.1.0 adds visibility into exactly how much time and CI compute Smart Test Trigger is saving you, surfaced directly inside your Pull Requests.
 What's New in v1.1.0

Sticky PR Report: Automatically posts (and updates on every push) a comment on the Pull Request showing total vs. selected test files, skip percentage, and estimated time saved — no need to dig through Action logs.
Test Selection Metrics: Three new outputs — total_test_count, selected_test_count, tests_skipped_pct — quantify exactly how much of the suite was skipped for this change.
Self-Accumulating CI Baseline: A new rolling-average baseline tracker (baseline.py) learns your repository's typical full-suite duration over time (capped at the last 20 full runs), with zero manual configuration required.
Time Saved Estimation: time_saved_estimate output translates the skip percentage into a concrete number of seconds saved — gracefully reports "not enough data yet" until the first full run has been recorded.
Independent Test Discovery: New discovery.py module performs a pure filesystem-based count of all test files in the repo, fully decoupled from the dependency-graph BFS — total test count stays accurate regardless of what was selected.

Built on the v1.0.0 Engine
No changes to the core analysis engine — static AST parsing, BFS dependency traversal, and the fail-closed fallback for critical infrastructure files all behave exactly as in v1.0.0.
 Documentation
The [README.md](https://github.com/Zaywoo66/Smart-test-trigger/blob/main/README.md) has been updated with a full workflow example (cache step, timed full run, baseline update, PR comment) and a refreshed outputs table. See [CHANGELOG.md](https://github.com/Zaywoo66/Smart-test-trigger/blob/main/CHANGELOG.md) for the complete list of changes.
Engineered with clean code principles, strict static typing (mypy), TDD-style atomic commits, and full test coverage across both the original engine and the new metrics modules.
