---
title: Fallow - Codebase Health
date: 2026-04-07 21:56:54 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.19.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.19.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a Rust-based codebase analyzer for TypeScript and JavaScript projects. It automates the detection of unused code, code duplication, complexity issues, and architectural violations, enabling developers to identify inefficiencies and maintain cleaner, more maintainable codebases. Key capabilities include rapid analysis (sub-second performance), zero configuration, and support for features like dead code detection, duplication analysis, and boundary violation checks, making it especially useful for large projects and monorepos.

## What's Changed

## Angular external template tracking

Fallow now understands Angular's external HTML templates. Components using `@Component({ templateUrl, styleUrl })` no longer produce false positives for unused files or unused class members.

### What's new

**Angular template support** ([#73](https://github.com/fallow-rs/fallow/issues/73))

- `templateUrl` and `styleUrl`/`styleUrls` references in `@Component` decorators create graph edges, preventing false `unused-files` reports on template and style files
- HTML templates are scanned for Angular syntax: `{{ interpolation }}`, `[property]` bindings, `(event)` bindings, `[(ngModel)]` two-way bindings, `*ngIf`/`*ngFor` structural directives, Angular 17+ control flow (`@if`, `@for`, `@switch`), and pipe references
- Referenced identifiers are bridged to the component's class members, preventing false `unused-class-members` reports
- Scope tracking for `*ngFor` and `@for` loop bindings ensures iteration variables aren't flagged

This brings Angular to parity with the existing Vue and Svelte template tracking (shipped in v2.15.0).

### Bug fixes

- **Factory initializer instance tracking** ([#79](https://github.com/fallow-rs/fallow/pull/79)) — `const [svc] = useState(() => new MyService())` and similar React hook patterns now correctly resolve the destructured element as a class instance. Thanks @KamilDev!
- **VS Code extension binary version skew** ([#80](https://github.com/fallow-rs/fallow/discussions/80)) — the auto-downloaded LSP binary was never refreshed after initial download, causing diagnostics to diverge from the CLI. Now checks binary version on activation and re-downloads when stale.

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.18.3...v2.19.0
