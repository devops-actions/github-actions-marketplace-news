---
title: Agent Security Harness
date: 2026-07-05 22:03:07 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.9.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## What's Changed

Closes the honest gap flagged in [Discussion #231](https://github.com/msaleme/red-team-blue-team-agent-fabric/discussions/231) and named by the ACM SIGOPS **ATC '26** analysis *Free-Riding the Agentic Web* (arXiv:2605.30998).

Three of that paper's four x402 attack primitives were already covered. The fourth — **denial of settlement** (consume the resource while withholding or delaying finality) — is a **liveness** attack with a different shape than a tamper→reject differential, so it was an untested gap. This release closes it: 3-of-4 → **4-of-4**.

## New: `settlement_finality_harness.py` — 8 tests (DSET-001..008)
Stdlib-only, deterministic settlement state machine, every check fails closed:
release-before-finality (broadcast ≠ final), insufficient confirmations, reorg/reverted revocation, finality-deadline (withheld settlement), self-asserted finality vs an authentic receipt, escrow atomicity, grant idempotency (double-consume), and post-grant revocation.

The question under test: **what is the authoritative finality point before the resource is released?**

**532 → 540 tests, 37 → 38 modules.** Verified by `scripts/count_tests.py`.
