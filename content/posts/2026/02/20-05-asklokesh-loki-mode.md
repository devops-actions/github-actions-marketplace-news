---
title: Loki Mode Code Review
date: 2026-02-20 05:54:43 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.49.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.49.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an autonomous multi-agent system designed to transform a Product Requirements Document (PRD) into a fully built, tested, and deployed product without human intervention. It automates the entire product lifecycle, including code review, bug fixes, and testing, integrating seamlessly with GitHub Actions to streamline pull request workflows. Its key capabilities include multi-agent collaboration, AI-driven code analysis, and support for various AI providers to deliver high-quality, production-ready results efficiently.

## Release notes


### Added
- Config self-protection: validate-bash.sh now blocks deletion/overwrite of .loki/council/, .loki/config.yaml, .loki/logs/bash-audit, .loki/session.lock
- Config self-protection: Docker sandbox mounts .loki/council/ and .loki/config.yaml as read-only
- Council severity-aware error budget: LOKI_COUNCIL_SEVERITY_THRESHOLD (critical/high/medium/low) and LOKI_COUNCIL_ERROR_BUDGET env vars
- Council members now categorize issues by severity (CRITICAL/HIGH/MEDIUM/LOW) in their review output
- Severity-based vote override: REJECT votes on sub-threshold issues automatically converted to APPROVE
- Structured handoff documents: write_structured_handoff() produces JSON schema v1.0.0 alongside markdown
- Handoff JSON includes: schema_version, timestamp, reason, iteration, files_modified, recent_commits, task_status, open_questions, key_decisions, blockers
- load_handoff_context() now prefers JSON handoffs over markdown with graceful fallback
- Structured handoff automatically written at session end

### Changed
- Council dashboard state now includes severity_threshold and error_budget fields
- All defaults are backwards-compatible (severity=low, budget=0.0 = strictest = same as before)


