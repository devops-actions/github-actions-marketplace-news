---
title: spec-sync
date: 2026-04-15 06:22:26 +00:00
tags:
  - CorvidLabs
  - GitHub Actions
draft: false
repo: https://github.com/CorvidLabs/spec-sync
marketplace: https://github.com/marketplace/actions/spec-sync
version: v4.2.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/CorvidLabs/spec-sync** to version **v4.2.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-sync) to find the latest changes.

## Action Summary

SpecSync is a GitHub Action and tool designed for bidirectional validation of markdown-based specifications (`*.spec.md`) against source code, databases, and schemas across multiple programming languages. It automates the detection of discrepancies such as undocumented code exports, stale or phantom entries in specifications, missing files, and schema mismatches, ensuring alignment between code and documentation. Key capabilities include cross-project references, dependency graph analysis, and AI-powered specification generation, facilitating streamlined code and spec consistency.

## What's Changed

## spec-sync v4.2.0

### New Features
- **Companion files** — TOML `[companions]` config with YAML extraction support
- **Multi-format support** — YAML spec extraction with flexible indentation handling

### Fixes
- TOML companions config parsing corrected
- YAML extractor handles any indentation level (not just 2-space)
- README section naming aligned with spec references
- Testing and design spec companions aligned with code
- CI fixes: cargo fmt + clippy regex-in-loop lint

### Full Changelog
https://github.com/CorvidLabs/spec-sync/compare/v4.1.0...v4.2.0

## What's Changed
* docs: migrate from Jekyll to mdBook by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/217
* ci: add corvid-pet PR review to CI by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/218
* ci: add CI summary table and collapsible spec details by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/219
* feat: support YAML as source language for symbol extraction by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/224
* feat: add testing.md companion file support by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/225
* feat: add design.md companion files (opt-in) by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/226
* chore: release 4.2.0 by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/227


**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v4.1.3...v4.2.0
