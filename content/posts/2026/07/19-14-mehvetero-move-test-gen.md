---
title: move-test-gen coverage check
date: 2026-07-19 14:47:22 +00:00
tags:
  - mehvetero
  - GitHub Actions
draft: false
repo: https://github.com/mehvetero/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The move-test-gen GitHub Action generates edge-case test suites for Sui Move functions, covering various scenarios such as boundary values, arithmetic edges, access control, state machine, and economic issues. It uses the skills CLI to install and integrates into Claude Code environments, allowing users to generate tests by inputting function sources or audit findings. The coverage checker verifies that all asserts have corresponding expected failures and catches injected bugs using mutation testing.
---


Version updated for **https://github.com/mehvetero/move-test-gen** to version **v1.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

The move-test-gen GitHub Action generates edge-case test suites for Sui Move functions, covering various scenarios such as boundary values, arithmetic edges, access control, state machine, and economic issues. It uses the skills CLI to install and integrates into Claude Code environments, allowing users to generate tests by inputting function sources or audit findings. The coverage checker verifies that all asserts have corresponding expected failures and catches injected bugs using mutation testing.

## What's Changed

## What's new in v1.1.2

Campaign 4 validated Layer 1 on real protocol code. The gate got four reliability fixes — gate-selftest now 10 cases.

### Campaign 4 — Layer 1 field-proven

- **14/14** asserts covered on Interest Protocol's `fixed_point64` (4 rounds, 477 lines)
- **15/15** on Cetus IntegerMate's `i128` (5 rounds, 233 lines)
- Never missed an abort path across 9 rounds — two different teams, two different module styles

This retires the "fixture-only" qualifier. The skill covers real protocol abort paths.

### Gate reliability

| Feature | What it prevents |
|---------|-----------------|
| **Baseline 0-tests warning** | Empty check silently reading as a pass |
| **Testability pre-flight** | Wasting 5 rounds on modules with no test constructor (the farm incident) |
| **Target-scoped Layer 1** | Dependency-inflated denominators (10/95 → 11/11) |
| **Scope filter pure function** | Untestable core logic (now pinned by selftest) |

### Infrastructure

- gate-selftest: **10 cases**, green on every push (CI-attested)
- Campaign records: [eval/RESULTS.md](https://github.com/mehvetero/move-test-gen/blob/v1.1.2/eval/RESULTS.md)
- 12 scenarios, 43 rounds, all RETIRED across 4 campaigns

---

The lab's methodology is borrowed from [TheColliery](https://github.com/TheColliery). Full lineage in the record. Thanks @HetCreep.
