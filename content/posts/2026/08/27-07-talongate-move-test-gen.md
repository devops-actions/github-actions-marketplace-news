---
title: move-test-gen coverage check
date: 2026-08-27 07:44:38 +00:00
tags:
  - talongate
  - GitHub Actions
draft: false
repo: https://github.com/talongate/move-test-gen
marketplace: https://github.com/marketplace/actions/move-test-gen-coverage-check
version: v1.6.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, move-test-gen, automates the creation of edge-case test suites for Move functions in Sui. It generates `[test]` and `[expected_failure]` functions covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine problems, and economic considerations. The action uses predefined rules to identify potential security patterns and generate tests that can help catch errors before they occur. Users can install the action via npm or manually copy its scripts and references into their Claude Code environment.
---


Version updated for **https://github.com/talongate/move-test-gen** to version **v1.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/move-test-gen-coverage-check) to find the latest changes.

## Action Summary

This GitHub Action, move-test-gen, automates the creation of edge-case test suites for Move functions in Sui. It generates `[test]` and `[expected_failure]` functions covering various scenarios such as boundary values, arithmetic edges, access control issues, state machine problems, and economic considerations. The action uses predefined rules to identify potential security patterns and generate tests that can help catch errors before they occur. Users can install the action via npm or manually copy its scripts and references into their Claude Code environment.

## What's Changed

Three new lint rules and a MOV-002 extension — bringing the total to 9 rule files (10 checks).

Three of the new patterns came from @jangid's [sui-move-auditor](https://github.com/AlphaFiTech/sui-ai-commons). Different tools, same patterns worth catching. Credited in the changelog because that is where the signal came from.

### New rules

- **MOV-008** [MEDIUM] — exact-equality assert on payment amounts (DoS via dust)
- **MOV-011** [HIGH] — `public(package) entry` is externally callable via PTB
- **MOV-012** [HIGH] — sender identity as a spoofable `address` parameter

### Extended

- **MOV-002** now catches `<<` / `>>` bit-shift silent wrapping (Cetus $223M class)

### Fixed

- **MOV-001** word-boundary fix — `PositionManager` no longer falsely exempt

gate-selftest: 14/14 | CI green

Full changelog in CHANGELOG.md.
