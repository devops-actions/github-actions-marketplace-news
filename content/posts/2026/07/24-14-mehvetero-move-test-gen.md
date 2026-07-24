---
title: move-test-gen coverage check
date: 2026-07-24 14:03:36 +00:00
tags:
  - mehvetero
  - GitHub Actions
draft: false
repo: https://github.com/mehvetero/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The move-test-gen GitHub Action is an Agent Skill that automatically generates edge-case test suites for Sui Move functions. It focuses on covering various edge cases such as boundary values, arithmetic edges, access control issues, state machine problems, and economic concerns, providing a comprehensive set of tests to ensure robustness in Move smart contracts. The action can be used to generate tests based on user requests or automatically check the coverage of existing tests to identify potential gaps.
---


Version updated for **https://github.com/mehvetero/move-test-gen** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

The move-test-gen GitHub Action is an Agent Skill that automatically generates edge-case test suites for Sui Move functions. It focuses on covering various edge cases such as boundary values, arithmetic edges, access control issues, state machine problems, and economic concerns, providing a comprehensive set of tests to ensure robustness in Move smart contracts. The action can be used to generate tests based on user requests or automatically check the coverage of existing tests to identify potential gaps.

## What's Changed

## What's new in v1.3.0

MOV-002 and MOV-004 now use a lightweight Move parser instead of line-level regex. The parser tracks variable types through declarations, casts, and destructuring — so it knows that `numerator1` declared as `liquidity_u256 << RESOLUTION` is u256, not u64. This killed most of the false positives that required naming-convention heuristics in v1.2.0.

### MOV-004: unsafe downcast (new rule)

Flags `(expr as u64)` from u128/u256 without a preceding overflow assert. Move's `as` silently truncates — unlike arithmetic ops which abort. Found 3 true positives in Bucket Protocol (pending reward/debt calculations downcast mul_factor_u128 results without checking), which led to the fix PR below.

### Parser integration (MOV-002)

Turbos CLMM went from 14 findings to 3 after the parser was wired in. Variables cast to u256 on earlier lines are now tracked through the function body instead of relying on `_u256` suffix matching.

### Bucket Protocol fix PR

MOV-002 flagged `collateral_raw_value * pow(10, decimal_diff)` in Bucket's value conversion functions — `mul_factor` promotes to u128 internally, the scaling multiplication right after undoes it. Submitted a fix: https://github.com/Bucket-Protocol/v1-core/pull/12

### Validation

| Protocol | Files | Findings | Notes |
|----------|-------|----------|-------|
| Kriya DEX | 3 | 1 | MOV-001 update_pool (confirmed TP from our Issue #2) |
| Scallop | 172 | 2 | MOV-002 liquidation mul + MOV-004 loop counter |
| Bucket | 22 | 40 | 25 MOV-001 permissionless DeFi (known FP pattern), rest legitimate |
| Turbos | 24 | 21 | math library downcasts + tick arithmetic |

### Infrastructure

- `scripts/move-parser.mjs` — function-level parser: signatures, params with types, variable declarations, cast tracking, assert locations
- gate-selftest: 11/11 cases, MOV-004 pins added (unsafe flagged, assert skipped, library skipped, small field skipped, test skipped)
- Rules: 4 (MOV-001 through MOV-004)

Diff from v1.2.0: https://github.com/mehvetero/move-test-gen/compare/v1.2.0...v1.3.0
