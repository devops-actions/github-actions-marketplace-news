---
title: Fallow - Codebase Health
date: 2026-04-08 06:23:04 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.19.2
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.19.2**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action is a Rust-based codebase analysis tool for TypeScript and JavaScript projects, designed to identify unused code, duplication, complexity issues, and architectural problems with minimal configuration and high performance. It automates tasks such as detecting dead code, circular dependencies, and duplicate code blocks, while providing actionable insights to optimize and maintain clean, efficient codebases. Key features include sub-second analysis, framework plugins, and the ability to group findings by ownership, directory, or package for streamlined team collaboration.

## What's Changed

## Bug Fixes

**Angular implicit member reference detection** ([#82](https://github.com/fallow-rs/fallow/issues/82))

Angular's `@Component` and `@Directive` decorators reference class members through several metadata properties that fallow previously didn't scan. This caused false `unused-class-members` reports for:

- **Inline templates** (`template: '<p>{{ title() }}</p>'`) -- now scanned for member references using the same Angular template parser as external `templateUrl` files
- **Host bindings** (`host: { '(click)': 'onClick()' }`) -- expression strings now extract referenced member identifiers
- **Metadata arrays** (`inputs: ['name']`, `outputs: ['clicked']`, `queries: { ref: ... }`) -- listed member names now marked as framework-managed
- **Angular 17+ signal APIs** (`input()`, `input.required()`, `output()`, `model()`, `viewChild()`, `viewChildren()`, `contentChild()`, `contentChildren()`) -- properties initialized with these calls on Angular-decorated classes are now treated as framework-managed

All 10 false positives from the issue reproduction are resolved.

## Internal

- Split `graph/build.rs` and `analyze/predicates.rs` into focused submodules for better cohesion
- Added 258 tests across 12 files (line coverage 90.2% -> 90.9%)

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.19.1...v2.19.2
