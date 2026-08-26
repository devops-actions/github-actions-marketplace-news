---
title: SurrealDB in Github Action
date: 2026-08-26 06:25:09 +00:00
tags:
  - surrealdb
  - GitHub Actions
draft: false
repo: https://github.com/surrealdb/setup-surreal
marketplace: https://github.com/marketplace/actions/surrealdb-in-github-action
version: v3.0.0
dependentsNumber: "17"
actionType: Composite
actionSummary: |
  The setup-surreal action automates the integration of SurrealDB into GitHub Actions CI pipelines. It provides a simple way to start and configure a SurrealDB instance, including setting up authentication, strict mode, logging levels, and customizing the datastore. The action outputs the endpoint for accessing the database and its version.
---


Version updated for **https://github.com/surrealdb/setup-surreal** to version **v3.0.0**.

- This action is used across all versions by **17** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/surrealdb-in-github-action) to find the latest changes.

## Action Summary

The setup-surreal action automates the integration of SurrealDB into GitHub Actions CI pipelines. It provides a simple way to start and configure a SurrealDB instance, including setting up authentication, strict mode, logging levels, and customizing the datastore. The action outputs the endpoint for accessing the database and its version.

## What's Changed

Adds support for SurrealDB v3, where `surreal start` no longer accepts a bare `--strict` and left the instance dead when `surrealdb_strict` was enabled. The action now detects the installed version and builds its arguments to match, so SurrealDB v1, v2 and v3 are all supported.

The readiness check polled a hardcoded `localhost:8000` rather than the port the instance was started on, so any other port either timed out or reported on an unrelated server. It now polls the configured endpoint, gives up as soon as the server process exits, and prints the server log on failure.

Also adds `nightly`, `beta` and `alpha` versions, the `surrealdb_datastore` and `surrealdb_import_file` inputs, and `endpoint` and `version` outputs.

The action's major version tracks the major version of SurrealDB whose support it introduces, which is why this is v3. It carries the same changes as v2.1.0, which remains available for workflows that reference `v2`. No input was removed or changed meaning, but three behaviours differ from v2.0.1 and are worth knowing about when upgrading:

- The readiness check now uses `surrealdb_port`, so a workflow that was silently passing against an unrelated server on port 8000 will now report the real result.
- A relative datastore path passed through `surrealdb_additional_args` now resolves against the workspace rather than `/usr/local/bin`.
- `surrealdb_additional_args` is word split rather than interpolated into the script, so variable references, globs and command substitution inside that value are no longer evaluated.

## What's Changed
* Reference the v3 tag in the usage example by @tobiemh in https://github.com/surrealdb/setup-surreal/pull/12


**Full Changelog**: https://github.com/surrealdb/setup-surreal/compare/v2.1.0...v3.0.0
