---
title: move-test-gen coverage check
date: 2026-08-21 21:53:56 +00:00
tags:
  - talongate
  - GitHub Actions
draft: false
repo: https://github.com/talongate/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.5.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action generates edge-case test suites for Sui Move functions, covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine errors, and economic challenges. It outputs a `.move` file targeted at `sui move test`, making it easy to verify the correctness of Move modules with generated tests.
---


Version updated for **https://github.com/talongate/move-test-gen** to version **v1.5.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

This GitHub Action generates edge-case test suites for Sui Move functions, covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine errors, and economic challenges. It outputs a `.move` file targeted at `sui move test`, making it easy to verify the correctness of Move modules with generated tests.

## What's Changed

Community audit round 2 — 25 fixes from @HetCreep CoalBoard nasa-rigor review.

### Highlights

- 6 lint rule fixes across MOV-001, MOV-003, MOV-005, MOV-006
- Parser hardening — block-comment + trailing-comment edge cases
- Mutation engine — timeout scoping + timed-out mutant classification
- Coverage output — 0/0 = null (not 100%) in JSON + Action
- Lint infra — per-module test_only scope, CLI exit-code contract, crash guard
- Docs + examples — accuracy fixes, action pins updated post-org-transfer

gate-selftest: 13/13 green | CI: gate + action-selftest success

Security audit by @HetCreep. Full changelog in CHANGELOG.md.
