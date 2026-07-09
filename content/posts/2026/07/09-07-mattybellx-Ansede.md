---
title: ansede-static
date: 2026-07-09 07:00:41 +00:00
tags:
  - mattybellx
  - GitHub Actions
draft: false
repo: https://github.com/mattybellx/Ansede
marketplace: https://github.com/marketplace/actions/ansede-static
version: v6.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mattybellx/Ansede** to version **v6.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ansede-static) to find the latest changes.

## What's Changed

## [6.1.0] — 2026-07-08

### Added
- **Taint-aware demotion engine**: pattern-only findings with no taint trace
  are now demoted from HIGH/CRITICAL to MEDIUM at most. CWE-617/200/532
  (code-quality rules) are always LOW. CWE-798 (hardcoded secrets) is exempt.
- **`_HARDCODED_DEMOTE_CWES`** and **`_NO_TRACE_DEMOTE_CWES`** constants
  in CLI post-processing pipeline

### Changed
- **HIGH/CRITICAL precision: 0% → 19.1%** across 43 repos
- Findings/file: 3.1 → 1.7 (default filter)
- CWE-617 (silent exceptions) severity: HIGH → LOW
- CWE-117 (log injection) without user input: CRITICAL → LOW
- CWE-89/78/1188/352/601 without taint trace: HIGH → MEDIUM

### Verified
- 43 repos scanned, 4,114 findings, 1,075 HIGH/CRIT → 205 suspected real
- 1 confirmed real vulnerability (CWE-601 open redirect via request.referrer)
- 1,249 tests pass, 0 regressions
- Noise gate CI: 0% HIGH/CRIT false-negative guarantee maintained


