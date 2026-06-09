---
title: Setup Standalone pnpm
date: 2026-06-09 14:45:14 +00:00
tags:
  - threeal
  - GitHub Actions
draft: false
repo: https://github.com/threeal/setup-pnpm-action
marketplace: https://github.com/marketplace/actions/setup-standalone-pnpm
version: v2.0.0
dependentsNumber: "27"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/threeal/setup-pnpm-action** to version **v2.0.0**.

- This action is used across all versions by **27** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-standalone-pnpm) to find the latest changes.

## What's Changed

## What's Changed

### Breaking Changes

- **Default version behavior changed.** Previously, omitting the `version` input would install the latest pnpm. Now, the action first looks for a `packageManager` field in the `package.json` in the current directory and uses that version if found, falling back to the latest only when the field is absent.

### New Features

- **`version-file` input** — new input that accepts a path to a file specifying the pnpm version to install. Supports `package.json` files with a `packageManager` field. `version` and `version-file` are mutually exclusive.
- **`version` output** — the action now sets a `version` output exposing the exact version of pnpm that was installed.
- **pnpm v11 support** — the action now handles the archive-based release format introduced in pnpm v11 (`.tar.gz` on Linux/macOS, `.zip` on Windows), in addition to the standalone binary format used by earlier versions.
- **Setup caching** — the action skips the download and extraction step when the pnpm home directory for the resolved version is already populated, speeding up repeated runs.
- **Expanded runner support** — CI now validates the action on Linux arm64 (`ubuntu-24.04-arm`), Windows arm64 (`windows-11-arm`), and the latest macOS and Windows runners, in addition to existing x64 coverage.

### Bug Fixes

- **Windows executable permissions** — the action no longer attempts to `chmod` the pnpm executable on Windows, which previously caused an error.
- **Early platform validation** — unsupported platforms and architectures are now rejected with a clear error message before any network request is made.

### Development Tooling Changes

- **Upgraded action runtime from Node.js 20 to Node.js 24.**
- **Replaced `gha-utils` with `ghakit`** as the GitHub Actions toolkit dependency.
- **Replaced Rollup with tsup** as the bundler; all runtime dependencies remain in `devDependencies` with no separate bundle step needed.
- **Switched to pnpm 11** as the development package manager.
- **Upgraded Vitest to version 4** and refactored tests to achieve full branch coverage.
- **Merged separate build and test CI workflows** into a single `ci.yaml`.
- **Lefthook is now used as a standalone binary** rather than a pnpm package, removing it from `devDependencies`.
- Added `CLAUDE.md` for Claude Code project configuration.
- Bumped Node.js through 23.x → 24.16.0, TypeScript to 6.0, ESLint to 10.x, and many other dependencies.

**Full Changelog**: https://github.com/threeal/setup-pnpm-action/compare/v1.0.0...v2.0.0

