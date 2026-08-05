---
title: move-test-gen coverage check
date: 2026-08-05 15:07:13 +00:00
tags:
  - mehvetero
  - GitHub Actions
draft: false
repo: https://github.com/mehvetero/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, `move-test-gen`, is an Agent Skill designed to automatically generate edge-case test suites for Sui Move functions. It covers various scenarios such as boundary values, arithmetic edges, access control issues, state machine failures, and economic conditions, ensuring comprehensive testing of Move modules. The action automates the process of generating test files that can be executed using the `sui move test` command, helping developers catch potential bugs and edge cases in their Move code.
---


Version updated for **https://github.com/mehvetero/move-test-gen** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

This GitHub Action, `move-test-gen`, is an Agent Skill designed to automatically generate edge-case test suites for Sui Move functions. It covers various scenarios such as boundary values, arithmetic edges, access control issues, state machine failures, and economic conditions, ensuring comprehensive testing of Move modules. The action automates the process of generating test files that can be executed using the `sui move test` command, helping developers catch potential bugs and edge cases in their Move code.

## What's Changed

## What's new

### Two new lint rules

| Rule | Severity | Pattern |
|------|----------|--------|
| **MOV-005** | HIGH | Authorization check result discarded — `vector::contains()` or `has()` called, bool returned and thrown away. The check runs but never enforces. [Typus Finance $3.44M exploit](https://github.com/Typus-Lab/typus/blob/a918e98c4f7d3a28d0d809d3263d8c21e90d3c01/typus_oracle/sources/oracle.move#L146) (Oct 2025) was exactly this pattern. |
| **MOV-006** | LOW | Same abort code in `assert!` across 2+ public functions — callers cannot distinguish which function aborted. |

**MOV-005 FP handling:**
- Void functions that abort internally (like `admin::verify()`) are not flagged — calling them without binding the result is correct.
- `let _ = vector::contains(...)` (explicit discard) is not flagged — an intentional discard is a design decision, not a forgotten check.

**MOV-006 FP handling:**
- Lowercase variable names (`now`, `user`, `clock`) appearing as assert second arguments are filtered — these are parameters, not error constants.
- Shared error constants across a module is a common Move convention. LOW severity reflects this; the finding is a diagnostic signal ("consider unique codes for debuggability"), not a vulnerability.

### Gate improvements (from v1.3.0)

- SIGTERM handler — CI timeout no longer leaves temp directories behind
- `walkDir` shared module — eliminates diverged copies across lint and coverage
- Testability pre-check: `blocker` vs `cost` severity split (community feedback from forums.sui.io)
- Round count corrected 47→46 (doc-grounding finding from CoalLedger field run)

### Validated against

| Protocol | Files | Findings | Notes |
|----------|-------|----------|-------|
| SuiTears | 68 | 77 | 26 access-control, 15 downcast, 14 div-zero, 13 shared-abort, 9 unchecked-mul |
| Bucket Protocol | 58 | 68 | 37 access-control, 10 shared-abort, 10 unchecked-mul, 6 div-zero, 5 downcast |
| Typus Finance | 128 | 353 | 148 access-control, 113 downcast, 48 unchecked-mul, 30 shared-abort, 14 div-zero |
| Kriya DEX | 3 | 1 | `update_pool` no access control (MOV-001) — matches [our manual finding](https://github.com/efficacy-finance/kriya-dex-interface/issues/2) |
| Scallop | 172 | 1 | After 82→1 FP reduction (9 commits in v1.2.0) |

MOV-001 (access control) dominates because it flags any `public fun` with `&mut` and no capability parameter. Library functions like `bitmap::set()` and `vector::push_back()` are intentionally permissionless — these are known FPs documented in the README. The FP rate on protocol-level code (non-library) is ~10%.

### Eval lab

5 campaigns, 13 scenarios, 46 rounds — all RETIRED (a scenario is retired when 2 consecutive dry rounds + 1 varied-angle sweep produce no new findings, following the [retirement-by-saturation protocol](https://github.com/mehvetero/move-test-gen/blob/main/eval/RESULTS.md)). Generator models: GPT-5.5, Claude 4.8, DeepSeek-v4-pro.

### Install

```bash
npx skills add mehvetero/move-test-gen
```

As a GitHub Action (tag reference):

```yaml
- uses: mehvetero/move-test-gen@v1.4.0
  with:
    sources: sources
    tests: tests
    lint: 'true'
```

For supply-chain-hardened pinning, use the commit SHA:

```yaml
- uses: mehvetero/move-test-gen@b76c684
  with:
    sources: sources
    tests: tests
    lint: 'true'
```

Full changelog: v1.3.0...v1.4.0
