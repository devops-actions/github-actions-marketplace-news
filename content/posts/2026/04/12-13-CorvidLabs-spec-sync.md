---
title: spec-sync
date: 2026-04-12 13:50:31 +00:00
tags:
  - CorvidLabs
  - GitHub Actions
draft: false
repo: https://github.com/CorvidLabs/spec-sync
marketplace: https://github.com/marketplace/actions/spec-sync
version: v4.1.3
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/CorvidLabs/spec-sync** to version **v4.1.3**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-sync) to find the latest changes.

## Action Summary

SpecSync is a GitHub Action and CLI tool designed for bidirectional validation of markdown-based specifications (`*.spec.md`) against source code, ensuring alignment between documentation and codebase across multiple programming languages. It automates the detection of discrepancies such as undocumented exports, stale entries, missing files, or schema mismatches, helping teams maintain accurate and up-to-date documentation. Key features include support for 11 programming languages, cross-project references, dependency graph generation, and AI-powered spec generation.

## What's Changed

### Fixed

- **`specsync merge` now detects conflicts in all spec `.md` files** — Previously, merge conflict detection only matched `*.spec.md` files, silently skipping `tasks.md`, `requirements.md`, `context.md`, and other markdown files under the specs directory. Now matches any `.md` file in the specs path (#215).

**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v4.1.2...v4.1.3

## What's Changed
* fix: detect merge conflicts in all spec .md files, not just *.spec.md by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/215
* chore: v4.1.3 release prep — changelog + version bump by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/216


**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v4.1.2...v4.1.3
