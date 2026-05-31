---
title: PayloadGuard
date: 2026-05-31 22:15:39 +00:00
tags:
  - PayloadGuard-PLG
  - GitHub Actions
draft: false
repo: https://github.com/PayloadGuard-PLG/payload-consequence-analyser
marketplace: https://github.com/marketplace/actions/payloadguard
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/PayloadGuard-PLG/payload-consequence-analyser** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/payloadguard) to find the latest changes.

## Action Summary

PayloadGuard is a GitHub Action designed to automatically analyze pull requests for potentially destructive, deceptive, or malicious code changes. By utilizing a multi-layered static analysis approach and deterministic scoring models, it evaluates the risk of proposed changes and emits clear verdicts (SAFE, REVIEW, CAUTION, or DESTRUCTIVE). This action helps prevent catastrophic merges by blocking high-risk pull requests, ensuring codebase integrity and enhancing security in software development workflows.

## What's Changed

## Changes from v1.2.0

### PLI L4b — evaluated and reverted
Implemented and regression-tested across 34 stable cases (2026-05-29).
Result: 2 true positives (A03 slow-deletion, A06 threshold-gaming), 3 false positives
(WS07 safe-clean-workflow, RT02 postinstall-curl, RTA03 prt-untrusted-checkout).
Root cause: PLI LLM interprets code diff summaries as blank AI responses,
generating critical findings on legitimate PRs. Reverted from scoring path.
PLI R&D files removed from repo root. MAX_SCORE reverted 36→31.

### Fixes
- RTA02: credential_harvest loop now applies _normalize_yaml_content() —
  detects multiline curl constructs with YAML continuation lines (DESTRUCTIVE confirmed)
- L2 content scanner excludes .github/workflows/ files; L2c is exclusive handler

### Refactoring
- Unused `import os` removed from analyze.py
- Dead `hasattr(self.config, 'actions')` guard removed
- `_iter_workflow_file_diffs()` helper extracted — eliminates duplicated workflow blob-reading boilerplate

### CI
- trigger-regression.yml changed to manual-only (workflow_dispatch)
- Harness 3× daily schedule removed

### Documentation
- SYSTEM_BLUEPRINT.md — authoritative repository structure, module map, full pipeline flow
- HARNESS_BLUEPRINT.md — complete harness-analyser integration reference
- Architecture & Blueprints rules added to CLAUDE.md
- WS03 regression root cause resolved (test expectation corrected, not a code bug)

### Verification
- 273 tests pass, 7 skipped
- 11 Dafny postconditions verified: POST-1–11a (L3), S1–S7 (L4), T1–T8 (L5a)
- pyproject.toml version aligned to 1.3.0; repo URLs updated to PayloadGuard-PLG
