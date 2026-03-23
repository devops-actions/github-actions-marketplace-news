---
title: Fallow - Dead Code Analysis
date: 2026-03-23 21:42:00 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-dead-code-analysis
version: v1.4.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v1.4.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-dead-code-analysis) to find the latest changes.

## Action Summary

This GitHub Action, **fallow**, is a high-performance codebase analyzer for JavaScript and TypeScript that identifies unused code, circular dependencies, and duplicated code. Built in Rust, it automates code quality checks by detecting unused files, exports, dependencies, and types, while also uncovering issues like unresolved imports and duplicate exports with significantly faster performance compared to similar tools. Its key capabilities include comprehensive dead code analysis, efficient duplication detection (even for renamed variables), and tools for auto-removing unused code, helping developers optimize and maintain cleaner, more efficient codebases.

## Release notes

## Features

### Class instance member tracking

`const svc = new MyService(); svc.greet()` now correctly tracks `greet` as a used class member of `MyService`. This significantly reduces false positives for class-based code — NestJS services, Angular components, TypeORM repositories, and similar patterns where methods are called on instantiated objects rather than imported directly.

The visitor detects `const x = new Identifier()` patterns and maps subsequent `x.method()` / `x.property` accesses back to `Identifier.method` / `Identifier.property`. Also handles whole-object instance patterns (`Object.values(x)`, `{ ...x }`, `for..in`).

### JSDoc `@public` tag support

Exports annotated with `/** @public */` (or `/** @api public */`) are never reported as unused. Designed for library authors whose exports are consumed by external projects that fallow can't see. Works with all export types — named, default, class, interface, enum, type alias, and multi-specifier exports (`export { foo, bar }`).

### Type-only dependencies rule

Production dependencies that are only imported via `import type` are now reported as `type-only-dependency`. Since TypeScript types are erased at runtime, these packages should be `devDependencies` instead — shipping them in production adds unnecessary weight. Configurable via the `type-only-dependencies` rule.

### Progress spinners

The analysis pipeline now shows stage-by-stage progress (discovery → parsing → resolution → analysis) with indicatif spinners, giving better feedback on larger projects. Watch mode also shows which files changed between runs and clears the screen between analysis cycles.

## VS Code & Editor Support

- **Open VSX**: the VS Code extension is now published on [Open VSX](https://open-vsx.org/) for Cursor and VSCodium users
- **Rolldown bundler**: extension bundler migrated from esbuild to Rolldown

## Internal

- Large modules split into focused submodules for maintainability: `discover.rs`, `config.rs`, `resolve.rs`, `detect.rs`, `cache.rs`, `visitor.rs`, `check.rs`, and integration tests
- Historical performance metric tracking with GitHub Pages dashboard
- SARIF output now includes `tool.driver.version` and `$schema` fields

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v1.3.1...v1.4.0
