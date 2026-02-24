---
title: Loki Mode Code Review
date: 2026-02-24 05:43:39 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.55.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.55.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an AI-powered multi-agent system designed to autonomously transform Product Requirements Documents (PRDs) into fully built and tested software products. It automates the development process using specialized agents working in parallel across domains like engineering, operations, and product management, following a self-verifying iterative cycle (RARV). This action accelerates development, ensures quality through automated testing and error recovery, and produces code, tests, and deployment configurations, serving as a powerful tool for teams seeking to streamline and automate their software development workflows.

## Release notes


### Added
- `loki migrate` command - enterprise code transformation engine
- 4-phase migration pipeline: Understand > Guardrail > Migrate > Verify
- MigrationPipeline with phase gates, thread-safe state management, atomic writes
- 5 migration-specific agent definitions (archaeologist, characterization tester, seam detector, planner, reviewer)
- 8 REST API endpoints under /api/migration/ with auth and rate limiting
- Dashboard migration view with phase progress and feature tracking
- Migration manifest, feature list, migration plan, and seams as JSON artifacts

### Fixed
- Weekly integrity audit workflow skipping all checks (#45)


