---
title: Agent Vigil
date: 2026-08-24 05:59:50 +00:00
tags:
  - sulmusic2-star
  - GitHub Actions
draft: false
repo: https://github.com/sulmusic2-star/agent-vigil
marketplace: https://github.com/marketplace/actions/agent-vigil
version: v0.16.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Agent Vigil is a tool designed to ensure code changes in pull requests are verified against established policies, tasks, tests, and recorded actions. It checks exact code changes against the task, policy, tests, and recorded tool actions behind them, returning **PASS**, **FAIL**, or **INCONCLUSIVE** results. Missing evidence prevents green checkmarks. The verifier runs locally or in GitHub runners, using local policies without sharing agent transcripts. It provides commands to plan, compare receipts, generate proof comments, and create value cards for maintaining code integrity and accountability.
---


Version updated for **https://github.com/sulmusic2-star/agent-vigil** to version **v0.16.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-vigil) to find the latest changes.

## Action Summary

Agent Vigil is a tool designed to ensure code changes in pull requests are verified against established policies, tasks, tests, and recorded actions. It checks exact code changes against the task, policy, tests, and recorded tool actions behind them, returning **PASS**, **FAIL**, or **INCONCLUSIVE** results. Missing evidence prevents green checkmarks. The verifier runs locally or in GitHub runners, using local policies without sharing agent transcripts. It provides commands to plan, compare receipts, generate proof comments, and create value cards for maintaining code integrity and accountability.

## What's Changed

## Agent Vigil v0.16.0

This release lets an organization retain signed challenge results from another control without trusting an embedded key on sight.

### Added

- Public `control-proof/signed-challenge-v1` format for exact commits, challenge decisions, evidence hashes, timestamps, and stated limits.
- Ed25519 verification against a separately obtained public key.
- Key-bound policy identity: `vendor/product@sha256:...`.
- V2 control certificates and corpus entries that can share one chain with unchanged V1 entries.
- `vigil certify sign` for providers and `vigil certify record-signed` for organization-side pinning.
- Public JSON schemas for the signed proof, V2 certificate, and V2 corpus entry.

### Verification

Exact release commit: `be3161fb7a85a4d69af6356e6c453ffd72ebac97`

- 443 tests: 438 passed, 5 optional checks skipped, 0 failed.
- Coverage: 93.58% lines, 81.26% branches, 96.60% functions.
- Linux Node 20, 22, and 24 plus macOS and Windows pull-request checks passed.
- Typecheck, clean rebuild, public-surface review, production dependency audit, and 11-repository/33-setup-flow package rehearsal passed.

A valid signed proof establishes file integrity, signer possession, the policy-pinned identity, and the challenge results reported by that signer. It does not independently verify private evidence, a live GitHub ruleset, external adoption, or commercial use.

