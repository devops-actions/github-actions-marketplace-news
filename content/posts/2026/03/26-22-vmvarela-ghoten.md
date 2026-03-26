---
title: Ghoten Action
date: 2026-03-26 22:02:25 +00:00
tags:
  - vmvarela
  - GitHub Actions
draft: false
repo: https://github.com/vmvarela/ghoten
marketplace: https://github.com/marketplace/actions/ghoten-action
version: v1.13.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vmvarela/ghoten** to version **v1.13.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghoten-action) to find the latest changes.

## Action Summary

Ghoten is a fork of OpenTofu that introduces a native `oras` backend for managing Terraform/OpenTofu state in OCI-compatible container registries, such as GitHub Container Registry (GHCR). It simplifies state management by eliminating the need for a separate backend service, leveraging existing registry authentication, permissions, and auditing. Key features include built-in locking, retries, optional compression, and a "smart refresh" capability to optimize infrastructure planning and apply operations by skipping unnecessary resource refreshes.

## Release notes

### Features

**Smart Refresh** (`-refresh=smart`)
- Skips refresh for state-tracked managed resources whose structural config (`count`, `for_each`, `depends_on`) has not changed since the last apply
- Uses SHA-256 fingerprint (`configExprHash`) stored in state to detect config changes
- Refreshes changed nodes + ancestors + descendants
- Apply and plan output show `Refresh: N refreshed, M skipped (smart mode)`
- Data sources are always re-read during plan (not affected by smart refresh)

### Validation

- 30+ unit tests covering smart refresh behavior

**Full Changelog**: https://github.com/vmvarela/ghoten/compare/v1.12.5...v1.13.0
