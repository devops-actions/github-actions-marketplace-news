---
title: Fallow - Codebase Health
date: 2026-03-31 06:14:08 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.7.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.7.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-based tool designed to analyze TypeScript and JavaScript codebases for dead code, code duplication, and complexity hotspots. It automates the detection of unused files, exports, dependencies, and circular references, identifies duplicate or copy-pasted code, and highlights overly complex functions that may require refactoring. With zero configuration, sub-second analysis, and support for 84 framework plugins, it helps developers optimize and maintain cleaner, more efficient codebases.

## What's Changed

## Bug Fixes

- **SvelteKit `$app` and `$env` no longer reported as unlisted dependencies** — virtual module prefix matching failed when the extracted package name (e.g., `$app`) was compared against a trailing-slash prefix (`$app/`). Also fixes the same latent bug for Docusaurus virtual prefixes (`@theme/`, `@docusaurus/`, etc.).

- **SvelteKit `./$types` imports no longer reported as unresolved** — added `generated_import_patterns()` to the Plugin trait so frameworks can declare build-time generated import suffixes. SvelteKit uses this to suppress `./$types`, `./$types.js`, and `./$types.ts` route type imports that don't exist on disk during static analysis.

Closes https://github.com/fallow-rs/fallow/issues/34

## Internal

- Code quality refactoring: explicit imports, `#[must_use]` annotations, `#[expect]` lint suppressions, helper extraction, const fn promotion

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.7.0...v2.7.1
