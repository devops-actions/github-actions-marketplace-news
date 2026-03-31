---
title: spec-sync
date: 2026-03-31 06:14:55 +00:00
tags:
  - CorvidLabs
  - GitHub Actions
draft: false
repo: https://github.com/CorvidLabs/spec-sync
marketplace: https://github.com/marketplace/actions/spec-sync
version: v3.0.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/CorvidLabs/spec-sync** to version **v3.0.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-sync) to find the latest changes.

## Action Summary

SpecSync is a GitHub Action and CLI tool designed to validate the synchronization between markdown-based module specifications (`*.spec.md`) and source code across multiple programming languages. It automates bidirectional checks to detect discrepancies such as undocumented exports, stale entries, missing files, or schema mismatches, ensuring alignment between code and documentation. With support for 11 languages and features like cross-project references, it simplifies maintaining up-to-date and complete specifications.

## What's Changed

## Highlights

**SpecSync now has a first-class VS Code extension** — inline diagnostics, quality scores, coverage reports, and validate-on-save, all powered by the CLI.

### Added

- **VS Code extension** (`corvidlabs.specsync`) — published on the VS Code Marketplace
  - Inline diagnostics mapped to spec files with proper severity
  - CodeLens quality scores (0–100 with letter grades) displayed above spec files
  - Coverage webview with theme-aware HTML report
  - Scoring webview with per-spec quality breakdown and suggestions
  - Five commands: Validate, Coverage, Score, Generate, Initialize
  - Status bar indicator with pass/fail/error/syncing states
  - Validate-on-save (debounced 500ms)
  - Configurable settings: `specsync.binaryPath`, `specsync.validateOnSave`, `specsync.showInlineScores`
  - Auto-activates in workspaces with `specsync.json`, `.specsync.toml`, or `specs/` directory

### Breaking Changes

- Major version bump to v3. GitHub Action users should update to `CorvidLabs/spec-sync@v3`.

**Full changelog**: https://github.com/CorvidLabs/spec-sync/blob/main/CHANGELOG.md

## What's Changed
* feat: VS Code extension MVP by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/68
* release: v3.0.0 — VS Code extension + full editor integration by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/79
* feat: VS Code extension MVP with full CLI integration by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/80


**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v2.5.0...v3.0.0
