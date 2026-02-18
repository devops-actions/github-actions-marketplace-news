---
title: Check NPM Scope Access
date: 2026-02-18 05:47:02 +00:00
tags:
  - codafusion
  - GitHub Actions
draft: false
repo: https://github.com/codafusion/check-npm-scope-access
marketplace: https://github.com/marketplace/actions/check-npm-scope-access
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/codafusion/check-npm-scope-access** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-npm-scope-access) to find the latest changes.

## Action Summary

The `check-npm-scope-access` GitHub Action automates the process of verifying read access to private NPM packages across specified scopes. It scans the `package.json` files in a repository to identify scoped dependencies, checks their accessibility in the configured NPM registry, and provides a consolidated report of inaccessible packages. This action helps ensure proper permissions for private NPM packages, avoiding runtime issues due to access restrictions.

## Release notes

### Added
- Initial public release.
- Initial release workflow for tagged releases (`vX.Y.Z`) with automatic moving major tag updates (for example `v1`).
- Unit tests for scope parsing, package discovery, HTTP handling, and main execution paths.
- CI test execution (`pytest`) and syntax check (`py_compile`).
- Security policy (`SECURITY.md`).

### Changed
- No `package.json` files now result in a successful notice instead of a failure.
- Error reporting now includes categorized HTTP/network failure context.

### Documentation
- README: added CI badge and release section.
- CONTRIBUTING: clarified local checks and pull request rules.

