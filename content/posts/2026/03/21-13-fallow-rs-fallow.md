---
title: Fallow - Dead Code Analysis
date: 2026-03-21 13:30:48 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-based codebase analyzer for JavaScript and TypeScript that automates the detection of unused code, circular dependencies, code duplication, and complexity hotspots. It streamlines code maintenance by identifying dead files, exports, and dependencies, while also detecting issues like unresolved imports, unlisted dependencies, and duplicate or circular code structures. With significantly faster performance than comparable tools and no dependency on a Node.js runtime, it enables developers to quickly optimize and refactor their projects for better efficiency and maintainability.

## Release notes

## Features

- **Markdown output format** — New `--format markdown` option for check and dupes commands, producing clean Markdown reports suitable for PR comments, CI summaries, and documentation
- **LSP issue type filtering** — Filter which diagnostic types the LSP reports via `initializationOptions.issueTypes`, with corresponding VS Code `fallow.issueTypes` configuration
- **VS Code extension improvements** — Added marketplace icon, issue type filter settings, and config-change-triggered re-analysis

## Code Quality (Oxc-inspired)

Comprehensive code quality overhaul inspired by the [Oxc](https://github.com/oxc-project/oxc) ecosystem:

- **Expanded clippy lint coverage** — Enabled `all`, `pedantic`, `nursery`, and `cargo` lint groups with a strategic allow-list for false positives, plus 13 restriction lints (`undocumented_unsafe_blocks`, `unused_result_ok`, `clone_on_ref_ptr`, `infinite_loop`, etc.)
- **`#[expect]` over `#[allow]`** — All clippy suppressions now use `#[expect(clippy::...)]`, which warns when a suppression becomes unnecessary — prevents dead annotations from accumulating
- **Rust compiler lints** — Added `unsafe_op_in_unsafe_fn`, `unused_unsafe`, `non_ascii_idents`
- **Size assertions** — `ModuleNode` (96B), `ModuleInfo` (256B) const assertions prevent accidental struct bloat
- **Dev profile optimizations** — `debug = false` for faster builds, selective `opt-level` for proc-macro crates (`serde_derive`, `clap_derive`) and snapshot test deps (`insta`, `similar`)
- **Removed 5 unused dependencies** — `bincode` and `regex` from core, `indicatif` and `miette` from CLI, `tracing` from LSP/MCP

## CI Hardening

- **`permissions: {}`** deny-all baseline — each job explicitly requests only `contents: read`
- **`git diff --exit-code`** check catches uncommitted generated code
- **`--document-private-items`** in doc check for comprehensive documentation validation

## Refactors

- Split `graph.rs` (2644 lines) into `graph/{mod,types,build,reachability,re_exports,cycles}.rs`
- Split `fix.rs` (1561 lines) into `fix/{mod,io,exports,enum_members,deps}.rs`
- Added comprehensive extract unit tests for JS/TS, Vue/Svelte SFC, Astro, MDX, and CSS Modules parsing

## Infrastructure

- Upgraded Cargo resolver from `"2"` to `"3"`
- Bumped `toml` dependency to 1.0.7

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v1.0.4...v1.1.0
