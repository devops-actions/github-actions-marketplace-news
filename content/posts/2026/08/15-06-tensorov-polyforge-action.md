---
title: PolyForge gate
date: 2026-08-15 06:40:14 +00:00
tags:
  - tensorov
  - GitHub Actions
draft: false
repo: https://github.com/tensorov/polyforge-action
marketplace: https://github.com/marketplace/actions/polyforge-gate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks if a task has been gated against a PolyForge evidence ledger and verifies that the committed Merkle chain matches the anchor hash. It posts a summary comment on pull requests with gate results, pass/fail state, tail hash, and bundle SHA-256. The action requires `polyforge-cli` available; for self-hosted runners, it installs the CLI from crates.io.
---


Version updated for **https://github.com/tensorov/polyforge-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polyforge-gate) to find the latest changes.

## Action Summary

This GitHub Action checks if a task has been gated against a PolyForge evidence ledger and verifies that the committed Merkle chain matches the anchor hash. It posts a summary comment on pull requests with gate results, pass/fail state, tail hash, and bundle SHA-256. The action requires `polyforge-cli` available; for self-hosted runners, it installs the CLI from crates.io.

## What's Changed

# PolyForge gate action v1.0.0

First release of the PolyForge gate action. Gates a task against the PolyForge
evidence ledger and verifies the committed Merkle-chain anchor, directly from
GitHub Actions.

## Changelog (scaffold commit 005544c)

- Composite action (`runs.using: composite`) with four inputs:
  - `task-id` (required): task id to gate against the ledger.
  - `required` (default `verified,validated`): comma-list of required evidence states.
  - `ledger-path` (default `.pf/ledger.jsonl`): ledger path relative to the workspace root.
  - `evidence-dir` (default `.pf/evidence/`): evidence directory relative to the workspace root.
- Runs `polyforge-cli gate <task-id> --required <required>`, preferring a
  pre-built workspace binary under `target/debug/polyforge-cli` and falling
  back to installing the CLI from crates.io.
- Verifies the Merkle chain against the committed anchor `.pf/ledger.jsonl.anchor`.
  The ledger head hash and entry count must match the anchor, otherwise the
  action fails closed (exit non-zero).
- On `pull_request` events only, posts a gate summary PR comment with the ledger
  summary, pass/fail state, tail hash, and bundle SHA-256. Push and schedule runs
  stay silent on success but hard-error on failure.
- Trust-model section in the README documents the current limitations: no
  cryptographic signatures yet, tamper evidence is only meaningful within a
  trusted checkout, and external anchoring is on the roadmap.

## Usage

```yaml
- uses: actions/checkout@v4
- uses: dtolnay/rust-toolchain@stable
- uses: tensorov/polyforge-action@v1
  with:
    task-id: my-task
    required: verified,validated
```

The action needs `polyforge-cli` available; a Rust toolchain setup step is
required when the workspace binary is absent (crates.io install fallback).

