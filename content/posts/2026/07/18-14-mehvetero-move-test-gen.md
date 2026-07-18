---
title: move-test-gen coverage check
date: 2026-07-18 14:29:03 +00:00
tags:
  - mehvetero
  - GitHub Actions
draft: false
repo: https://github.com/mehvetero/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Move Test Gen is a GitHub Action that generates comprehensive edge-case test suites for Sui Move functions, covering various scenarios such as boundary values, arithmetic edges, access control, state machine, and economic considerations. It automates the creation of `#[test]` and `#[expected_failure]` functions to ensure robust testing of Move contracts. The tool outputs a `.move` file targeting `sui move test`, making it easy to verify that tests are complete and compile correctly.
---


Version updated for **https://github.com/mehvetero/move-test-gen** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

Move Test Gen is a GitHub Action that generates comprehensive edge-case test suites for Sui Move functions, covering various scenarios such as boundary values, arithmetic edges, access control, state machine, and economic considerations. It automates the creation of `#[test]` and `#[expected_failure]` functions to ensure robust testing of Move contracts. The tool outputs a `.move` file targeting `sui move test`, making it easy to verify that tests are complete and compile correctly.

## What's Changed

## What's new

### GitHub Action (zero-install CI for Move repos)

Any Sui Move repo can now add coverage checking to their PR workflow in 6 lines:

```yaml
- uses: mehvetero/move-test-gen@v1.1.1
  with:
    sources: sources
    tests: tests
```

- **Layer 1 (PR gate):** assert pairing — no sui needed, runs in seconds
- **Layer 2 (nightly):** mutation testing — needs sui CLI, catches weak tests
- `--scope` option for target-only mutation (skip dependency libraries)

### Honesty channel (v1.1.0)

- Gate confesses "undecidable" instead of blaming the suite for equivalent mutants
- Mutual-redundancy probe: measured evidence, not pattern-matching
- `signed_having_learned` field in adjudication records

### Eval lab — 3 campaigns complete

- **Campaign 1:** 6 fixture scenarios, 53/53 mutants killed
- **Campaign 2:** gate honesty — planted equivalents confessed in all rounds
- **Campaign 3:** real protocol (Interest Protocol SuiTears) — fund 3/3, oracle 21/22

Full records: [eval/RESULTS.md](eval/RESULTS.md)

### Infrastructure

- CI: gate-selftest (7 cases) + action-selftest (dogfood) on every push
- MIT License with SuiTears attribution
- Pinned release tags (no live-branch references in docs)
- Marketplace: eye/purple

---

Methodology borrowed from [HetCreep / TheColliery](https://github.com/TheColliery). Full lineage in the record.Thanks @HetCreep.
