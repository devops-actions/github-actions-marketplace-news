---
title: Agent Security Harness
date: 2026-04-17 21:57:07 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## Action Summary

The **Agent Security Harness** is a GitHub Action designed to automate comprehensive security testing for agent-based systems, focusing on protocol integrity, operational governance, and decision governance. It runs adversarial tests across multiple communication protocols (e.g., MCP, A2A, L402, x402) to identify vulnerabilities such as spoofing, capability escalation, and unsafe decision-making under authority and policy constraints. This tool streamlines the identification of security risks, ensuring agents operate securely within defined boundaries.

## What's Changed

## v4.4.0 — Accuracy & Completeness

### Fixed
- Updated all test counts to 470 (was 466 in recent docs, 439 in older docs)
- Updated module count to 32 across all documentation
- Fixed MCP test count: 14 → 18
- Fixed AIUC-1 requirement claim to match crosswalk (19 of 20 testable)
- Added `pyyaml` as core dependency (was missing from pyproject.toml)
- Added Python 3.13 to CI matrix and classifiers
- Added 4 missing harness imports to CI import check

### Added
- CHANGELOG entries for v4.1.0, v4.2.0, v4.3.0 (previously undocumented)

Full diff: https://github.com/msaleme/red-team-blue-team-agent-fabric/compare/v4.3.0...v4.4.0
