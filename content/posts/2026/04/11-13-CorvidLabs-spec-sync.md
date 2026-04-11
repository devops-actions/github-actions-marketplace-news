---
title: spec-sync
date: 2026-04-11 13:40:31 +00:00
tags:
  - CorvidLabs
  - GitHub Actions
draft: false
repo: https://github.com/CorvidLabs/spec-sync
marketplace: https://github.com/marketplace/actions/spec-sync
version: v3.8.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/CorvidLabs/spec-sync** to version **v3.8.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-sync) to find the latest changes.

## Action Summary

SpecSync is a GitHub Action and CLI tool designed for bidirectional validation of markdown-based module specifications against source code, ensuring alignment between documentation and implementation. It automates the detection of discrepancies, such as missing, undocumented, or outdated code elements, database schema mismatches, and incomplete specs across multiple programming languages. By enabling cross-project references, dependency graph generation, and AI-powered spec creation, it streamlines the maintenance of accurate and consistent technical documentation.

## What's Changed

## What's New

### Features
- **Staleness detection** — `specsync stale` identifies specs that are out-of-date relative to their source files (#189)
- **AST-based export parsing** — tree-sitter powered analysis replaces regex for more accurate `exports` validation (#192)
- **Batch operations** — `specsync import`, `score`, and `generate` now accept multiple modules in one invocation (#191)
- **Declarative custom validation rules** — define project-specific validation in `specsync.toml` without code (#190)
- **Cross-repo content verification** — `specsync resolve --verify` checks referenced specs across repositories (#195)
- **MCP resource support** — agents can browse the spec tree via MCP resources without knowing file paths (#194)

### Fixes
- **Docs** — clarified requirements convention (companion file, not inline) (#193)

**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v3.7.0...v3.8.0

## What's Changed
* feat: staleness detection — `specsync stale` command + check --stale flag by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/189
* feat: AST-based export parsing via tree-sitter by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/192
* feat: batch operations — import --all-issues/--from-dir, score --format table/csv, generate --uncovered/--batch by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/191
* feat: declarative custom validation rules by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/190
* feat: cross-repo spec content verification (#159) by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/195
* feat(mcp): add resource support for browsable spec tree by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/194
* fix(docs): clarify requirements convention — companion file, not inline by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/193
* chore: v3.8.0 release by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/196


**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v3.7.0...v3.8.0
