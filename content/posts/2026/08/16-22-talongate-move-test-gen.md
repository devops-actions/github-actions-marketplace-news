---
title: move-test-gen coverage check
date: 2026-08-16 22:01:51 +00:00
tags:
  - talongate
  - GitHub Actions
draft: false
repo: https://github.com/talongate/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.5.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action generates edge-case test suites for Sui Move functions by covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine problems, and economic considerations. It automates the creation of `[test]` and `[expected_failure]` functions to verify function correctness and handle potential errors during execution.
---


Version updated for **https://github.com/talongate/move-test-gen** to version **v1.5.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

This GitHub Action generates edge-case test suites for Sui Move functions by covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine problems, and economic considerations. It automates the creation of `[test]` and `[expected_failure]` functions to verify function correctness and handle potential errors during execution.

## What's Changed

Security patch. Fixes [GHSA-w7pc-q6qh-49qw](https://github.com/mehvetero/move-test-gen/security/advisories/GHSA-w7pc-q6qh-49qw), which was declared fixed in v1.5.0 but was not.

- Assert regex now tolerates parenthesised abort codes and trailing commas
- An assert the regex cannot parse is recorded, printed, and **fails** the run instead of vanishing from both sides of the ratio
- Zero denominator reports `n/a` instead of `100% (0/0)`
- A sources path with no `.move` files is a hard failure

PR #51 by @HetCreep. Issue #50.

**Users on v1.5.0**: this is the patch that makes GHSA-w7pc actually fixed. Please update.
