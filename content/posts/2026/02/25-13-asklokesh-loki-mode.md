---
title: Loki Mode Code Review
date: 2026-02-25 13:27:53 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.59.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.59.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an autonomous multi-agent system that automates the development of software from a Product Requirements Document (PRD) to tested code, leveraging 41 specialized agents working in parallel. It follows a unique self-verifying RARV cycle (Reason, Act, Reflect, Verify) to ensure code quality, retrying tasks when verification fails. This action accelerates software development, especially for full-stack applications, by automating complex workflows like code generation, testing, and configuration while requiring human oversight for deployment and critical decisions.

## Release notes


### Added
- Migrate: dashboard auto-launches during migration with real-time progress monitoring
- Migrate: new `--no-dashboard` flag to disable dashboard during migration
- Migrate: post-migration `migration_docs/` generation with 8 comprehensive documentation files
- Migrate: new `--no-docs` flag to skip documentation generation
- Migrate: seam statistics (high/medium/low breakdown) now returned by `get_progress()` API

### Fixed
- Migrate: `--resume` no longer creates a new migration, correctly loads existing migration directory
- Migrate: dashboard PID cleanup via RETURN trap prevents orphaned processes on error paths
- Migrate: port-finding loop no longer kills unrelated Python processes on occupied ports
- Migrate: `get_progress()` no longer reports "completed" when only some phases are done
- Migrate: `list_migrations()` correctly handles "failed" phase status
- Migrate: `source` and `target` fields now return flat strings instead of dicts (fixes `[object Object]` in UI)
- Migrate: `start_phase()` now allows restarting completed/failed phases for `--resume --phase` use case
- Migrate: `advance_phase()` defensively initializes missing phase keys in manifest
- Migrate: `check_phase_gate()` refactored to single implementation (eliminates duplicate logic drift)
- Migrate: `_atomic_write()` uses `os.replace()` instead of `os.rename()` for cross-filesystem safety
- Migrate: added `status`, `progress_pct`, `updated_at`, `source_path` fields to MigrationManifest dataclass
- Migrate: fixed duplicate step number in understand phase prompt
- Migrate: dashboard log directory creation checks for write permission before launch


