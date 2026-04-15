---
title: compose-lint
date: 2026-04-15 06:20:38 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.3.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.3.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter for Docker Compose files that identifies and flags potential misconfigurations, helping users address vulnerabilities before deployment. Grounded in OWASP and CIS standards, it automates the detection of critical security issues, such as exposed Docker sockets, privileged modes, and improper network configurations. This action streamlines the process of ensuring Docker Compose files comply with best practices, enhancing container security and reducing operational risks.

## What's Changed

Product-focused polish on the --format text console output. No changes to JSON/SARIF schemas. Exit codes (0/1/2) preserved.

    Branded header with tool version and active params (files · config · fail-on) so runs are self-describing in CI logs
    Severity badges padded to 8 chars (critical width) so rule IDs line up across MEDIUM  , HIGH    , CRITICAL, LOW     
    Clean state is green — no issues found promoted from dim gray
    Multi-file aggregate line: 3 files scanned · 18 issues (2 critical, 6 high, 10 medium) · 2 suppressed (not counted)
    PASS/FAIL verdict relative to --fail-on: ✓ PASS · threshold: high or ✗ FAIL · N findings at or above high
    Suppressed counts pulled out of the breakdown and labeled (not counted) so the math reconciles at a glance

## What's Changed
* Bump marketplace-smoke pin to v0.3.3 by @tmatens in https://github.com/tmatens/compose-lint/pull/29
* docs/releasing lessons by @tmatens in https://github.com/tmatens/compose-lint/pull/30
* Consolidate publish pipeline and document distribution principles by @tmatens in https://github.com/tmatens/compose-lint/pull/31
* Add single release gate and per-channel escape hatch by @tmatens in https://github.com/tmatens/compose-lint/pull/32
* Remove release workflow by @tmatens in https://github.com/tmatens/compose-lint/pull/33
* Refresh README and fix stale docs by @tmatens in https://github.com/tmatens/compose-lint/pull/34
* Add Docker Scout vuln scan, SBOM attestation, and pre-push signing hook by @tmatens in https://github.com/tmatens/compose-lint/pull/35
* Add ADRs for shellcheck integration and Linux packages by @tmatens in https://github.com/tmatens/compose-lint/pull/36
* Brand the text output: header, severity alignment, PASS/FAIL verdict by @tmatens in https://github.com/tmatens/compose-lint/pull/37
* Prepare 0.3.4 release by @tmatens in https://github.com/tmatens/compose-lint/pull/38


**Full Changelog**: https://github.com/tmatens/compose-lint/compare/v0.3.3...v0.3.4
