---
title: spec-sync
date: 2026-04-07 13:57:31 +00:00
tags:
  - CorvidLabs
  - GitHub Actions
draft: false
repo: https://github.com/CorvidLabs/spec-sync
marketplace: https://github.com/marketplace/actions/spec-sync
version: v3.3.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/CorvidLabs/spec-sync** to version **v3.3.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-sync) to find the latest changes.

## Action Summary

SpecSync is a GitHub Action and CLI tool for bidirectional validation of markdown-based module specifications (`*.spec.md`) against source code and database schemas across 11 programming languages. It automates the detection of inconsistencies such as undocumented exports, stale or phantom entries, missing files, type mismatches, and incomplete specifications, ensuring alignment between specs and implementations. Key capabilities include cross-project references, auto-detection of programming languages, and integration with VS Code for enhanced developer productivity.

## What's Changed

## What's New in v3.3.0

### Features
- **Lifecycle, custom rules, views, compaction & archival** — Full spec lifecycle management with custom validation rules, filtered views, spec compaction, and archival support (#94)
- **Content hashing & staleness detection** — Smart change detection using content hashes to avoid unnecessary spec regeneration (#91, #93)
- **GitHub Issues integration** — Link specs to GitHub tickets for traceability (#103)
- **Merge conflict resolution** — Automatic resolution of merge conflicts in spec files (#105)

### Fixes
- **Pipe deadlock prevention** — Fixed potential deadlock during AI CLI execution (#96)
- **Binary detection improvements** — More accurate binary detection using OS-level PATH search (#92, #95)
- **CI improvements** — Added `workflow_dispatch` trigger, resolved clippy warnings and rustfmt formatting

### Docs
- Standalone workflow guide and documentation for missing CLI commands

**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v3.2.0...v3.3.0

## What's Changed
* feat: content hashing with staleness detection and AI spec regen by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/91
* feat: search PATH directly for binaries and clarify template fallback by @0xGaspar in https://github.com/CorvidLabs/spec-sync/pull/92
* feat: content hashing and staleness detection for smart change detection by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/93
* fix: improve binary detection accuracy using OS-level PATH search by @0xGaspar in https://github.com/CorvidLabs/spec-sync/pull/95
* fix: prevent pipe deadlock during AI CLI execution by @0xGaspar in https://github.com/CorvidLabs/spec-sync/pull/96
* feat: v3.3 — lifecycle, custom rules, views, compaction & archival by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/94
* feat: GitHub Issues integration — link specs to tickets by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/103
* feat: add merge conflict resolution for spec files by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/105

## New Contributors
* @0xGaspar made their first contribution in https://github.com/CorvidLabs/spec-sync/pull/92

**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v3.2.0...v3.3.0
