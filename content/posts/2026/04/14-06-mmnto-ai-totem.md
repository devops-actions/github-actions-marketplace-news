---
title: Totem Shield
date: 2026-04-14 06:38:24 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.14.8
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.14.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that provides a persistent memory and enforcement layer for AI coding agents to improve architectural integrity and prevent repetitive mistakes. It automates the process of converting plain-English lessons into enforceable rules that are checked offline during development, ensuring AI agents adhere to project-specific standards and avoid common errors. By serving as a "tripwire" system, Totem maintains code quality without relying on runtime LLMs.

## What's Changed

### Patch Changes

-   bcc9c72: Perf Follow-up: batch compile upgrades and cwd threading

    **Perf / correctness (#1232, #1235):**

    -   Thread explicit `cwd` through `compileCommand` (#1232). `runSelfHealing(cwd)` was ignoring its own cwd parameter because `compileCommand` read `process.cwd()` directly. Fixed by adding `cwd?: string` to `CompileOptions` and threading it to the call site. Prevents future divergence if doctor gains `--cwd`.
    -   Batch `--upgrade` hashes in `runSelfHealing` (#1235). Previously N upgrade candidates meant N full config/lessons/rules/metrics load cycles. Now all telemetry prefixes build in one metrics load and `compileCommand({ upgradeBatch, cwd })` runs once. Unresolved batch hashes now throw `UPGRADE_HASH_NOT_FOUND` instead of silently becoming 'noop' and masking compile-prune mutations. CLI `--upgrade <hash>` flow is backwards compatible.

    **Governance:**

    -   Added `.github/pull_request_template.md` enforcing Mechanical Root Cause, Fix Applied, Out of Scope, Tests, and Related Tickets sections. Feeds downstream tooling (changesets, CR/GCA context extraction) with consistent structure.

    **Postmerge:** 7 new lessons extracted, 1 rule compiled and archived for over-breadth (upgradeTarget: compound per Proposal 226).

