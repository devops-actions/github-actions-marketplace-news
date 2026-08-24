---
title: Agent Vigil
date: 2026-08-24 22:52:17 +00:00
tags:
  - sulmusic2-star
  - GitHub Actions
draft: false
repo: https://github.com/sulmusic2-star/agent-vigil
marketplace: https://github.com/marketplace/actions/agent-vigil
version: v0.17.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Agent Vigil is a GitHub Action designed to ensure that code changes meet specific criteria before they are merged. It verifies the exact code change against policies, tests, and recorded actions, returning PASS, FAIL, or INCONCLUSIVE results. The verifier runs locally or on the repository's GitHub runner and uses trusted base policy checks to prevent regression testing failures. Agent Vigil reduces a local result to signed hashes, repository and policy identity, summary counts, and a signer key ID for CI verification.
---


Version updated for **https://github.com/sulmusic2-star/agent-vigil** to version **v0.17.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-vigil) to find the latest changes.

## Action Summary

Agent Vigil is a GitHub Action designed to ensure that code changes meet specific criteria before they are merged. It verifies the exact code change against policies, tests, and recorded actions, returning PASS, FAIL, or INCONCLUSIVE results. The verifier runs locally or on the repository's GitHub runner and uses trusted base policy checks to prevent regression testing failures. Agent Vigil reduces a local result to signed hashes, repository and policy identity, summary counts, and a signer key ID for CI verification.

## What's Changed

## Agent Vigil v0.17.0

This release adds a signed, append-only permission history for previously trusted changes. Later evidence can stop deployment without erasing the original result.

### Added

- `vigil continuity` records and evaluates `CURRENT`, `HOLD`, `EXPIRED`, and `REVOKED`.
- Authenticated GitHub merge, revert, hotfix, linked-incident, outage, and native Actions evidence import.
- A GitHub deployment gate that permits only `CURRENT`.
- A secret-free manual Continuity Lab and `continuity install-action --self-serve`.
- Separate public counts for exact Action use, continuity use, repeat runs, laboratory runs, and retained public artifacts.

### Live demonstration

The default-branch laboratory passed in [run 32741176887](https://github.com/sulmusic2-star/agent-vigil/actions/runs/32741176887) at main commit `893852e43fb12f204e4189dd84b76df845025749`.

- An authenticated revert produced `REVOKED`.
- A later ordinary green check remained `REVOKED`.
- The deployment job stayed skipped.
- Independent signed repair restored `CURRENT`.
- No software was deployed.

### Release verification

Exact release commit: `608b924e34d388cc04849e7d53889938baf545ea`

- 482 tests: 477 passed, five optional Docker checks skipped, zero failed.
- Coverage: 93.26% lines, 81.18% branches, 96.38% functions.
- Linux Node 20, 22, and 24 plus macOS and Windows checks passed.
- Public wording, package rehearsal across 11 repository shapes and 33 setup flows, three historical replays, workflow syntax, and production dependency audit passed.
- The temporary exact PR #74 scope exception was removed before this release. The standing repository policy is unchanged.

This release and its laboratory prove the stated deterministic behavior on Agent Vigil's own public repository. They do not prove an outside installation, repeat outside use, payment, or revenue.

