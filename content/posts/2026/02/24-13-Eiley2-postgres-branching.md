---
title: Postgres Branching
date: 2026-02-24 13:23:28 +00:00
tags:
  - Eiley2
  - GitHub Actions
draft: false
repo: https://github.com/Eiley2/postgres-branching
marketplace: https://github.com/marketplace/actions/postgres-branching
version: v1.0.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Eiley2/postgres-branching** to version **v1.0.5**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postgres-branching) to find the latest changes.

## Action Summary

The **Postgres Branching** GitHub Action enables automated creation, resetting, and deletion of preview databases within a single PostgreSQL instance, mimicking Git-style branching for databases. It allows for seamless branch-per-PR workflows, making it easier to manage isolated database environments for development and testing, while remaining vendor-agnostic. Key features include automatic cloning, conflict resolution with advisory locks, and robust handling of incomplete or stale operations.

## Release notes

# Release Notes - v1.0.5

## Highlights

- Fixed leaked advisory lock-holder sessions that could block subsequent CI runs.
- Hardened stale-lock recovery for `create` with safer targeting and retry behavior.
- Added stronger regression coverage, including real grant-permission verification for app users.

## What Changed

- Lock reliability in `scripts/preview-branch.sh`:
  - Track and terminate the exact PostgreSQL backend PID used by the lock-holder session.
  - Keep stale-lock cleanup scoped to `application_name=postgres-branching-lock-holder`.
  - Preserve timeout recovery flow (cleanup + retry) for lock acquisition.

- Regression tests for lock behavior:
  - `tests/test_create_action_integration.sh`
    - run `create` twice and assert no lingering lock-holder session
    - inject synthetic stale lock-holder and verify auto-cleanup + retry path
    - strengthen cleanup for lock-holder backends
  - `tests/test_create_action.sh`
    - make mock `psql` counter concurrency-safe with file locking
    - align negative-path env setup consistency

- Grant-permission coverage improvements:
  - `tests/test_reset_action.sh`
    - add grant SQL coverage for reset flow with `APP_DB_USER`
  - `tests/test_create_action_integration.sh`
    - validate effective read/write privileges for `APP_DB_USER`
    - validate default privileges on new tables/sequences created after grant
  - `tests/test_reset_action_integration.sh`
    - same effective-permission and default-privilege validation after reset

## Validation

Executed locally and in integration Docker PostgreSQL 18:

- `bash tests/test_create_action.sh`
- `bash tests/test_reset_action.sh`
- `bash tests/test_delete_action.sh`
- `bash tests/test_create_action_integration.sh`
- `bash tests/test_reset_action_integration.sh`
- `bash tests/test_delete_action_integration.sh`

## Compatibility

- No breaking input/output changes.
- Existing workflows remain compatible.

## What's Changed
* fix: prevent leaked advisory lock holders and add regression tests by @Eiley2 in https://github.com/Eiley2/postgres-branching/pull/2


**Full Changelog**: https://github.com/Eiley2/postgres-branching/compare/v1.0.4...v1.0.5
