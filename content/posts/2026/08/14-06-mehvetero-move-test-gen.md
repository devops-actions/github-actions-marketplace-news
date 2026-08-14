---
title: move-test-gen coverage check
date: 2026-08-14 06:23:15 +00:00
tags:
  - mehvetero
  - GitHub Actions
draft: false
repo: https://github.com/mehvetero/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.5.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `move-test-gen` GitHub Action generates edge-case test suites for Sui Move functions by analyzing a module and creating `[test]` and `[expected_failure]` functions covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine problems, economic considerations, and fee evasion. It outputs the generated tests in a `.move` file that can be used with `sui move test`. The action is useful for automating the generation of comprehensive test cases to ensure robustness and reliability of Move contracts.
---


Version updated for **https://github.com/mehvetero/move-test-gen** to version **v1.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

The `move-test-gen` GitHub Action generates edge-case test suites for Sui Move functions by analyzing a module and creating `[test]` and `[expected_failure]` functions covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine problems, economic considerations, and fee evasion. It outputs the generated tests in a `.move` file that can be used with `sui move test`. The action is useful for automating the generation of comprehensive test cases to ensure robustness and reliability of Move contracts.

## What's Changed

## v1.5.0 — Community Security Audit

Major release driven by a full security audit from [@HetCreep](https://github.com/HetCreep). 23 pull requests merged, 3 security advisories patched, and the project's first external contributor.

### Security fixes
- **GHSA-6r4g** (Moderate): block comment containing `#[test_only]` above module skipped all 6 lint rules
- **GHSA-w7pc** (Moderate): zero parsed asserts printed "100% coverage" and exited 0
- **GHSA-5499** (Moderate): same-line `#[test_only] use ...` leaked exemption onto the next function

### New features
- `--fail-on <severity>` — configurable gate threshold (default: high)
- `--json` machine-readable output with versioned schema
- `// move-test-gen-disable-next-line MOV-003` suppression pragmas + `--disable` flag
- Exit codes: 0 clean / 1 findings / 2 usage error / 3 tool error
- Action outputs + job summary for downstream CI jobs
- `public(package)` visibility (Move 2024) support

### Reliability
- Mutation timeout is its own outcome, not a false kill
- Missing test count is an error, not a silent pass
- `--scope` with no match is an error, not a green gate
- Temp-dir cleanup registered before recursive copy
- 13 gate-selftest cases, all green

### Documentation
- SECURITY.md, CHANGELOG.md, RELEASE.md added
- README overhauled: exit codes, untrusted-code warning, hardened consumer examples

### Contributors
Security audit and 23 pull requests by [@HetCreep](https://github.com/HetCreep) — zero false positives across the entire audit.

