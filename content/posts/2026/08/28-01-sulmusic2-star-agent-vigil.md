---
title: Agent Vigil
date: 2026-08-28 01:45:05 +00:00
tags:
  - sulmusic2-star
  - GitHub Actions
draft: false
repo: https://github.com/sulmusic2-star/agent-vigil
marketplace: https://github.com/marketplace/actions/agent-vigil
version: v0.20.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Agent Vigil checks an agent-written pull request against rules recorded when the task started, providing `PASS`, `FAIL`, or `INCONCLUSIVE` results. It can also generate a lifecycle receipt without opening a pull request, verifying evidence, and handling public PR receipts securely.
---


Version updated for **https://github.com/sulmusic2-star/agent-vigil** to version **v0.20.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-vigil) to find the latest changes.

## Action Summary

Agent Vigil checks an agent-written pull request against rules recorded when the task started, providing `PASS`, `FAIL`, or `INCONCLUSIVE` results. It can also generate a lifecycle receipt without opening a pull request, verifying evidence, and handling public PR receipts securely.

## What's Changed

Agent Vigil v0.20.0 adds the complete execution-gate package:

- safe Claude Code and Codex process-conformance checks with explicit `ALLOW`, `DENY`, `DEFER`, `ERROR`, and `UNKNOWN` results;
- live-host routing drills using harmless allow and deny canaries in disposable profiles;
- sticky continuity revocation and independent signed repair;
- the five-minute GitHub marker installation;
- the signed TypeScript continuity-staple verifier and shared vectors;
- a Terraform saved-plan gate that rechecks wall-clock freshness after plan inspection;
- a disposable Kubernetes admission lab;
- Outcome Mandates, Outcome Receipts, and a retained, unified result view.

Release validation at merge commit `8b3c8da7210871fec1dd60d36cb382297786c122`:

- 609 tests: 604 passed, 5 optional Docker tests skipped, 0 failed;
- 80.46% branch coverage with the 80% requirement unchanged;
- typecheck, build, smoke, public-surface review, package rehearsal, and runtime audit passed;
- package rehearsal covered 11 repository shapes and 33 setup flows;
- fresh Claude Code 2.1.245 and Codex 0.149.1 live routes passed on the identical validated source tree;
- guarded continuity reached `CURRENT → REVOKED → REVOKED → CURRENT`.

The route drills and Kubernetes environment are bounded tests. This release does not claim a production deployment, unrelated installation, real protected-action stop, payment, or revenue.

