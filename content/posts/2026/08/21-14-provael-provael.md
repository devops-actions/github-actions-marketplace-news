---
title: Provael VLA red-team
date: 2026-08-21 14:08:04 +00:00
tags:
  - provael
  - GitHub Actions
draft: false
repo: https://github.com/provael/provael
marketplace: https://github.com/marketplace/actions/provael-vla-red-team
version: v0.36.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Provael action automates the red-teaming of Vision-Language-Action (VLA) robot policies in simulation to measure their Attack Success Rate (ASR) by analyzing various attack techniques. It solves the problem of systematically testing VLA policies and generating comprehensive reports, including ASR statistics, pass/fail scores, and SARIF tags for rule evaluation. The action provides deterministic execution across tasks with reproducible results, making it a valuable tool for policy validation in simulation environments.
---


Version updated for **https://github.com/provael/provael** to version **v0.36.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/provael-vla-red-team) to find the latest changes.

## Action Summary

The Provael action automates the red-teaming of Vision-Language-Action (VLA) robot policies in simulation to measure their Attack Success Rate (ASR) by analyzing various attack techniques. It solves the problem of systematically testing VLA policies and generating comprehensive reports, including ASR statistics, pass/fail scores, and SARIF tags for rule evaluation. The action provides deterministic execution across tasks with reproducible results, making it a valuable tool for policy validation in simulation environments.

## What's Changed


### Fixed

- **Per-shard provenance digests moved with the tool version — the third instance of the same
  defect, and the one that finally got the rule written down.** `combine.shard_digests` computed
  each shard's `sha256` with `model_dump_json()`, re-serialising it through whatever `RunReport`
  the *running* version defines. The pinned public-evidence manifest records `52bcdb70…` for
  `libero_object_0/report.json`; 0.34.0 reproduces it, 0.36.1 returned `66897a4c…` for
  byte-identical committed input, and `git diff` confirms the artifacts never changed.

  That defeats the only purpose those digests have. The manifest advertises them so a consumer can
  "re-fetch each shard and verify it independently" — and under the old body they could only do so
  with the exact tool version that wrote the manifest, which is not discoverable from the manifest.
  It now projects through `attest.report_projection`; all ten shards reproduce the pinned values.

- **The `RunReport` digest contract in `types.py` documented the opposite of what the code does.**
  It stated that "adding any field changes the digest of every historical report" and prescribed a
  `RULESET_VERSION` bump for every added field. True when written, false since `report_projection`
  landed — and three digest sites went on doing the bare dump anyway, two of which shipped broken
  (`leaderboard._inputs_digest` in 0.36.1, `combine.shard_digests` here). The contract now states
  the rule once: **any digest over a RunReport goes through `attest.report_projection`.**

- The test guarding shard digests was **tautological** and could not have caught this: it computed
  its expected value with the same `model_dump_json()` call the implementation used, so both sides
  shared the bug. Its own docstring said "or it is decoration". It now asserts the property a shared
  bug cannot satisfy — populating a field introduced *after* a shard's declared `schema_version`
  must not move its digest — and was verified by restoring the old body and watching it fail.


