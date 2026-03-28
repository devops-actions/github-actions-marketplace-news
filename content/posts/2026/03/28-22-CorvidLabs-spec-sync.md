---
title: spec-sync
date: 2026-03-28 22:14:06 +00:00
tags:
  - CorvidLabs
  - GitHub Actions
draft: false
repo: https://github.com/CorvidLabs/spec-sync
marketplace: https://github.com/marketplace/actions/spec-sync
version: v2.4.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/CorvidLabs/spec-sync** to version **v2.4.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-sync) to find the latest changes.

## Action Summary

SpecSync is a GitHub Action and CLI tool designed for bidirectional validation of markdown-based specifications (`*.spec.md`) against source code. It automates the detection of mismatches such as undocumented code exports, stale documentation, and missing files, ensuring alignment between code and documentation across multiple programming languages. With support for nine languages, it simplifies cross-project references and helps maintain accurate, up-to-date technical specs.

## Release notes

## What's Changed

### Export Validation: Allowlist Model (#60)

Switched `get_spec_symbols` from a blocklist to an **allowlist** — only `### Exported ...` subsections under `## Public API` trigger export validation. All other subsections are treated as informational documentation.

This means specs can now document their full API surface in one place:
- `### Exported Functions` / `### Exported Types` → validated against code
- `### API Endpoints` / `### Route Handlers` / `### Component API` / `### Configuration` → informational, no validation

**Backwards-compatible** — tables directly under `## Public API` (no `###` header) are still validated, and existing specs using `### Exported ...` headers work exactly the same.

**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v2.3.3...v2.4.0

## What's Changed
* feat: switch export validation to allowlist model by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/60
* chore: prepare v2.4.0 release by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/61


**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v2.3.3...v2.4.0

## What's Changed
* feat: switch export validation to allowlist model by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/60
* chore: prepare v2.4.0 release by @corvid-agent in https://github.com/CorvidLabs/spec-sync/pull/61


**Full Changelog**: https://github.com/CorvidLabs/spec-sync/compare/v2.3.3...v2.4.0
