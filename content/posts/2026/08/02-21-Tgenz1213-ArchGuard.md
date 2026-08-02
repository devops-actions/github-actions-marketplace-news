---
title: ArchGuard - Architectural Drift Detector
date: 2026-08-02 21:10:05 +00:00
tags:
  - Tgenz1213
  - GitHub Actions
draft: false
repo: https://github.com/Tgenz1213/ArchGuard
marketplace: https://github.com/marketplace/actions/archguard-architectural-drift-detector
version: v1.4.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  ArchGuard is a CLI tool that uses LLMs to verify code changes against established Architectural Decision Records (ADRs). It helps prevent architectural drift by analyzing code changes and ensuring they comply with ADRs. The action automates the process of indexing ADRs and checking for compliance, providing alerts before code merges that violate architectural rules.
---


Version updated for **https://github.com/Tgenz1213/ArchGuard** to version **v1.4.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/archguard-architectural-drift-detector) to find the latest changes.

## Action Summary

ArchGuard is a CLI tool that uses LLMs to verify code changes against established Architectural Decision Records (ADRs). It helps prevent architectural drift by analyzing code changes and ensuring they comply with ADRs. The action automates the process of indexing ADRs and checking for compliance, providing alerts before code merges that violate architectural rules.

## What's Changed

Add e2e test coverage for the dual chat/embedding provider split (closes #54).

- `internal/cli.Execute`'s mock-provider test injection point now supports two distinct mock providers (one per role: chat, embed), exercising the dual-provider routing added in PR #52 end-to-end via a real `archguard index` + `archguard check` subprocess run, not just at the unit level.
- Test-only change: no new CLI flags, config fields, or exit codes; no user-facing behavior change.

**Full Changelog**: https://github.com/Tgenz1213/ArchGuard/compare/v1.4.0...v1.4.1
