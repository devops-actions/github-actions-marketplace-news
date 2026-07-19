---
title: cowork-harness
date: 2026-07-19 21:51:37 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the testing of Claude Cowork skills in a headless and CI-friendly manner. It reproduces the observable runtime contract closely enough to test skills across various scenarios without relying on the locked Desktop app. Key features include:
  
  - Scriptable: Allows developers to create and run tests for their skills.
  - CI-ready: Facilitates integration into continuous integration pipelines.
  - Fidelity tiers: Supports different levels of fidelity in testing (replay, linting, live).
  - Test a local skill in one command.
  
  Overall, this action helps developers ensure that their skills meet the limitations and behaviors of Claude Cowork.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action automates the testing of Claude Cowork skills in a headless and CI-friendly manner. It reproduces the observable runtime contract closely enough to test skills across various scenarios without relying on the locked Desktop app. Key features include:

- Scriptable: Allows developers to create and run tests for their skills.
- CI-ready: Facilitates integration into continuous integration pipelines.
- Fidelity tiers: Supports different levels of fidelity in testing (replay, linting, live).
- Test a local skill in one command.

Overall, this action helps developers ensure that their skills meet the limitations and behaviors of Claude Cowork.

## What's Changed


### Added

- **`coworkWebFetchDedup` enacted (hostloop `web_fetch`).** Real Cowork keeps a per-session negative-work
  cache: a repeat `web_fetch` of the same normalized URL within a TTL (default 15 min; cap 100; FIFO
  eviction; a hit does not refresh recency) makes **no network request** and returns a marker telling the
  model to re-use the earlier result. The harness now reproduces this on the host-API (`coworkWebFetchViaApi`)
  path — **baseline-gated** (only when the resolved baseline's `coworkWebFetchDedup` gate is on, i.e. Desktop
  ≥ 1.22209.3), keyed under both the request URL and the terminal `destination_url`, never caching errors /
  empty / non-2xx responses, and emitting **no egress event** on a hit (matching production's zero-network
  dedup). A hit is observable via the marker text (`tool_result_contains: "Already fetched"`).

### Changed

- **Platform baseline synced to Desktop 1.22209.3** (agent `2.1.215`). No prompt / spawn-env / egress-allowlist
  drift vs 1.21459.0; the sync captured the new `coworkWebFetchDedup` runtime config (enacted above) plus a
  few new (off) GrowthBook gates. The skill/README/reference version floors and agent-binary pins track the
  new baseline.



**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.4.0
