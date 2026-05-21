---
title: integrity.md Check
date: 2026-05-21 14:51:22 +00:00
tags:
  - Startvest-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Startvest-LLC/integrity-md-action
marketplace: https://github.com/marketplace/actions/integrity-md-check
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Startvest-LLC/integrity-md-action** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/integrity-md-check) to find the latest changes.

## Action Summary

The "integrity.md Check" GitHub Action automates the validation of an `integrity.md` file against The Integrity Framework (TIF) base manifest and custom audit rules. It simplifies the process of enforcing consistency and compliance by utilizing the `startvest-integrity-cli` tool to identify and report issues of varying severity (e.g., critical, high, medium, low). Additionally, the action can generate Shields.io-compatible JSON badges to visually represent the project's integrity status.

## What's Changed

The action now reads the `tier` field directly from CLI JSON instead of recomputing it locally. Requires [`startvest-integrity-cli` v1.4.0+](https://github.com/Startvest-LLC/startvest-integrity-cli) (the default).

One source of truth between the CLI, the directory site, and the badge this action publishes.

## Breaking-ish change: tier semantics

The CLI's tier semantics are a closer match to the directory's gates than v1.0.0's locally-computed mapping. Same fixture results, different label:

| Severity counts | v1.0.0 tier | v1.1.0 tier |
| --- | --- | --- |
| 0 CRITICAL + 0 HIGH | `bronze` | **`silver`** |
| 0 CRITICAL + ≥1 HIGH | `bronze-warn` | **`bronze`** |
| ≥1 CRITICAL | `fail` | `fail` |

If you pinned to `@v1.0.0` you'll keep the old labels. `@v1` floats to v1.1.0 today.

## What changed

- Default `cli-version` bumped 1.3.0 → 1.4.0
- `tier` output now sourced from CLI JSON (forward-compatible with future tier strings)
- Badge step is a pure renderer (tier-string → shields message + color)
- Step summary surfaces tier alongside manifest version
- README tier table updated

## Selftest

The fixture under `fixtures/pass/` produces `tier: bronze` (1 HIGH finding, 0 CRITICAL). Selftest asserts CLI exit 0 and 0 CRITICAL; verified on every push.

## Migration

Most consumers using `@v1` get the change for free. If your CI parsed the `bronze-warn` value explicitly, treat it as `bronze` going forward.
